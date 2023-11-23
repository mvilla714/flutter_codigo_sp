import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared preferens app"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://images.pexels.com/photos/1269968/pexels-photo-1269968.jpeg?auto=compress&cs=tinysrgb&w=600",
                  ),
                ),
              ),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white12,
                      radius: 30,
                      backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/240561/pexels-photo-240561.jpeg?auto=compress&cs=tinysrgb&w=600",
                      ),
                    ),
                    Text(
                      "Martin",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Administrador",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.people,
                color: Colors.black.withOpacity(0.6),
              ),
              title: Text("Mi perfil"),
            ),
            ListTile(
              leading: Icon(
                Icons.file_copy,
                color: Colors.black.withOpacity(0.6),
              ),
              title: Text("Portafolio General"),
            ),
            ListTile(
              leading: Icon(
                Icons.lock,
                color: Colors.black.withOpacity(0.6),
              ),
              title: Text("Cambiar contraseña"),
            ),
            Divider(
              indent: 12,
              endIndent: 12,
            ),
            ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.black.withOpacity(0.6),
              ),
              title: Text("Salir del App"),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [],
          ),
        ],
      ),
    );
  }
}
