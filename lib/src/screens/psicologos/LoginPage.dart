import 'package:flutter/material.dart';
import 'package:sante2/src/screens/Sante.dart';
import 'package:sante2/src/screens/psicologos/RequestMenu.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Iniciar sesión"),
        elevation: 8,
        backgroundColor: Colors.transparent,
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
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                    labelText: 'Correo Electrónico',
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    labelText: 'Contraseña',
                  ),
                  obscureText: true, // Para ocultar la contraseña
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color.fromRGBO(24, 90, 82, 1.0),
                    ),
                  ),
                  onPressed: () {
                    // Aquí puedes agregar la lógica para verificar el inicio de sesión
                    String username = _usernameController.text;
                    String password = _passwordController.text;

                    if (username == 'usuario' && password == 'contraseña') {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const RequestMenu()));
                    } else {
                      // Muestra un mensaje de error
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.warning,
                              color: Colors.red,
                            ),
                            Text('Credenciales incorrectas'),
                          ],
                        ),
                      ));
                    }
                  },
                  child: const Text('Iniciar Sesión'),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color.fromRGBO(24, 90, 82, 1.0),
                    ),
                  ),
                  onPressed: () {
                    // Aquí puedes agregar la lógica para iniciar sesión con Google
                  },
                  child: const Text('Iniciar Sesión con Google'),
                ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/psychoRegister');
                    // Aquí puedes agregar la lógica para redirigir al usuario a la pantalla de registro
                  },
                  child: const Text('¿No tienes una cuenta? Regístrate'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
