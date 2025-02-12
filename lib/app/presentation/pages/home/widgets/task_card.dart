part of '../home_page.dart';

class _TaskCard extends StatelessWidget {
  final TaskModel item;
  final Function(TaskModel item) onTapDelete;
  final Function(TaskModel item) onTapEdit;
  const _TaskCard({
    required this.item,
    required this.onTapDelete,
    required this.onTapEdit,
  });

  Color _getColorStatusCard(TaskStatus status) {
    var color = cColorYellow;

    switch (status) {
      case TaskStatus.pending:
        color = cColorYellow;
        break;
      case TaskStatus.inProgress:
        color = cColorPurple;
        break;
      case TaskStatus.completed:
        color = cColorGreen2;
        break;
      default:
    }

    return color;
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TaskBloc>();
    ThemeData themeData = Theme.of(context);
    return GestureDetector(
      onTap: () async {
        var res = await context.push(AppRouter.taskForm, extra: item);
        if (res != null) {
          bloc.add(const TaskEvent.started());
        }
      },
      child: Container(
        padding: padding(all: 12),
        decoration: BoxDecoration(
          border: Border.all(color: themeData.colorScheme.primary),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    item.title ?? '',
                    style: themeData.textTheme.titleMedium,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                gapW8,
                PopupMenuButton<String>(
                  padding: padding(all: 0),
                  child: const Icon(Icons.more_horiz),
                  onSelected: (value) {
                    if (value == 'edit') {
                      onTapEdit(item);
                    } else if (value == 'delete') {
                      onTapDelete(item);
                    }
                  },
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 'edit',
                      child: Text(
                        "Edit",
                        style: themeData.textTheme.titleMedium,
                      ),
                    ),
                    PopupMenuItem(
                      value: 'delete',
                      child: Text(
                        "Delete",
                        style: themeData.textTheme.titleMedium,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            gapH4,
            if (item.description != null && item.description != '')
              Container(
                margin: margin(right: 24),
                child: Text(
                  item.description ?? '',
                  style: themeData.textTheme.labelSmall,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            gapH8,
            Chip(
              backgroundColor:
                  _getColorStatusCard(item.status ?? TaskStatus.pending),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: const BorderSide(color: Colors.transparent),
              ),
              padding: padding(all: 8),
              labelPadding: padding(all: 0),
              label: Text(
                item.status?.label ?? '',
                style: themeData.textTheme.titleSmall,
              ),
            ),
            gapH8,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.calendar_month_outlined,
                  size: 16,
                ),
                gapW4,
                Expanded(
                  child: Text(
                    CommonUtils.dateFormat(
                            'dd MMM yyyy', item.dueDate ?? DateTime.now()) ??
                        '',
                    style: themeData.textTheme.labelSmall,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
