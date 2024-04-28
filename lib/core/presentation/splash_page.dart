import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lawapp/utils/routes/route_name.dart';
import 'package:lawapp/auth/application/cubit/auth_cubit.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<AuthCubit>().getUserState();
    return Scaffold(
      body: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          state.map(
              initial: (v) => const CircularProgressIndicator.adaptive(),
              authenticated: (value) =>
                  context.pushReplacement(AppRoutes.HOME_PAGE),
              unathenticated: (v) =>
                  context.pushReplacement(AppRoutes.AUTH_PAGE));
        },
        child: const CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
