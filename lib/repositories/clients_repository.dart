import 'dart:convert';

import 'package:instagram_manager/models/client.dart';
import 'package:shared_preferences/shared_preferences.dart';

const clientsListKey = 'Clients';

class ClientsRepository {
  late SharedPreferences sharedPreferences;

  Future<List<Client>> getClientsList() async {
    sharedPreferences = await SharedPreferences.getInstance();

    String? json = sharedPreferences.getString(clientsListKey) ?? "[]";

    List<Client> clients = List<Client>.from(
        (jsonDecode(json)).map((e) => Client.fromMap(e)).toList());

    return clients;
  }

  void saveClientsList(List<Client> clients) async {
    String json = jsonEncode(clients.map((e) => e.toJson()).toList());
    sharedPreferences.setString(clientsListKey, json);
  }
}
