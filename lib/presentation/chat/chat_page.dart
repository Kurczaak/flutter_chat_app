import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/di/injection.dart';
import 'package:flutter_chat_app/presentation/chat/bloc/chat_bloc.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChatBloc>(
      create: (_) => getIt<ChatBloc>()..add(const ChatEvent.initialize()),
      child: const _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Center(
            child: ElevatedButton(
              onPressed: () {
                context.read<ChatBloc>().add(const ChatEvent.initialize());
              },
              child: const Text('initial'),
            ),
          ),
          loading: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (loaded) => _ChatBody(messages: loaded.messages),
        );
      },
    );
  }
}

class _ChatBody extends StatelessWidget {
  const _ChatBody({required this.messages, super.key});
  final List<String> messages;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            context.read<ChatBloc>().add(const ChatEvent.sendMessage('Hello'));
          },
          child: const Text('Send hello message'),
        ),
        Expanded(child: _MessagesBuilder(messages: messages)),
      ],
    );
  }
}

class _MessagesBuilder extends StatelessWidget {
  const _MessagesBuilder({required this.messages, super.key});

  final List<String> messages;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(messages[index]),
      ),
    );
  }
}
