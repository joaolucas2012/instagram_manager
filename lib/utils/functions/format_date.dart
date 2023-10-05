String formatDate(DateTime date) {
  return date
      .toString()
      .split(" ")
      .first
      .split("-")
      .reversed
      .toList()
      .join("/");
}
