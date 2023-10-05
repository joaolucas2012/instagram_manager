import 'package:flutter/material.dart';
import 'package:instagram_manager/models/client.dart';
import 'package:instagram_manager/utils/functions/format_date.dart';
import 'package:instagram_manager/widgets/styled_text.dart';

class InformationList extends StatelessWidget {
  final Client client;

  const InformationList({
    Key? key,
    required this.client,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.36,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Pagamentos:"),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.20,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    StyledText(
                      text: "Nome da conta: ${client.accountName}",
                    ),
                    StyledText(
                      text: "Senha da conta: ${client.accountPassword}",
                    ),
                    StyledText(
                      text: "Contato: ${client.contact}",
                    ),
                    StyledText(
                      text: "Data de início: ${formatDate(client.initialDate)}",
                    ),
                    StyledText(
                      text: "Data do próximo pagamento: ${formatDate(
                        client.initialDate.add(const Duration(days: 30)),
                      )}",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
