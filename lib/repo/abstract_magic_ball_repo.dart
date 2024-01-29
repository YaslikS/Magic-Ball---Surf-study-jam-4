import 'model/reading.dart';

abstract class AbstractMagicBallRepo {
  Future<Reading> getReading();
}
