import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_management_app/app/application/settings/settings_bloc.dart';
import 'package:task_management_app/app/presentation/helpers/ui_helper.dart';
import 'package:task_management_app/generated/l10n.dart';

class SelectThemeDialog extends StatelessWidget {
  const SelectThemeDialog({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    I10n i10n = I10n.of(context);
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return Dialog(
          child: Container(
            padding: const EdgeInsets.only(top: 16, bottom: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Choose Theme',
                    style: themeData.textTheme.titleMedium,
                  ),
                ),
                Container(
                  padding: padding(horizontal: 16),
                  child: Row(
                    children: <Widget>[
                      Radio(
                        onChanged: (dynamic value) {
                          context
                              .read<SettingsBloc>()
                              .add(SettingsEvent.changeTheme(value));
                        },
                        groupValue: state.theme,
                        value: 1,
                        activeColor: themeData.colorScheme.primary,
                      ),
                      Text(
                        'Light Theme',
                        style: themeData.textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    children: <Widget>[
                      Radio(
                        onChanged: (dynamic value) {
                          context
                              .read<SettingsBloc>()
                              .add(SettingsEvent.changeTheme(value));
                        },
                        groupValue: state.theme,
                        value: 2,
                        activeColor: themeData.colorScheme.secondary,
                      ),
                      Text(
                        'Dark Theme',
                        style: themeData.textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
