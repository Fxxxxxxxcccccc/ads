import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/grafica_.dart';
import 'package:flutter_application_1/providers/grafica_provider.dart';

class HomePage extends StatelessWidget {
  final _graficasProvider = GraficasProvider();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('App BTC')),
      body: FutureBuilder(
        future: _graficasProvider.obtenerGrafica(),
        builder: (BuildContext context, AsyncSnapshot<List<Grafica>> snapShot) {
          final grafica = snapShot.data;
          if (snapShot.hasData) {
            return ListView.builder(
                itemCount: grafica!.length,
                itemBuilder: (BuildContext context, int i) {
                  final grafica1 = grafica[i];
                  return _Disenografica(grafica1);
                });
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}

class _Disenografica extends StatelessWidget {
  final Grafica grafica1;
  _Disenografica(this.grafica1);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(grafica1.symbol!),
      subtitle: Text(grafica1.latest_trade.toString()),
    );
  }
}
