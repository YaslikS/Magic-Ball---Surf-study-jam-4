import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:magic_ball_surf_study_jam_4/bloc/reading_bloc.dart';
import 'package:magic_ball_surf_study_jam_4/theme/enums.dart';
import 'package:shake/shake.dart';

class ReadingInitialWidget extends StatefulWidget {
  const ReadingInitialWidget({
    super.key,
  });

  @override
  State<ReadingInitialWidget> createState() => _ReadingInitialWidgetState();
}

class _ReadingInitialWidgetState extends State<ReadingInitialWidget>
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

  late ShakeDetector _detector;

  @override
  initState() {
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
            child: Image.asset(
              "lib/assets/ball/initial_state/magic_ball_initial.png",
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
                "lib/assets/shadows/shadow_changing.png",
                width: AppSizes.size300,
              ),
            ),
            Image.asset(
              "lib/assets/shadows/shadow_colored.png",
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
    await _player.setAsset("lib/assets/sounds/initial_sound.mp3");
    _player.setLoopMode(LoopMode.all);
    _player.play();
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
    _animationController.reverse();
    _detector.stopListening();
    await Future.delayed(
      const Duration(milliseconds: AppDurations.duration1500),
    );
    context.read<ReadingBloc>().add(const ReadingEvent.load());
  }
}
