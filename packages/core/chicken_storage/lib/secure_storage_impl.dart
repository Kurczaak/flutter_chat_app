import 'dart:async';

import 'package:chicken_storage/chicken_secure_storage.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/subjects.dart';

@Singleton(as: ChickenSecureStorage)
class SecureStorageImpl implements ChickenSecureStorage {
  /// Base Secure Storage Implementation with [FlutterSecureStorage]
  SecureStorageImpl(this._flutterSecureStorage);

  final FlutterSecureStorage _flutterSecureStorage;
  final Map<String, BehaviorSubject<String?>> _entriesStreams = {};

  @override
  Future<void> delete(String key) async {
    await _flutterSecureStorage.delete(key: key);
    final entryStream = _entriesStreams[key];
    if (entryStream == null) return;
    entryStream.add(null);
  }

  @override
  Future<void> dispose() async {
    for (final entry in _entriesStreams.values) {
      await entry.close();
    }
  }

  @override
  Future<BehaviorSubject<String?>> getEntryStream(String key) async {
    final stream = _entriesStreams[key];
    if (stream != null) return stream;

    final entry = await read(key);

    final newEntryStream = BehaviorSubject.seeded(entry);
    _entriesStreams[key] = newEntryStream;
    return newEntryStream;
  }

  @override
  Future<String?> read(String key) => _flutterSecureStorage.read(key: key);

  @override
  Future<BehaviorSubject<String?>> write(String key, String value) async {
    await _flutterSecureStorage.write(key: key, value: value);

    var streamEntry = _entriesStreams[key];
    if (streamEntry == null) {
      streamEntry = BehaviorSubject();

      _entriesStreams[key] = streamEntry;
    }

    streamEntry.add(value);

    return streamEntry;
  }
}
