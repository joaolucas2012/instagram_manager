import 'package:flutter/material.dart';
import 'package:instagram_manager/models/client.dart';
import 'package:instagram_manager/utils/functions/format_date.dart';
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
            height: MediaQuery.of(context).size.height * 0.6,
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
                const SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Nome da conta: ${client.accountName}",
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      "Senha da conta: ${client.accountPassword}",
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      "Contato: ${client.contact}",
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      "Data de início: ${formatDate(client.initialDate)}",
                      style: const TextStyle(fontSize: 16),
                    ),
                    const Text(
                      "Data do próximo pagamento:",
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      formatDate(
                        client.initialDate.add(const Duration(days: 30)),
                      ),
                      style: const TextStyle(fontSize: 16),
                    ),
                    PaymentsList(client: client),
                  ],
                ),
                const SizedBox(height: 20),
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
