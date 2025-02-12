import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:task_management_app/app/application/task/task_bloc.dart';
import 'package:task_management_app/app/domain/task/task.dart';
import 'package:task_management_app/app/domain/utils/common_util.dart';
import 'package:task_management_app/app/presentation/constants/dimens.dart';
import 'package:task_management_app/app/presentation/helpers/failure_helper.dart';
import 'package:task_management_app/app/presentation/helpers/ui_helper.dart';
import 'package:task_management_app/app/presentation/widgets/alert.dart';
import 'package:task_management_app/app/presentation/widgets/app_scaffold.dart';
import 'package:task_management_app/app/presentation/widgets/button/primary_button.dart';
import 'package:task_management_app/app/presentation/widgets/text_field.dart';
import 'package:task_management_app/config/injection.dart';
import 'package:task_management_app/generated/l10n.dart';

class TaskFormPage extends StatelessWidget {
  final TaskModel? item;
  const TaskFormPage({
    this.item,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<TaskBloc>()..add(TaskEvent.getData(item: item)),
      child: const TaskFormBodyPage(),
    );
  }
}

class TaskFormBodyPage extends StatelessWidget {
  const TaskFormBodyPage({super.key});

  @override
  Widget build(BuildContext context) {
    var i10n = I10n.of(context);
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
                  successAdd: () {
                    Alert.notifyAction(
                      context,
                      i10n.alertSuccess,
                      'Success Add Task',
                      positiveAction: () {
                        context.pop(true);
                      },
                    );
                  },
                  successEdit: () {
                    Alert.notifyAction(
                      context,
                      i10n.alertSuccess,
                      'Success Edit Task',
                      positiveAction: () {
                        context.pop(true);
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
          isLoading: state.isLoading,
          backgroundColor: themeData.colorScheme.surface,
          appBar: AppBar(
            title: Text(
              '${state.isEdit ? 'Edit' : 'Add New'} Task',
              style: themeData.textTheme.headlineSmall,
            ),
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: themeData.colorScheme.primary,
              ),
              onPressed: () {
                context.pop();
              },
            ),
          ),
          body: ListView(
            padding: padding(vertical: 16, horizontal: 12),
            children: [
              PrimaryTextField(
                onChanged: (val) => bloc.add(TaskEvent.titleChanged(val)),
                controller: bloc.titleController,
                keyboardType: TextInputType.text,
                hintText: 'Title',
                inputFormatters: [
                  FilteringTextInputFormatter.singleLineFormatter,
                ],
              ),
              PrimaryTextField(
                onChanged: (val) => bloc.add(TaskEvent.descChanged(val)),
                controller: bloc.descController,
                keyboardType: TextInputType.text,
                maxLines: 3,
                hintText: 'Description',
                inputFormatters: [
                  FilteringTextInputFormatter.singleLineFormatter,
                ],
              ),
              PrimaryCustomizedOnTapField(
                onPressed: () async {
                  DateTime? date = await showDatePicker(
                    builder: (context, child) {
                      return child!;
                    },
                    context: context,
                    initialDate: state.dueDateFieldValue ?? DateTime.now(),
                    firstDate: DateTime(1900, 1),
                    lastDate: DateTime.now().add(
                      const Duration(days: 90),
                    ),
                  );
                  if (date is DateTime) {
                    bloc.add(TaskEvent.dueDateChanged(date));
                  }
                },
                hintText: 'Due Date',
                prefixIcon: Icon(
                  Icons.calendar_month,
                  size: 22,
                  color: themeData.colorScheme.primary.withOpacity(0.7),
                ),
                value: state.dueDateFieldValueToString,
              ),
              PrimaryDropdownField(
                hintText: 'Status',
                value: state.statusFormValue,
                items: CommonUtils().getTaskStatusList(),
                onChanged: (val) => bloc.add(TaskEvent.statusChanged(val!)),
              ),
              gapH16,
              PrimaryButton(
                onPressed: state.enableButton
                    ? () {
                        bloc.add(state.isEdit
                            ? const TaskEvent.update()
                            : const TaskEvent.submit());
                      }
                    : null,
                text: i10n.submit,
              ),
              gapH32,
            ],
          ),
        );
      },
    );
  }
}
