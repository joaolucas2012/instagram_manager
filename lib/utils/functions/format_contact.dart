String formatContact(String number) {
  return "(${number.substring(0, 2)}) ${number.substring(3, 7)}-${number.substring(8)}";
}
