import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_ball_surf_study_jam_4/repo/abstract_magic_ball_repo.dart';
import 'package:magic_ball_surf_study_jam_4/repo/model/reading.dart';

part 'reading_bloc.freezed.dart';

part 'reading_event.dart';

part 'reading_state.dart';

class ReadingBloc extends Bloc<ReadingEvent, ReadingState> {
  ReadingBloc(this.magicBallRepo) : super(const ReadingState.initial()) {
    on<LoadReadingEvent>((event, emit) async {
      try {
        if (state is _ReadingLoadedState) {
          emit(const ReadingState.loading(firstTime: false));
        } else {
          emit(const ReadingState.loading(firstTime: true));
        }
        final reading = await magicBallRepo.getReading();
        emit(ReadingState.loaded(reading: reading));
      } catch (e, st) {
        emit(ReadingState.loadingFailure(exception: e));
      }
    });
  }

  final AbstractMagicBallRepo magicBallRepo;
}
