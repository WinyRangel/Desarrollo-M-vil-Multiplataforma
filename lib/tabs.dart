import 'package:flutter/material.dart';

class ManejoTabs extends StatefulWidget {
  const ManejoTabs({super.key});

  @override
  State<ManejoTabs> createState() => _ManejoTabsState();
}

class _ManejoTabsState extends State<ManejoTabs> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.animateTo(2);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      //color: Colors.blue[100],
      child: Column(
        children: <Widget>[
          DefaultTabController(
            length: 3,
            child: TabBar(
              controller: _tabController,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.red,
              indicator: const BoxDecoration(color: Colors.black),
              tabs: const [
                Tab(text: 'Cursos'),
                Tab(text: 'Workshops'),
                Tab(text: 'Especialidades'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                ContenUno(),
                ContenDos(),
                ContenTres(),
                Icon(Icons.directions_bike),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ContenUno extends StatelessWidget {
  const ContenUno({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: const <Widget>[
      Text(
        'Curso JavaScript',
        style: TextStyle(
          color: Colors.blueAccent,
          fontSize: 30, //¿Cómo cambiar color?
        ),
      ),
      Text(
        'En este curso gratuito de JavaScript aprenderás paso a paso todo lo que necesitas saber para comenzar a trabajar con este lenguaje de programación',
        style: TextStyle(
          color: Colors.blueGrey,
          fontSize: 20, //¿Cómo cambiar color?
        ),
      ),
    ]);
  }
}

class ContenDos extends StatelessWidget {
  const ContenDos({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: const <Widget>[
      Text(
        'CoderHouse',
        style: TextStyle(
          color: Colors.blueAccent,
          fontSize: 30, //¿Cómo cambiar color?
        ),
      ),
      Text(
        'En nuestro primer módulo de JavaScript, primero respondemos algunas preguntas fundamentales como "¿qué es JavaScript?", "¿Cómo se ve?" y "¿qué puede hacer?", antes de pasar a guiarte por tu primera experiencia práctica de escribir JavaScript. Después de eso, discutimos en detalle algunas características clave de JavaScript, tal como variables, cadenas, números y arreglos.',
        style: TextStyle(
          color: Colors.blueGrey,
          fontSize: 20, //¿Cómo cambiar color?
        ),
      ),
    ]);
  }
}

class ContenTres extends StatelessWidget {
  const ContenTres({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: const <Widget>[
      Text(
        'JavaScript',
        style: TextStyle(
          color: Colors.blueAccent,
          fontSize: 30, //¿Cómo cambiar color?
        ),
      ),
      Text(
        'JavaScript es un lenguaje de programación que te permite implementar cosas complejas en páginas web. Cada vez que una página web hace algo más que sentarse ahí y mostrar información estática para que la veas — mostrando actualizaciones de contenido oportunas, mapas interactivos, gráficos animados 2D/3D, desplazando máquinas reproductoras de video, o más, puedes apostar que probablemente JavaScript esté involucrado .',
        style: TextStyle(
          color: Colors.blueGrey,
          fontSize: 20, //¿Cómo cambiar color?
        ),
      ),
    ]);
  }
}