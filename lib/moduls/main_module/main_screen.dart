import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_ball_surf_study_jam_4/bloc/reading_bloc.dart';
import 'package:magic_ball_surf_study_jam_4/moduls/main_module/export_main_module.dart';
import 'package:magic_ball_surf_study_jam_4/theme/enums.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    super.key,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final state = context.watch<ReadingBloc>().state;

    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          AppColors.background,
          AppColors.backgroundSecondary,
        ],
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: state.when(
            initial: () => const ReadingInitialWidget(),
            loading: (firstTime) => ReadingLoadingWidget(firstTime: firstTime),
            loaded: (reading) => ReadingLoadedWidget(reading: reading),
            loadingFailure: (exception) => const ReadingFailureWidget(),
          ),
        ),
      ),
    );
  }
}
