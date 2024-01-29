import 'package:flutter/material.dart';
import 'package:magic_ball_surf_study_jam_4/theme/enums.dart';

class ReadingLoadingWidget extends StatefulWidget {
  const ReadingLoadingWidget({
    super.key,
    required this.firstTime,
  });

  final bool firstTime;

  @override
  State<ReadingLoadingWidget> createState() => _ReadingLoadingWidgetState();
}

class _ReadingLoadingWidgetState extends State<ReadingLoadingWidget> {
  late final bool _visibleShadow = false;
  late final double _sizeShadow = AppSizes.size50;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              "lib/assets/ball/magic_ball.png",
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: AppDurations.duration1500),
              width: _sizeShadow,
              height: _sizeShadow,
              child: AnimatedOpacity(
                opacity: _visibleShadow ? 1.0 : 0.0,
                duration: const Duration(milliseconds: AppDurations.duration1500),
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
          ],
        ),
        const SizedBox(height: AppSpaces.space32),
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              "lib/assets/shadows/shadow_changing.png",
              width: AppSizes.size300,
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

}
