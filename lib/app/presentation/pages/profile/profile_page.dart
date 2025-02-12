import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_management_app/app/application/auth/auth_bloc.dart';
import 'package:task_management_app/app/presentation/constants/colors.dart';
import 'package:task_management_app/app/presentation/constants/dimens.dart';
import 'package:task_management_app/app/presentation/helpers/ui_helper.dart';
import 'package:task_management_app/app/presentation/router.dart';
import 'package:task_management_app/app/presentation/widgets/alert.dart';
import 'package:task_management_app/app/presentation/widgets/app_scaffold.dart';
import 'package:task_management_app/app/presentation/widgets/button/primary_button.dart';
import 'package:task_management_app/app/presentation/widgets/select_theme_dialog.dart';
import 'package:task_management_app/generated/l10n.dart';
import 'package:go_router/go_router.dart';

part './widgets/user_info_list.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    I10n i10n = I10n.of(context);
    ThemeData themeData = Theme.of(context);
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return AppScaffold(
          backgroundColor: themeData.colorScheme.surface,
          body: Padding(
            padding: padding(all: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      Text(
                        state.user?.name ?? '',
                        style: themeData.textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),
                gapH16,
                Container(
                  padding: padding(all: Sizes.p8),
                  decoration: BoxDecoration(
                      border: Border.all(color: cColorGrey3),
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _UserInfoList(
                        icon: const Icon(Icons.email),
                        text: state.user?.email ?? '',
                      ),
                      gapH12,
                      _UserInfoList(
                        icon: const Icon(Icons.male),
                        text: state.user?.gender ?? '',
                      ),
                      gapH12,
                      _UserInfoList(
                        icon: const Icon(Icons.calendar_month),
                        text: state.user?.birthDate ?? '',
                      ),
                      gapH12,
                      _UserInfoList(
                        icon: const Icon(Icons.account_balance_outlined),
                        text: state.user?.province ?? '',
                      ),
                      gapH24,
                      GestureDetector(
                        onTap: () {
                          context.push(AppRouter.editProfile);
                          context
                              .read<AuthBloc>()
                              .add(const AuthEvent.started());
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(),
                            ),
                            const Icon(
                              Icons.edit,
                              size: 16,
                              color: Colors.blue,
                            ),
                            gapW12,
                            Text(
                              'Edit Profile',
                              style: themeData.textTheme.labelSmall?.copyWith(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ),
                      gapH8,
                      Container(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) =>
                                  const SelectThemeDialog(),
                            );
                          },
                          child: Text(
                            'Change Theme',
                            style: themeData.textTheme.labelSmall?.copyWith(
                                decoration: TextDecoration.underline,
                                color: Colors.blue),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                gapH64,
                PrimaryButton(
                  text: i10n.signOut.toUpperCase(),
                  onPressed: () {
                    Alert.option(
                      context: context,
                      title: i10n.alertConfirm,
                      body: i10n.alertLogout,
                      positiveText: i10n.yes,
                      positiveAction: () {
                        context.read<AuthBloc>().add(const AuthEvent.signOut());
                        context.go(AppRouter.signIn);
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
