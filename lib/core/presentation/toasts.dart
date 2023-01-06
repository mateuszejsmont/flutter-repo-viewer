import 'package:flash/flash.dart';
import 'package:flutter/material.dart';

Future<void> showNoConnectionToast(
  String message,
  BuildContext context,
) async {
  await showFlash(
    context: context,
    duration: const Duration(seconds: 3),
    builder: (context, controller) {
      return Flash(
        controller: controller,
        alignment: Alignment.center,
        backgroundColor: Colors.black.withOpacity(.7),
        borderRadius: BorderRadius.circular(8),
        margin: const EdgeInsets.all(8),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            message,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      );
    },
  );
}
