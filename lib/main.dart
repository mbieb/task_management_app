import 'package:task_management_app/app/application/auth/auth_bloc.dart';
import 'package:task_management_app/app/application/settings/settings_bloc.dart';
import 'package:task_management_app/app/presentation/constants/theme.dart';
import 'package:task_management_app/app/presentation/router.dart';
import 'package:task_management_app/config/injection.dart';
import 'package:task_management_app/config/main/configure.dart';
import 'package:task_management_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await configure();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => getIt<AuthBloc>(),
        ),
        BlocProvider<SettingsBloc>(
          create: (context) => getIt<SettingsBloc>()
            ..add(
              const SettingsEvent.started(),
            ),
        ),
      ],
      child: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: AppRouter.router,
            title: 'Task Management App',
            theme: state.theme == 1 ? cThemeLight : cThemeDark,
            localizationsDelegates: const [
              I10n.delegate,
            ],
          );
        },
      ),
    );
  }
}
