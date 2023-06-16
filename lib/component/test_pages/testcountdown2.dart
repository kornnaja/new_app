import 'package:flutter/material.dart';
import 'package:custom_timer/custom_timer.dart';


class MyApp2 extends StatefulWidget {
  @override
  _MyApp2State createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> with SingleTickerProviderStateMixin {
  late final CustomTimerController _controller = CustomTimerController(
    vsync: this,
    begin: const Duration(seconds: 1),
    end: const Duration(seconds: 12),
    initialState: CustomTimerState.reset,
    interval: CustomTimerInterval.milliseconds
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("CustomTimer example"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomTimer(
                controller: _controller,
                builder: (state, remaining) {
                  return Column(
                    children: [
                      Text("${state.name}", style: const TextStyle(fontSize: 24.0)),
                      Text(
                          "${remaining.hours}:${remaining.minutes}:${remaining.seconds}.${remaining.milliseconds}",
                          style: const TextStyle(fontSize: 24.0))
                    ],
                  );
                }),
            const SizedBox(height: 24.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RoundedButton(
                  text: "Start",
                  color: Colors.green,
                  onPressed: () => _controller.start(),
                ),
                RoundedButton(
                  text: "Pause",
                  color: Colors.blue,
                  onPressed: () => _controller.pause(),
                ),
                RoundedButton(
                  text: "Reset",
                  color: Colors.red,
                  onPressed: () => _controller.reset(),
                )
              ],
            ),
            const SizedBox(height: 12.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RoundedButton(
                  text: "Set Begin to 5s",
                  color: Colors.purple,
                  onPressed: () => _controller.begin = const Duration(seconds: 5),
                ),
                RoundedButton(
                  text: "Set End to 5s",
                  color: Colors.purple,
                  onPressed: () => _controller.end = const Duration(seconds: 5),
                ),
              ],
            ),
            const SizedBox(height: 12.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RoundedButton(
                  text: "Jump to 5s",
                  color: Colors.indigo,
                  onPressed: () => _controller.jumpTo(const Duration(seconds: 5)),
                ),
                RoundedButton(
                  text: "Finish",
                  color: Colors.orange,
                  onPressed: () => _controller.finish(),
                )
              ],
            ),
            const SizedBox(height: 12.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RoundedButton(
                  text: "Add 5s",
                  color: Colors.teal,
                  onPressed: () => _controller.add(const Duration(seconds: 5)),
                ),
                RoundedButton(
                  text: "Subtract 5s",
                  color: Colors.teal,
                  onPressed: () => _controller.subtract(const Duration(seconds: 5)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  final String text;
  final Color color;
  final void Function()? onPressed;

  RoundedButton({required this.text, required this.color, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(text, style: const TextStyle(color: Colors.white)),
      style: TextButton.styleFrom(
        backgroundColor: color,
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      ),
      onPressed: onPressed,
    );
  }
}