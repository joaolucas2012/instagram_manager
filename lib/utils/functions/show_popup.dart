import 'package:flutter/material.dart';
import 'package:instagram_manager/models/client.dart';
import 'package:instagram_manager/widgets/client_information.dart';

Future<void> showPopup(BuildContext context, Client client) async {
  await showDialog(
    context: context,
    builder: (BuildContext context) {
      return ClientInformation(client: client);
    },
  );
}
