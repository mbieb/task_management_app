import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:task_management_app/app/application/task/task_bloc.dart';
import 'package:task_management_app/app/domain/utils/common_util.dart';
import 'package:task_management_app/app/domain/utils/extensions.dart';
import 'package:task_management_app/app/presentation/constants/colors.dart';
import 'package:task_management_app/app/presentation/constants/dimens.dart';
import 'package:task_management_app/app/presentation/constants/enums.dart';
import 'package:task_management_app/app/presentation/constants/text_style.dart';
import 'package:task_management_app/app/presentation/helpers/ui_helper.dart';
import 'package:task_management_app/app/presentation/router.dart';
import 'package:task_management_app/app/presentation/widgets/app_scaffold.dart';
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
    return BlocBuilder<TaskBloc, TaskState>(
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
                  ListView.separated(
                    separatorBuilder: (context, index) => gapH8,
                    shrinkWrap: true,
                    primary: false,
                    itemCount: state.taskList.length,
                    itemBuilder: (context, index) {
                      var item = state.taskList[index];
                      return _TaskCard(item: item);
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
