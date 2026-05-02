import 'package:flutter/material.dart';

class TextFieldScreen extends StatefulWidget{
  const TextFieldScreen({super.key});

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen>{

  String name="";

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextField Widget"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        //Adds 20px space on all sides so content doesn't touch screen edges
        child: Column(
          children: [

            TextField(
              keyboardType: TextInputType.number, //shows number keyboard
              obscureText: true, //hide text like password
              //hides text like ••••••
              onChanged: (value) {

                setState(() {
                  //Updates UI.
                  name=value;
                });
              },

              decoration: const InputDecoration(
                labelText: "Enter Your Name", //floating label text
                border: OutlineInputBorder(), //adds border around TextField
                prefixIcon: Icon(Icons.person), //icon on LEFT inside TextField
              ),
            ),

            const SizedBox(height: 30),

            Text(
              "Hello $name",

              style: const TextStyle(
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}