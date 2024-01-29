import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:magic_ball_surf_study_jam_4/bloc/reading_bloc.dart';
import 'package:magic_ball_surf_study_jam_4/moduls/main_module/main_screen.dart';
import 'package:magic_ball_surf_study_jam_4/repo/abstract_magic_ball_repo.dart';
import 'package:magic_ball_surf_study_jam_4/theme/theme.dart';

class MagicBallApp extends StatelessWidget {
  const MagicBallApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReadingBloc(GetIt.I<AbstractMagicBallRepo>()),
      child: MaterialApp(
        title: 'Magic Ball',
        theme: darkTheme,
        debugShowCheckedModeBanner: false,
        home: const MainScreen(),
      ),
    );
  }
}
