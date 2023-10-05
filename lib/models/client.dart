class Client {
  final String name;
  final String contact;
  final String accountName;
  final String accountPassword;
  final DateTime initialDate;
  final DateTime paymentDate;
  final List<DateTime> payments;

  Client({
    required this.name,
    required this.contact,
    required this.accountName,
    required this.accountPassword,
    required this.initialDate,
    required this.paymentDate,
    required this.payments,
  });

  factory Client.fromMap(Map<String, dynamic> source) {
    return Client(
      name: source["name"],
      contact: source["contact"],
      accountName: source["accountName"],
      accountPassword: source["accountPassword"],
      initialDate: source["initialDate"],
      paymentDate: source["paymentDate"],
      payments: source["payments"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'contact': contact,
      'accountName': accountName,
      'accountPassword': accountPassword,
      'initialDate': initialDate,
      'paymentDate': paymentDate,
      'payments': payments.map((e) => e.toIso8601String()).toList(),
    };
  }
}
