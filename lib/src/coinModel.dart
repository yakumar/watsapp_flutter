


class CoinList {
  List<Coin> currencyList = <Coin>[];

}

class Coin {
  String name;
  String oneHourChange;
  String priceToUSD;

  Coin();

  Coin.fromJson(Map<String, dynamic> parsedJson){

    name = parsedJson['name'];
    oneHourChange = parsedJson['percent_change_1h'];
    priceToUSD = parsedJson['price_usd'];


  }

}