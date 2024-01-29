import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:magic_ball_surf_study_jam_4/magic_ball_app.dart';
import 'package:magic_ball_surf_study_jam_4/repo/export_repo.dart';

void main() {
  GetIt.I.registerLazySingleton<AbstractMagicBallRepo>(
      () => MagicBallRepo(dio: Dio()));

  runApp(const MagicBallApp());
}
