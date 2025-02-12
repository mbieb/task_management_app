import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
                    Alert.notifyAction(
                      context,
                      i10n.alertSuccess,
                      'Success Delete Task',
                      positiveAction: () {
                        bloc.add(const TaskEvent.started());
                      },
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
          // isLoading: state.isLoading,
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
              'Task List',
              style: cTextBold2XL,
            ),
          ),
          backgroundColor: cColorWhite,
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
                  PrimarySearchField(
                    hintText: 'Search by title',
                    onChanged: (value) =>
                        bloc.add(TaskEvent.searchTitleChanged(value)),
                  ),
                  gapW8,
                  PrimaryDropdownField(
                    hintText: 'Status',
                    value: state.statusFormValue,
                    items: [
                      const DropdownText(id: '', text: 'All Status'),
                      ...CommonUtils().getTaskStatusList()
                    ],
                    onChanged: (val) {
                      bloc.add(TaskEvent.searchStatusChanged(val?.id ?? ''));
                    },
                    isWithSpaceBottom: false,
                  ),
                  gapH16,
                  ListView.separated(
                    separatorBuilder: (context, index) => gapH8,
                    shrinkWrap: true,
                    primary: false,
                    itemCount: state.filteredTaskList.length,
                    itemBuilder: (context, index) {
                      var item = state.filteredTaskList[index];
                      return _TaskCard(
                        item: item,
                        onTapDelete: (item) {
                          Alert.option(
                            context: context,
                            positiveAction: () {
                              bloc.add(TaskEvent.delete(item.id ?? ''));
                            },
                            title: i10n.alertConfirm,
                            body: 'Are you sure you want to delete this data?',
                          );
                        },
                        onTapEdit: (item) async {
                          var res = await context.push(AppRouter.taskForm,
                              extra: item);
                          if (res != null) {
                            bloc.add(const TaskEvent.started());
                          }
                        },
                      );
                    },
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
