part of '../home_page.dart';

class _TaskList extends StatelessWidget {
  final TaskState state;
  const _TaskList({required this.state});

  @override
  Widget build(BuildContext context) {
    I10n i10n = I10n.of(context);
    final bloc = context.read<TaskBloc>();
    return state.filteredTaskList.isEmpty
        ? Center(
            child: Text(
              i10n.noData,
              style: cTextAccentBold,
            ),
          )
        : ListView.separated(
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
                    body: i10n.alertDelete,
                  );
                },
                onTapEdit: (item) async {
                  var res = await context.push(AppRouter.taskForm, extra: item);
                  if (res != null) {
                    bloc.add(const TaskEvent.started());
                  }
                },
              );
            },
          );
  }
}
