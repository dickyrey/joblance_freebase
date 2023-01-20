import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:joblance_firebase/src/common/routes.dart';
import 'package:joblance_firebase/src/presentation/bloc/auth/auth_watcher/auth_watcher_bloc.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => context
          .read<AuthWatcherBloc>()
          .add(const AuthWatcherEvent.authCheckRequested()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthWatcherBloc, AuthWatcherState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () => Navigator.pushNamedAndRemoveUntil(
            context,
            SIGN_IN,
            (Route<dynamic> route) => false,
          ),
          authenticated: (_) => Navigator.pushNamedAndRemoveUntil(
            context,
            HOME,
            (Route<dynamic> route) => false,
          ),
          unauthenticated: (_) => Navigator.pushNamedAndRemoveUntil(
            context,
            ON_BOARDING,
            (Route<dynamic> route) => false,
          ),
        );
      },
      child: const Scaffold(
        body: Center(child: Text('SPLASH')),
      ),
    );
  }
}
