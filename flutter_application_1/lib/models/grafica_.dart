class Grafica {
  String? currency;
  // ignore: non_constant_identifier_names
  int? latest_trade;
  int? duration;
  String? symbol;

  Grafica(
      {this.currency,
      // ignore: non_constant_identifier_names
      this.latest_trade,
      this.duration,
      this.symbol});

  factory Grafica.fromMapJson(Map<String, dynamic> grafica) {
    return Grafica(
        currency: grafica['currency'],
        latest_trade: grafica['latest_trade'],
        duration: grafica['duration'],
        symbol: grafica['symbol']);
  }
}
