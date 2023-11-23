import 'package:flutter/material.dart';
import 'package:flutter_codigo_sp/widgets/my_drawer_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDarkMode = false;
  int gender = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared preferens app"),
      ),
      drawer: MyDrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Configuracion General",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 12.0,
            ),
            TextField(
              decoration: InputDecoration(hintText: "Nombre Completo"),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextField(decoration: InputDecoration(hintText: "Dirección")),
            const SizedBox(
              height: 12.0,
            ),
            // Switch(
            //   value: false,
            //   onChanged: (bool value) {},
            // ),
            SwitchListTile(
              value: isDarkMode,
              title: Text("Modo oscuro"),
              onChanged: (bool value) {
                print(value);
                isDarkMode = value;
                setState(() {});
              },
            ),
            // Radio(
            //  value: 1,
            //  groupValue: 1,
            //  onChanged: (int? value) {},
            //),
            RadioListTile(
              value: 1,
              groupValue: gender,
              title: Text("Masculino"),
              onChanged: (int? value) {
                gender = value!;
                setState(() {});
              },
            ),
            RadioListTile(
              value: 2,
              groupValue: gender,
              title: Text("Femenino"),
              onChanged: (int? value) {
                gender = value!;
                setState(() {});
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0))),
                icon: Icon(
                  Icons.save,
                  color: Colors.white,
                ),
                label: Text("Guarda data"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
