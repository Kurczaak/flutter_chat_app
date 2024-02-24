import 'package:rxdart/rxdart.dart';

/// An abstract interface in order to securely store data.
abstract class ChickenSecureStorage {
  /// Write a value to the storage given [key] and [value]
  Future<BehaviorSubject<String?>> write(String key, String value);

  /// Read a value from the storage given [key]
  Future<String?> read(String key);

  /// Delete a value from the storage given [key]
  Future<void> delete(String key);

  /// Get a stream of values from the storage given [key]
  Future<BehaviorSubject<String?>> getEntryStream(String key);

  /// Dispose the storage
  Future<void> dispose();
}
