import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kumparan_clone/src/common/routes.dart';
import 'package:kumparan_clone/src/presentation/bloc/auth/auth_watcher/auth_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/time_zone_watcher/time_zone_watcher_bloc.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final googleSignIn = GoogleSignIn();
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () {
        context
            .read<AuthWatcherBloc>()
            .add(const AuthWatcherEvent.authCheckRequested());
        context
            .read<TimeZoneWatcherBloc>()
            .add(const TimeZoneWatcherEvent.fetchTimeZone());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthWatcherBloc, AuthWatcherState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            authenticated: (_) {
              return goNextRoute(HOME);
            },
            authInFailure: (_) {
              return goNextRoute(ON_BOARDING);
            },
            notAuthenticated: (value) {
              return goNextRoute(ON_BOARDING);
            },
          );
        },
        child: const Center(
          child: Text('UNDER DEVELOPMENT'),
        ),
      ),
    );
  }

  Future<void> goNextRoute(String path) async {
    Future.delayed(
      const Duration(seconds: 1),
      () => Navigator.pushNamedAndRemoveUntil(
        context,
        path,
        (Route<dynamic> route) => false,
      ),
    );
  }
}
