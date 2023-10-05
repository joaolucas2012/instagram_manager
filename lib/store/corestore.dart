import 'package:instagram_manager/models/client.dart';

class CoreStore {
  static List<Client> clients = [
    Client(
      name: "Jonas",
      contact: "356988888888",
      accountName: "acount",
      accountPassword: "teste",
      initialDate: DateTime.now(),
      paymentDate: DateTime.now().add(const Duration(days: 30)),
      payments: [
        DateTime.now().subtract(const Duration(days: 30)),
        DateTime.now().subtract(const Duration(days: 60)),
      ],
    ),
    Client(
      name: "Jonas",
      contact: "356988888888",
      accountName: "acount",
      accountPassword: "teste",
      initialDate: DateTime.now(),
      paymentDate: DateTime.now().add(const Duration(days: 30)),
      payments: [
        DateTime.now().subtract(const Duration(days: 30)),
        DateTime.now().subtract(const Duration(days: 60)),
      ],
    ),
    Client(
      name: "Jonas",
      contact: "356988888888",
      accountName: "acount",
      accountPassword: "teste",
      initialDate: DateTime.now(),
      paymentDate: DateTime.now().add(const Duration(days: 30)),
      payments: [
        DateTime.now().subtract(const Duration(days: 30)),
        DateTime.now().subtract(const Duration(days: 60)),
      ],
    )
  ];
}
