import 'package:flutter/material.dart';
import 'package:task_management_app/app/domain/utils/common_util.dart';
import 'package:task_management_app/app/domain/utils/extensions.dart';
import 'package:task_management_app/app/presentation/constants/colors.dart';
import 'package:task_management_app/app/presentation/constants/dimens.dart';
import 'package:task_management_app/app/presentation/constants/enums.dart';
import 'package:task_management_app/app/presentation/constants/text_style.dart';
import 'package:task_management_app/app/presentation/helpers/ui_helper.dart';
import 'package:task_management_app/app/presentation/widgets/app_scaffold.dart';
import 'package:task_management_app/generated/l10n.dart';
import 'package:shimmer/shimmer.dart';
import 'package:task_management_app/app/domain/task/task.dart';
part './widgets/shimmer.dart';
part './widgets/task_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _HomeBodyPage();
  }
}

class _HomeBodyPage extends StatelessWidget {
  const _HomeBodyPage();

  @override
  Widget build(BuildContext context) {
    I10n i10n = I10n.of(context);

    var list = [
      Task(
        id: '1',
        title: 'Prepare Data',
        description: 'prepare data init',
        status: TaskStatus.pending,
        dueDate: DateTime.now(),
      ),
      Task(
        id: '2',
        title: 'Design Page',
        description: 'design page',
        status: TaskStatus.inProgress,
        dueDate: DateTime.now(),
      ),
      Task(
        id: '3',
        title: 'Implement coding',
        description: 'coding',
        status: TaskStatus.completed,
        dueDate: DateTime.now(),
      ),
    ];
    return AppScaffold(
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
                itemCount: 3,
                itemBuilder: (context, index) {
                  var item = list[index];
                  return _TaskCard(item: item);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
