import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_management_app/app/application/auth/auth_bloc.dart';
import 'package:task_management_app/app/domain/utils/common_util.dart';
import 'package:task_management_app/app/presentation/constants/colors.dart';
import 'package:task_management_app/app/presentation/constants/dimens.dart';
import 'package:task_management_app/app/presentation/helpers/failure_helper.dart';
import 'package:task_management_app/app/presentation/helpers/ui_helper.dart';
import 'package:task_management_app/app/presentation/widgets/alert.dart';
import 'package:task_management_app/app/presentation/widgets/app_scaffold.dart';
import 'package:task_management_app/app/presentation/widgets/button/primary_button.dart';
import 'package:task_management_app/app/presentation/widgets/text_field.dart';
import 'package:task_management_app/generated/l10n.dart';
import 'package:go_router/go_router.dart';

part './widgets/edit_form.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    I10n i10n = I10n.of(context);
    ThemeData themeData = Theme.of(context);
    return BlocConsumer<AuthBloc, AuthState>(
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
                  takePhotoSuccess: () {
                    context.pop();
                  },
                  success: (user) {
                    context.read<AuthBloc>().add(
                          AuthEvent.patch(user: user),
                        );
                    Alert.notifyAction(
                      context,
                      i10n.alertSuccess,
                      i10n.alertSuccessUpdateProfile,
                      positiveAction: () {},
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
          backgroundColor: themeData.colorScheme.surface,
          isLoading: state.isLoading,
          appBar: AppBar(
            title: Text(
              i10n.updateProfile,
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
            padding: padding(vertical: Sizes.p16),
            shrinkWrap: true,
            children: [
              _EditForm(state),
            ],
          ),
        );
      },
    );
  }
}
