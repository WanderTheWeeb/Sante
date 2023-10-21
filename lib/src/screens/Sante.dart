import 'package:flutter/material.dart';
import 'package:sante2/src/screens/ChatScreen.dart';
import 'package:sante2/utils/utils.dart';

class Sante extends StatefulWidget {
  const Sante({super.key});

  @override
  State<Sante> createState() => _SanteState();
}

class _SanteState extends State<Sante> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    const String pagenow = "Pagina actual";
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Sante"),
        leading: IconButton(
            onPressed: () {
              _globalKey.currentState?.openDrawer();
            },
            icon: const Icon(Icons.menu)),
        elevation: 8,
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(42, 157, 143, 1.0),
                Color.fromRGBO(24, 90, 82, 1.0)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.search), // Icono del botón
                  onPressed: () {
                    // Acción al presionar el botón (puedes colocar aquí tu lógica)
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      body: const ChatScreen(),
      drawer: Drawer(
        width: 230,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.horizontal(right: Radius.circular(20))),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black,
                Color.fromRGBO(42, 157, 143, 1.0),
                Color.fromRGBO(24, 90, 82, 1.0),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 20, 20),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      pagenow,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 2, 20, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/IntroImage.jpg'),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Anonimo',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'Usuario',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const Divider(color: Colors.white10, thickness: 3, indent: 3),
              TileDrawer('Organizaciones', Icons.group),
              TileDrawer('Configuracion', Icons.settings),
              TileDrawer('Sobre Nosotros', Icons.emoji_people),
              TileDrawer('Contactanos', Icons.corporate_fare),
            ],
          ),
        ),
      )

      ,
    );
  }
}
