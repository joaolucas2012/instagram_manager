import 'package:flutter/material.dart';
import 'package:instagram_manager/models/client.dart';
import 'package:instagram_manager/widgets/client_list_item.dart';

class ClientsList extends StatefulWidget {
  final List<Client> clients;
  final Function(Client) onDelete;

  const ClientsList({
    Key? key,
    required this.clients,
    required this.onDelete,
  }) : super(key: key);

  @override
  State<ClientsList> createState() => _ClientsListState();
}

class _ClientsListState extends State<ClientsList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      child: ListView(
        shrinkWrap: true,
        children: [
          for (Client client in widget.clients)
            ClientListItem(client: client, onDelete: widget.onDelete),
        ],
      ),
    );
  }
}
