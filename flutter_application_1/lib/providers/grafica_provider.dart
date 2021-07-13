import 'package:dio/dio.dart';
import 'package:flutter_application_1/models/grafica_.dart';

class GraficasProvider {
  final _url = 'http://api.bitcoincharts.com/v1/markets.json';
  final _http = Dio();

  Future<List<Grafica>> obtenerGrafica() async {
    final response = await _http.get(_url);
    List<dynamic> data = response.data;
    return data.map((grafica) => Grafica.fromMapJson(grafica)).toList();
  }
}
