import 'package:flutter/material.dart';

class AlertDialogScreen extends StatelessWidget{
  const AlertDialogScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        title: const Text("AlertDialog"),
      ),

      body: Center(
        child: ElevatedButton(
          onPressed: (){
            showDialog( //displays popup dialog above screen
              context: context,  //tells flutter where to show it

              barrierDismissible: false, //user is forced to tap a button, true (by DEFAULT)

              builder: (context){ //function that returns the dialog widget to display
                
                return AlertDialog( //readymade flutter widget for dialogs.
                //It has 3 main parts: title, content, actions
                  title: const Text(
                    "Delete File",
                  ),

                  content: const Text(
                    "Are you sure, you want to delete this file?",
                  ),

                  actions: [
                    TextButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },

                      child: const Text(
                        "Cancel",
                      ),
                    ),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red, //makes button red
                      ),
                      onPressed: (){
                        Navigator.pop(context);

                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            duration: Duration(seconds: 2), // Controls how long SnackBar gets visible

                            backgroundColor: Colors.green, //Customizes SnackBar color

                            behavior: SnackBarBehavior.floating,

                            content: Text(
                              "File Deleted Successfully.",
                              
                            ),
                          ),
                        );
                      },

                      child: const Text(
                        "Delete",
                        style: TextStyle(
                          color: Colors.white,
                        )
                      ),
                    ),
                  ],
                );
              },
              );
          }, //onPressed ends here

          child: const Text(
            "Show Dialog"
          ),
        ),
      ),
    );
  }
}