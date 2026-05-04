import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget{
  const SnackbarScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        title: const Text("Snackbar Widget"),
      ),

      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar( //this tells flutter which screen should display the snackbar
            //.showSnackBar - > displays the SnackBar
              const SnackBar(

                content: Text(
                  //content: Text(...) -> The message inside the snackbar
                  "Profile Updated Successfully!",
                ),
                duration: Duration(seconds: 2), // Controls how long SnackBar gets visible

                backgroundColor: Colors.green, //Customizes SnackBar color
                behavior: SnackBarBehavior.floating, // modern floating snackbar UI
              ),
            );
          },

          child: const Text(
            "show Snackbar",
          ),
        ),
      ),
    );
  }
}