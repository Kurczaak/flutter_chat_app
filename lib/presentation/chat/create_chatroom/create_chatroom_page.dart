import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/di/injection.dart';
import 'package:flutter_chat_app/domain/model/chat/chat_user.dart';
import 'package:flutter_chat_app/miscellaneous/context_extension.dart';
import 'package:flutter_chat_app/presentation/chat/create_chatroom/bloc/create_chatroom_bloc.dart';
import 'package:flutter_chat_app/presentation/chat/user_search/widget/user_search_bar.dart';
import 'package:flutter_chat_app/presentation/common/progress_indicator.dart';
import 'package:flutter_chat_app/style/app_colors.dart';
import 'package:flutter_chat_app/style/app_dimens.dart';
import 'package:flutter_chat_app/style/app_gap.dart';

class CreateChatroomPage extends StatelessWidget {
  const CreateChatroomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider<CreateChatroomBloc>(
        create: (_) {
          return getIt<CreateChatroomBloc>();
        },
        child: Scaffold(
          appBar: AppBar(
            leading: const BackButton(),
            title: const Text('Create Chatroom'), // TODO(Kura): Localize
          ),
          body: const _CreateChatroomView(),
          floatingActionButton: const _CreateRoomButton(),
        ),
      ),
    );
  }
}

class _CreateRoomButton extends StatelessWidget {
  const _CreateRoomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateChatroomBloc, CreateChatroomState>(
      builder: (context, state) {
        return FloatingActionButton.extended(
          backgroundColor: state.isFormValid
              ? AppColors.primaryColor
              : AppColors.secondaryColor,
          onPressed:
              state.isFormValid ? () => _onCreateChatroom(context) : null,
          label: Text(
            'Create Chatroom',
            style: TextStyle(
              color:
                  state.isFormValid ? AppColors.onPrimary : AppColors.textColor,
            ), // TODO(Kura): Localize
          ),
        );
      },
    );
  }

  void _onCreateChatroom(BuildContext context) {
    context
        .read<CreateChatroomBloc>()
        .add(const CreateChatroomEvent.createChatroom());
  }
}

class _CreateChatroomView extends StatelessWidget {
  const _CreateChatroomView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreateChatroomBloc, CreateChatroomState>(
      listener: (context, state) {
        state.maybeMap(
          success: (_) {
            context.navigator.pop(true);
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return state.map(
          initial: (initial) => _CreateChatroomBody(
            addedUsers: initial.addedUsers,
          ),
          loading: (_) => const ChickenProgressIndicator(),
          success: (_) => const _SuccessWidget(),
          error: (_) => const _ErrorWidget(),
        );
      },
    );
  }
}

class _ErrorWidget extends StatelessWidget {
  const _ErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Error'), // TODO: Localize
    );
  }
}

class _SuccessWidget extends StatelessWidget {
  const _SuccessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Success'), // TODO: Localize
    );
  }
}

class _CreateChatroomBody extends StatelessWidget {
  const _CreateChatroomBody({required this.addedUsers, super.key});

  final List<ChatUser> addedUsers;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppDimens.wrapPadding,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const _TitleAndDescriptionForm(),
            Gap.listMedium,
            const _UserSelector(),
            // TODO(Kura): Temp workaround
            Gap.listMedium,
            Gap.listMedium,

            // TODO(Kura): Temp workaround
            Gap.listMedium,
            Gap.listMedium,
          ],
        ),
      ),
    );
  }
}

class _TitleAndDescriptionForm extends StatelessWidget {
  const _TitleAndDescriptionForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CreateChatroomFormField(
          title: 'Chatroom Name', // TODO: Localize
          onChanged: (value) => _onTitleChanged(context: context, title: value),
        ),
        Gap.listMedium,
        _CreateChatroomFormField(
          title: 'Description', // TODO: Localize
          onChanged: (value) =>
              _onDescriptionChanged(context: context, description: value),
          minLines: 4,
        ),
      ],
    );
  }

  void _onTitleChanged({
    required BuildContext context,
    required String title,
  }) =>
      context
          .read<CreateChatroomBloc>()
          .add(CreateChatroomEvent.titleChanged(title));
}

void _onDescriptionChanged({
  required BuildContext context,
  required String description,
}) =>
    context
        .read<CreateChatroomBloc>()
        .add(CreateChatroomEvent.descriptionChanged(description));

class _UserSelector extends StatelessWidget {
  const _UserSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserSearchBar(
          onUserSelected: (user) {
            context
                .read<CreateChatroomBloc>()
                .add(CreateChatroomEvent.addUser(user));
          },
        ),
        Gap.listMedium,
        const _UserList(),
      ],
    );
  }
}

class _UserList extends StatelessWidget {
  const _UserList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateChatroomBloc, CreateChatroomState>(
      builder: (context, state) => state.maybeMap(
        orElse: SizedBox.new,
        initial: (state) => ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: state.addedUsers.length,
          separatorBuilder: (context, index) => Gap.listSmall,
          itemBuilder: (context, index) => _UserTile(
            user: state.addedUsers[index],
          ),
        ),
      ),
    );
  }
}

class _UserTile extends StatelessWidget {
  const _UserTile({required this.user, super.key});

  final ChatUser user;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        //mainAxisSize: MainAxisSize.min,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppDimens.borderRadius),
                color: AppColors.secondaryColor,
              ),
              // padding: const EdgeInsets.all(24),
              child: const Icon(Icons.person),
            ),
          ),
          Gap.g16,
          _UsernameAndEmailColumn(
            username: user.username,
            email: user.email,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              context
                  .read<CreateChatroomBloc>()
                  .add(CreateChatroomEvent.removeUser(user));
            },
            icon: const Icon(Icons.close),
          ),
        ],
      ),
    );
  }
}

class _UsernameAndEmailColumn extends StatelessWidget {
  const _UsernameAndEmailColumn({
    required this.username,
    required this.email,
    super.key,
  });
  final String username;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          username,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        Text(
          email,
          style: Theme.of(context).textTheme.labelSmall,
        ),
      ],
    );
  }
}

class _CreateChatroomFormField extends StatelessWidget {
  const _CreateChatroomFormField({
    required this.title,
    required this.onChanged,
    this.minLines = 1,
    super.key,
  });

  final String title;
  final void Function(String) onChanged;
  final int minLines;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        Gap.listSmall,
        TextField(
          minLines: minLines,
          maxLines: minLines,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
