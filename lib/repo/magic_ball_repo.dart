import 'package:dio/dio.dart';
import 'package:magic_ball_surf_study_jam_4/repo/export_repo.dart';

class MagicBallRepo implements AbstractMagicBallRepo {
  final Dio dio;

  MagicBallRepo({required this.dio});

  @override
  Future<Reading> getReading() async {
    final response = await dio.get("https://eightballapi.com/api");

    Map<String, dynamic> modelMap = response.data;
    Reading reading = Reading.fromJson(modelMap);

    return reading;
  }
}
