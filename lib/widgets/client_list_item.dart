import 'package:flutter/material.dart';
import 'package:instagram_manager/models/client.dart';
import 'package:instagram_manager/utils/functions/format_contact.dart';
import 'package:instagram_manager/utils/functions/format_date.dart';
import 'package:instagram_manager/utils/functions/show_popup.dart';

class ClientListItem extends StatelessWidget {
  final Client client;
  final Function(Client) onDelete;

  const ClientListItem({
    Key? key,
    required this.client,
    required this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey[200],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "${client.name} - ${formatDate(client.initialDate)}",
                style: const TextStyle(fontSize: 12),
              ),
              const SizedBox(height: 7),
              GestureDetector(
                onTap: () async => await showPopup(context, client),
                child: Text(
                  "${client.accountName} - ${formatContact(client.contact)}",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
