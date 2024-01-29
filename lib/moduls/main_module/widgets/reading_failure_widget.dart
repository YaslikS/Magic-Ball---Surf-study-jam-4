import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:magic_ball_surf_study_jam_4/bloc/reading_bloc.dart';
import 'package:magic_ball_surf_study_jam_4/theme/enums.dart';
import 'package:shake/shake.dart';

class ReadingFailureWidget extends StatefulWidget {
  const ReadingFailureWidget({
    super.key,
  });

  @override
  State<ReadingFailureWidget> createState() => _ReadingFailureWidgetState();
}

class _ReadingFailureWidgetState extends State<ReadingFailureWidget>
    with SingleTickerProviderStateMixin {
  late final _animationController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: AppDurations.duration1500),
  )..repeat(reverse: true);

  late final _animationBallVertical = Tween(
    begin: Offset.zero,
    end: const Offset(0.0, -0.03),
  ).animate(_animationController);
  late final _animationShadowSize = CurvedAnimation(
    parent: _animationController,
    curve: Curves.linear,
  );
  final Tween<double> _sizeShadowTween = Tween(begin: 0.7, end: 1);

  final _player = AudioPlayer();

  bool _visibleShadow = false;
  double _sizeShadow = AppSizes.size50;
  late ShakeDetector _detector;

  @override
  void initState() {
    _startAnimation();
    super.initState();
    _musicInit();
    _detectorInit();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            _startLoading();
          },
          child: SlideTransition(
            position: _animationBallVertical,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  "lib/assets/ball/initial_state/magic_ball_initial.png",
                ),
                AnimatedContainer(
                  duration:
                      const Duration(milliseconds: AppDurations.duration1000),
                  width: _sizeShadow,
                  height: _sizeShadow,
                  child: AnimatedOpacity(
                    duration:
                        const Duration(milliseconds: AppDurations.duration1000),
                    opacity: _visibleShadow ? 1.0 : 0.0,
                    child: Image.asset(
                      "lib/assets/ball/failure_state/red_shadow_ball.png",
                    ),
                  ),
                ),
                Image.asset(
                  "lib/assets/ball/failure_state/stars_for_failure.png",
                  width: AppSizes.size235,
                  height: AppSizes.size235,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: AppSpaces.space32),
        Stack(
          alignment: Alignment.center,
          children: [
            ScaleTransition(
              scale: _sizeShadowTween.animate(_animationShadowSize),
              child: Image.asset(
                "lib/assets/shadows/shadow_changing_failure.png",
                width: AppSizes.size300,
              ),
            ),
            Image.asset(
              "lib/assets/shadows/shadow_colored_failure.png",
              width: AppSizes.size150,
            ),
          ],
        ),
        const SizedBox(height: AppSpaces.space50),
        SizedBox(
          width: AppSizes.size300,
          child: Text(
            "Tap on the ball or shake the phone",
            textAlign: TextAlign.center,
            style: theme.textTheme.labelLarge,
          ),
        ),
      ],
    );
  }

  _musicInit() async {
    await _player.setAsset("lib/assets/sounds/failure_sound.mp3");
  }

  _detectorInit() {
    _detector = ShakeDetector.autoStart(
      onPhoneShake: () {
        _startLoading();
      },
      minimumShakeCount: 1,
      shakeSlopTimeMS: 500,
      shakeCountResetTime: 3000,
      shakeThresholdGravity: 2.7,
    );
  }

  _startLoading() async {
    _detector.stopListening();
    _animationController.reverse();
    setState(() {
      _visibleShadow = false;
      _sizeShadow = AppSizes.size50;
    });
    await Future.delayed(
      const Duration(milliseconds: AppDurations.duration1000),
    );
    context.read<ReadingBloc>().add(const ReadingEvent.load());
  }

  _startAnimation() async {
    await Future.delayed(
      const Duration(milliseconds: AppDurations.duration50),
    );
    setState(() {
      _visibleShadow = true;
      _sizeShadow = AppSizes.size350;
    });
    _player.play();
  }
}
