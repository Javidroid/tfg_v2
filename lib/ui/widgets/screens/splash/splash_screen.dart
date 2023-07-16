import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tfg_v2/di/dependency_injection.dart';
import 'package:tfg_v2/ui/viewmodel/splash/splash_viewmodel.dart';
import 'package:tfg_v2/ui/widgets/screens/root_screen.dart';

class SplashScreen extends RootScreen<SplashViewState> {
  const SplashScreen({super.key});

  @override
  SplashViewModel get viewModel => getIt<SplashViewModel>();

  @override
  Widget buildView(BuildContext context, SplashViewState state) {
    return Scaffold(
      body: switch (state) {
        Loading _ => const Center(
            child: CircularProgressIndicator(),
          ),
        Success _ => Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Success: ${state.env.environment}\n${tr("app_title")}'),
              ],
            ),
          ),
        Error _ => Text(state.error.toString()), // todo handle errors
      },
    );
  }
}
