import 'package:flutter/material.dart';
import 'package:instagram_manager/models/client.dart';
import 'package:instagram_manager/repositories/clients_repository.dart';
import 'package:instagram_manager/store/corestore.dart';
import 'package:instagram_manager/utils/functions/create_snackbar.dart';
import 'package:instagram_manager/widgets/button.dart';
import 'package:instagram_manager/widgets/clients_list.dart';
import 'package:instagram_manager/widgets/options_list.dart';
import 'package:instagram_manager/widgets/styled_divider.dart';
import 'package:instagram_manager/widgets/styled_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Client> clients = List<Client>.of(CoreStore.clients);
  final ClientsRepository repository = ClientsRepository();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const StyledTitle(),
                Container(
                  height: MediaQuery.of(context).size.height * 0.65,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const OptionsList(),
                      const StyledDivider(scalePercentage: 0.03),
                      ClientsList(clients: clients, onDelete: onDelete),
                      const Button(title: "Adicionar"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onDelete(Client client) {
    int index = clients.indexOf(client);

    setState(() => clients.remove(client));
    repository.saveClientsList(clients);

    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      createSnackBar(index: index, client: client, restoreOne: restoreClient),
    );
  }

  void restoreClient(int index, Client client) {
    setState(() => clients.insert(index, client));
    repository.saveClientsList(clients);
  }

  void deletAll() {
    List<Client> backup = List<Client>.of(clients);
    setState(() => clients.clear());
    repository.saveClientsList(clients);

    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      createSnackBar(backup: backup, restoreAll: restoreAllClients, all: true),
    );
  }

  void restoreAllClients(List<Client> backup) {
    setState(() => clients.addAll(backup));
    repository.saveClientsList(clients);
  }
}
