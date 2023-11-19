import 'package:flutter/material.dart';

typedef StringCallback = void Function();

class ButtonAccountLogin extends StatelessWidget {
  final String textLabel;
  final Color? backgroundColor;
  final int? typeButton;
  final StringCallback? onPressed;

  const ButtonAccountLogin(
      {super.key,
      required this.textLabel,
      this.typeButton,
      this.onPressed,
      this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 35.0),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  backgroundColor ?? Colors.greenAccent)),
          child: Text(
            textLabel,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    ]);
  }
}
