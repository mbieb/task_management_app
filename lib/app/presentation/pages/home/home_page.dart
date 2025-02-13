import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:task_management_app/app/application/task/task_bloc.dart';
import 'package:task_management_app/app/domain/dropdown_text/dropdown_text.dart';
import 'package:task_management_app/app/domain/utils/common_util.dart';
import 'package:task_management_app/app/domain/utils/extensions.dart';
import 'package:task_management_app/app/presentation/constants/colors.dart';
import 'package:task_management_app/app/presentation/constants/dimens.dart';
import 'package:task_management_app/app/presentation/constants/enums.dart';
import 'package:task_management_app/app/presentation/constants/text_style.dart';
import 'package:task_management_app/app/presentation/helpers/failure_helper.dart';
import 'package:task_management_app/app/presentation/helpers/ui_helper.dart';
import 'package:task_management_app/app/presentation/router.dart';
import 'package:task_management_app/app/presentation/widgets/alert.dart';
import 'package:task_management_app/app/presentation/widgets/app_scaffold.dart';
import 'package:task_management_app/app/presentation/widgets/text_field.dart';
import 'package:task_management_app/config/injection.dart';
import 'package:task_management_app/generated/l10n.dart';
import 'package:shimmer/shimmer.dart';
import 'package:task_management_app/app/domain/task/task.dart';
part './widgets/shimmer.dart';
part './widgets/task_card.dart';
part './widgets/task_filter.dart';
part './widgets/task_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TaskBloc>()..add(const TaskEvent.started()),
      child: const _HomeBodyPage(),
    );
  }
}

class _HomeBodyPage extends StatelessWidget {
  const _HomeBodyPage();

  @override
  Widget build(BuildContext context) {
    I10n i10n = I10n.of(context);
    ThemeData themeData = Theme.of(context);
    final bloc = context.read<TaskBloc>();
    return BlocConsumer<TaskBloc, TaskState>(
      listener: (context, state) {
        state.failureOrSuccessOption.fold(
          () {},
          (either) {
            either.fold(
              (failure) => failure.maybeWhen(
                orElse: () => appFailureHandler(failure, context),
                handled: (handled) => handled.maybeWhen(
                  orElse: () {},
                  cancelled: () {
                    context.pop();
                  },
                  error: (message) {
                    Alert.notify(context, i10n.alertWarning, message);
                  },
                ),
              ),
              (success) {
                success.maybeWhen(
                  orElse: () {},
                  successDelete: () {
                    bloc.add(const TaskEvent.started());
                    Alert.notifyAction(
                      context,
                      i10n.alertSuccess,
                      i10n.alertSuccessDeleteTask,
                      positiveAction: () {},
                    );
                  },
                );
              },
            );
          },
        );
      },
      builder: (context, state) {
        return AppScaffold(
          floatingActionButton: FloatingActionButton(
            backgroundColor: cColorPink,
            child: const Icon(Icons.add),
            onPressed: () async {
              var res = await context.push(AppRouter.taskForm);
              if (res != null) {
                bloc.add(const TaskEvent.started());
              }
            },
          ),
          appBar: AppBar(
            title: Text(
              i10n.taskList,
              style: themeData.textTheme.headlineMedium,
            ),
          ),
          backgroundColor: themeData.colorScheme.surface,
          body: ListView(
            padding: padding(
              vertical: 12,
              horizontal: 16,
            ),
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _TaskFilter(
                    state: state,
                  ),
                  gapH16,
                  state.isLoading
                      ? const _Shimmer()
                      : _TaskList(
                          state: state,
                        ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
