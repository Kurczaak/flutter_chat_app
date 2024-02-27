// TODO(Kura): Refactor this widget
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/di/injection.dart';
import 'package:flutter_chat_app/domain/model/chat/chat_user.dart';
import 'package:flutter_chat_app/presentation/chat/user_search/bloc/user_search_cubit.dart';

class UserSearchBar extends StatelessWidget {
  const UserSearchBar({required this.onUserSelected, super.key});

  final void Function(ChatUser user) onUserSelected;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<UserSearchCubit>(),
      child: _SearchBarWidget(
        onUserSelected: onUserSelected,
      ),
    );
  }
}

class _SearchBarWidget extends StatelessWidget {
  const _SearchBarWidget({
    required this.onUserSelected,
    super.key,
  });

  final void Function(ChatUser user) onUserSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ), // Adjust the padding as needed
      decoration: BoxDecoration(
        color: Colors.grey[200], // Background color of the container
        borderRadius:
            BorderRadius.circular(30), // Border radius of the container
      ),
      child: Autocomplete<ChatUser>(
        onSelected: onUserSelected,
        displayStringForOption: (option) => option.username,
        optionsBuilder: (TextEditingValue textEditingValue) => context
            .read<UserSearchCubit>()
            .searchUserByName(textEditingValue.text),
      ),
    );
  }
}
