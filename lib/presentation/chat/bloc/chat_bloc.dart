import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'chat_bloc.freezed.dart';
part 'chat_event.dart';
part 'chat_state.dart';

@Singleton()
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc() : super(const ChatState.initial()) {
    on<ChatEvent>((event, emit) async {
      await event.map(
        initialize: (initialize) async => _onInitialize(emit),
        sendMessage: (sendMessage) async =>
            _onSendMessage(emit, sendMessage.message),
      );
    });
  }

  Stream<String>? messagesStream;
  Stream<Map<String, dynamic>>? myRoomsStream;

  Future<void> _onInitialize(Emitter<ChatState> emit) async {
    // emit(const ChatState.loading());
    // await chatRepository.connect();
    // messagesStream = chatRepository.messages
    //   ..listen((event) {
    //     print('event: $event');
    //     // TODO: fix
    //     // state.whenOrNull(
    //     //   loaded: (messages) => emit(ChatState.loaded([...messages, event])),
    //     // );
    //   });
    // myRoomsStream = chatRepository.myRooms
    //   ..listen((event) {
    //     print('myRooms: $event');
    //   });

    // emit(
    //   const ChatState.loaded(
    //     [],
    //   ),
    // );
  }

  void _onSendMessage(Emitter<ChatState> emit, String message) {
    // chatRepository.sendMessage(message);
  }
}
