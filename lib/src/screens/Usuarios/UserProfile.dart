import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi perfil'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(42, 157, 143, 1.0),
                Color.fromRGBO(24, 90, 82, 1.0),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(30),
                  child: CircleAvatar(
                    backgroundColor: Colors.black87,
                    radius: 50,
                    child: CircleAvatar(
                      radius: 48,
                      backgroundImage: AssetImage('assets/images/profileDefault.jpg'),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nombre de Usuario',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Fecha de Nacimiento: 01/01/1990',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Sexo: Masculino',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          const ListTile(
            leading: Icon(Icons.person),
            title: Text("Nombre: José Edoardo Martinez Chavarria"),
          ),
          const ListTile(
            leading: Icon(Icons.email),
            title:
            Text("Correo electrónico: lalitogamer@gmail.com"),
          ),
          const Divider(
            height: 30,
          ),
          const ListTile(
            leading: Icon(Icons.phone),
            title: Text("Teléfono: +52 9211212110"),
          ),
          const ListTile(
            leading: Icon(Icons.location_on),
            title: Text("Ubicación: Minatítlan, México"),
          ),
        ],
      ),
    );
  }
}
