import 'package:flutter/material.dart';
import 'package:instagram_manager/models/client.dart';
import 'package:instagram_manager/widgets/date_list_item.dart';

class PaymentsList extends StatelessWidget {
  final Client client;

  const PaymentsList({Key? key, required this.client}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text("Pagamentos:"),
          ListView(
            shrinkWrap: true,
            children: [
              for (DateTime date in client.payments) DateListItem(date: date),
            ],
          ),
        ],
      ),
    );
  }
}
