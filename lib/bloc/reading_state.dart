part of 'reading_bloc.dart';

@freezed
class ReadingState with _$ReadingState {
  const factory ReadingState.initial() = _ReadingInitialState;

  const factory ReadingState.loading({required bool firstTime}) = _ReadingLoadingState;

  const factory ReadingState.loaded({required Reading reading}) =
      _ReadingLoadedState;

  const factory ReadingState.loadingFailure({required Object exception}) =
      _ReadingLoadingFailureState;
}
