import 'package:flutter/material.dart';
import 'package:instagram_manager/models/client.dart';

SnackBar createSnackBar({
  int? index,
  List<Client>? backup,
  Client? client,
  Function(int, Client)? restoreOne,
  Function? restoreAll,
  bool all = false,
  String? text,
}) {
  String message = "";

  if (text != null && text.isNotEmpty) {
    message = text;
  } else {
    message = (!all)
        ? 'Task "${client!.name}" was successfully deleted!'
        : 'Tasks were successfully deleted';
  }

  return SnackBar(
    behavior: SnackBarBehavior.floating,
    padding: const EdgeInsets.all(8),
    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    content: Text(
      message,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w300,
      ),
    ),
    backgroundColor: Colors.purple,
    action: SnackBarAction(
      label: 'undo',
      textColor: Colors.white,
      onPressed: () {
        (all) ? restoreAll!(backup) : restoreOne!(index!, client!);
      },
    ),
    duration: const Duration(seconds: 7),
  );
}
