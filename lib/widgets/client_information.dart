import 'package:flutter/material.dart';
import 'package:instagram_manager/models/client.dart';
import 'package:instagram_manager/widgets/information_list.dart';
import 'package:instagram_manager/widgets/payments_list.dart';

class ClientInformation extends StatelessWidget {
  final Client client;

  const ClientInformation({Key? key, required this.client}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.black.withOpacity(0.7),
          width: double.infinity,
          height: double.infinity,
        ),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.7,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  client.name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InformationList(client: client),
                PaymentsList(client: client),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Fechar'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
