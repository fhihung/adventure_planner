import 'package:adventure_planner/app/app.dart';
import 'package:adventure_planner/home/bloc/home_bloc.dart';
import 'package:adventure_planner/login/bloc/login_bloc.dart';
import 'package:adventure_planner/plan_generation/bloc/plan_generation_bloc.dart';
import 'package:adventure_planner/setting/bloc/setting_bloc.dart';
import 'package:adventure_planner/sign_up/bloc/sign_up_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  bootstrap(() {
    return Future.value(const App());
  });
}

Future<void> bootstrap(Future<Widget> Function() builder) async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<LoginBloc>(
          create: (context) => LoginBloc(),
        ),
        BlocProvider<SignUpBloc>(
          create: (context) => SignUpBloc(),
        ),
        BlocProvider<HomeBloc>(
          create: (context) => HomeBloc(),
        ),
        BlocProvider<PlanGenerationBloc>(
          create: (context) => PlanGenerationBloc(),
        ),
        BlocProvider<SettingBloc>(
          create: (context) => SettingBloc(),
        ),
      ],
      child: await builder(),
    ),
  );
}
