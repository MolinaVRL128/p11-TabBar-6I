import 'package:flutter/material.dart';

void main() => runApp(const AppMiTapBar());

class AppMiTapBar extends StatelessWidget {
  const AppMiTapBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ejemplo TapBar Reyna Molina",
      theme: ThemeData(primarySwatch: Colors.red),
      home: MiPaginaInicial(),
    );
  }
} //Fin de AppMiTapBar

class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
} //MiPaginaInicial

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("TabBar Reyna Molina"),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Pasteles",
                icon: Icon(Icons.cake_outlined),
              ),
              Tab(
                text: "Sabores",
                icon: Icon(Icons.list_alt_outlined),
              ),
              Tab(
                text: "Precios",
                icon: Icon(Icons.price_change_outlined),
              ),
              Tab(
                text: "Agendar",
                icon: Icon(Icons.calendar_today),
              ),
            ], //Fin de tabs
          ), //Fin Bottom TapBar
        ),
        body: TabBarView(children: const <Widget>[
          Center(
            child: Text(
              "Red velvet",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          Center(
            child: Text(
              "Coco",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          Center(
            child: Text(
              "1500",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          Center(
            child: Text(
              "14 / 02 / 2024",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
        ] //Jardín de niños
            ), //Fin de TabBarView
      ), //Fin de Scaffold
    ); //DefaultTabController
  } //Fin Widget
} // _MiPaginaInicialState
