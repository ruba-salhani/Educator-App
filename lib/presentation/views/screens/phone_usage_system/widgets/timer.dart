import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:educator/presentation/theme/app_colors.dart';
import 'package:flutter/material.dart';

class Timer extends StatefulWidget {
  Timer({Key? key, required this.timer}) : super(key: key);
  int timer;
  @override
  State<Timer> createState() => _TimerState();
}

class _TimerState extends State<Timer> {
  final CountDownController _controller = CountDownController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircularCountDownTimer(
          duration: widget.timer,
          initialDuration: 0,
          controller: _controller,
          width: MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.height / 2,
          ringColor: Colors.grey[300]!,
          ringGradient: null,
          fillColor: Colors.purpleAccent[100]!,
          fillGradient: null,
          backgroundColor: AppColors.primary,
          backgroundGradient: null,
          strokeWidth: 25.0,
          strokeCap: StrokeCap.round,
          textStyle: const TextStyle(
            fontSize: 33.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          textFormat: CountdownTextFormat.S,
          isReverse: false,
          isReverseAnimation: false,
          isTimerTextShown: true,
          autoStart: false,
          onStart: () {
            debugPrint('Countdown Started');
          },
          onComplete: () {
            debugPrint('Countdown Ended');
          },
        ),
        Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _button(title: "Start", onPressed: () => _controller.start()),
            const SizedBox(
              width: 2,
            ),
            _button(title: "Pause", onPressed: () => _controller.pause()),
            const SizedBox(
              width: 2,
            ),
            _button(title: "Resume", onPressed: () => _controller.resume()),
            const SizedBox(
              width: 2,
            ),
            _button(
                title: "Restart",
                onPressed: () => _controller.restart(duration: widget.timer)),
          ],
        ),
      ],
    );
  }
}

Widget _button({required String title, VoidCallback? onPressed}) {
  return Expanded(
      child: ElevatedButton(
    child: Text(
      title,
    ),
    style: ElevatedButton.styleFrom(
      primary: AppColors.secondary,
    ),
    onPressed: onPressed,
  ));
}
