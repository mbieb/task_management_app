part of '../home_page.dart';

class _TaskFilter extends StatelessWidget {
  final TaskState state;

  const _TaskFilter({required this.state});

  @override
  Widget build(BuildContext context) {
    I10n i10n = I10n.of(context);
    final bloc = context.read<TaskBloc>();
    return Column(
      children: [
        PrimarySearchField(
          hintText: i10n.searchByTitle,
          onChanged: (value) => bloc.add(TaskEvent.searchTitleChanged(value)),
        ),
        gapW8,
        PrimaryDropdownField(
          hintText: i10n.status,
          value: state.statusFormValue,
          items: [
            DropdownText(id: '', text: i10n.allStatus),
            ...CommonUtils().getTaskStatusList()
          ],
          onChanged: (val) {
            bloc.add(TaskEvent.searchStatusChanged(val?.id ?? ''));
          },
          isWithSpaceBottom: false,
        ),
      ],
    );
  }
}
