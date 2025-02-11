part of '../home_page.dart';

class _TaskCard extends StatelessWidget {
  final TaskModel item;
  const _TaskCard({
    required this.item,
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
    return Container(
      padding: padding(all: 12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
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
                  style: cTextBold,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              gapW8,
              GestureDetector(
                child: const Icon(Icons.more_horiz),
              )
            ],
          ),
          gapH4,
          if (item.description != null && item.description != '')
            Container(
              margin: margin(right: 24),
              child: Text(
                item.description ?? '',
                style: cTextRegSM,
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
              style: cTextBoldXS,
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
                  style: cTextRegXS,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
