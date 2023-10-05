import 'package:instagram_manager/models/client.dart';

class CoreStore {
  static List<Client> clients = [
    Client(
      name: "Ubajuba",
      contact: "356988888888",
      accountName: "uba_juba",
      accountPassword: "ubajuba10",
      initialDate: DateTime.now(),
      paymentDate: DateTime.now().add(const Duration(days: 30)),
      payments: [
        DateTime.now().subtract(const Duration(days: 30)),
        DateTime.now().subtract(const Duration(days: 60)),
        DateTime.now().subtract(const Duration(days: 90)),
        DateTime.now().subtract(const Duration(days: 120)),
      ],
    ),
    Client(
      name: "Marco",
      contact: "356988888888",
      accountName: "hotelfazendadasmontanhas",
      accountPassword: "delfim@19",
      initialDate: DateTime.now(),
      paymentDate: DateTime.now().add(const Duration(days: 30)),
      payments: [
        DateTime.now().subtract(const Duration(days: 30)),
        DateTime.now().subtract(const Duration(days: 60)),
      ],
    ),
    Client(
      name: "Branco",
      contact: "356988888888",
      accountName: "brancolareconstrucao",
      accountPassword: "brancoaaa1",
      initialDate: DateTime.now(),
      paymentDate: DateTime.now().add(const Duration(days: 30)),
      payments: [
        DateTime.now().subtract(const Duration(days: 30)),
        DateTime.now().subtract(const Duration(days: 60)),
      ],
    )
  ];
}
