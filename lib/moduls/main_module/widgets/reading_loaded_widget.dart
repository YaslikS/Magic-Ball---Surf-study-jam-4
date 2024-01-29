import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:magic_ball_surf_study_jam_4/bloc/reading_bloc.dart';
import 'package:magic_ball_surf_study_jam_4/repo/export_repo.dart';
import 'package:magic_ball_surf_study_jam_4/theme/enums.dart';
import 'package:shake/shake.dart';

class ReadingLoadedWidget extends StatefulWidget {
  const ReadingLoadedWidget({
    super.key,
    required this.reading,
  });

  final Reading reading;

  @override
  State<ReadingLoadedWidget> createState() => _ReadingLoadedWidgetState();
}

class _ReadingLoadedWidgetState extends State<ReadingLoadedWidget>
    with SingleTickerProviderStateMixin {
  late final _animationController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: AppDurations.duration1500),
  );

  late final _animationBallVertical = Tween(
    begin: Offset.zero,
    end: const Offset(0.0, -0.03),
  ).animate(_animationController);
  late final _animationShadowSize = CurvedAnimation(
    parent: _animationController,
    curve: Curves.linear,
  );
  final Tween<double> _sizeShadowTween = Tween(begin: 0.7, end: 1);

  FlutterTts flutterTts = FlutterTts();

  final _audioPlayer = AudioPlayer();

  bool _visibleShadow = false;
  bool _visibleText = false;
  double _sizeShadow = AppSizes.size50;
  late ShakeDetector _detector;

  @override
  void initState() {
    _startReaction();
    super.initState();
    _musicInit();
    _detectorInit();
    _ttsInit();
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
                  "lib/assets/ball/magic_ball.png",
                ),
                AnimatedContainer(
                  duration:
                      const Duration(milliseconds: AppDurations.duration1500),
                  width: _sizeShadow,
                  height: _sizeShadow,
                  child: AnimatedOpacity(
                    opacity: _visibleShadow ? 1.0 : 0.0,
                    duration:
                        const Duration(milliseconds: AppDurations.duration1500),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          "lib/assets/ball/loaded_state/black_shadow_4.png",
                          width: AppSizes.size300,
                          height: AppSizes.size300,
                        ),
                        Image.asset(
                          "lib/assets/ball/loaded_state/black_shadow_3.png",
                          width: AppSizes.size225,
                          height: AppSizes.size225,
                        ),
                        Image.asset(
                          "lib/assets/ball/loaded_state/black_shadow_2.png",
                          width: AppSizes.size175,
                          height: AppSizes.size175,
                        ),
                        Image.asset(
                          "lib/assets/ball/loaded_state/black_shadow_1.png",
                          width: AppSizes.size125,
                          height: AppSizes.size125,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: AppSizes.size200,
                  child: Visibility(
                    visible: _visibleText,
                    child: DefaultTextStyle(
                      style: theme.textTheme.displaySmall!,
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                            widget.reading.reading,
                            textAlign: TextAlign.center,
                          ),
                        ],
                        totalRepeatCount: 1,
                        onTap: () {
                          _startLoading();
                        },
                      ),
                    ),
                  ),
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

  _ttsInit() async {
    await flutterTts.setSharedInstance(true);
    await flutterTts.setIosAudioCategory(
      IosTextToSpeechAudioCategory.ambient,
      [
        IosTextToSpeechAudioCategoryOptions.allowBluetooth,
        IosTextToSpeechAudioCategoryOptions.allowBluetoothA2DP,
        IosTextToSpeechAudioCategoryOptions.mixWithOthers
      ],
      IosTextToSpeechAudioMode.voicePrompt,
    );
    await flutterTts.awaitSpeakCompletion(true);
    await flutterTts.setLanguage("en-US");
    await flutterTts.setSpeechRate(0.4);
    await flutterTts.setVolume(1.0);
    await flutterTts.setPitch(1.0);
    await flutterTts.isLanguageAvailable("en-US");
  }

  _musicInit() async {
    await _audioPlayer.setAsset("lib/assets/sounds/loaded_sound.mp3");
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

  _speak({required String text}) async {
    await flutterTts.speak(text);
  }

  _startLoading() async {
    _detector.stopListening();
    _animationController.reverse();
    setState(() {
      _visibleText = false;
      _visibleShadow = false;
      _sizeShadow = AppSizes.size50;
    });
    await Future.delayed(
      const Duration(milliseconds: AppDurations.duration1500),
    );
    context.read<ReadingBloc>().add(const ReadingEvent.load());
  }

  _startReaction() async {
    await Future.delayed(
      const Duration(milliseconds: AppDurations.duration1500),
    );
    setState(() {
      _visibleShadow = true;
      _sizeShadow = AppSizes.size350;
    });
    _audioPlayer.play();
    await Future.delayed(
      const Duration(milliseconds: AppDurations.duration1500),
    );
    setState(() {
      _visibleText = true;
    });
    _speak(text: widget.reading.reading);
    _animationController.repeat(reverse: true);
  }
}
