import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget{
  const FormScreen({super.key});

  @override
  State<FormScreen> createState () => _FormScreenState();
}

class _FormScreenState extends State<FormScreen>{
  
  final _formKey=GlobalKey<FormState>();

  /*
  GlobalKey<FormState>
  > A unique key that identifies this Form
  > Used to access form methods like validate() and save()

  _formKey = TV Remote
  Form     = TV

_formKey.validate() = press validate button on remote
_formKey.save()     = press save button on remote
  */

  String name="";
  String email="";
  String password="";

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forms Widget"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Form(

          key: _formKey, //connects remote to TV
          //Wraps all form fields together
          //key: _formKey connects the form to its controller
          child: Column(
            children: [
              
              //1. Name Field
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Enter Name",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),

                validator: (value){
                  if(value == null || value.isEmpty){
                    return "Please enter your name";
                  }

                  return null; //null means no error
                },

                onSaved: (value){
                  name=value!; //saves typed value into name variable
                },
                //Runs when _formKey.currentState!.save() is called
                //! means "I'm sure this is not null"
              ),

              const SizedBox(height: 20),

              //2. Email field
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Enter Email",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value){
                  if(value == null || value.isEmpty){
                    return "Please enter your email";
                  }
                  if(!value.contains("@") || !value.contains(".com")){
                    //!  =  NOT
                    return "Enter a valid email";
                  }
                  return null;
                },
                onSaved: (value){ 
                  email=value!;
                  },
              ),
              const SizedBox(height: 20),
              //3. Password Field
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Enter Password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
                obscureText: true, //hides password

                validator: (value){
                  if(value==null || value.isEmpty){
                    return "Please enter your password";
                  }
                  if(value.length<6){
                    return "Password must be 6+ characters";
                  }
                  return null;
                },
                onSaved: (value){
                  password=value!;
                },
              ),

              ElevatedButton(
                onPressed: (){
                  if(_formKey.currentState!.validate()){  // step 1 — check all validators
                    _formKey.currentState!.save(); //step 2 — save all values
                    
                    ScaffoldMessenger.of(context).showSnackBar( //step 3 — show message
                      /*1. ScaffoldMessenger.of(context) - find the Scaffold of this screen
                          > Find the messenger of the current screen */
                      //dot = access its method
                      //showSnackBar - show the snackbar

                      //.of(context) tells Flutter:
                      //"show it on the screen where context is"
                      
                      SnackBar( //shows message at bottom
                        content: Text(
                          "Welcome $name! Logged in as $email",
                          ),
                          backgroundColor: Colors.green,
                      ),
                    );
                  }
                },
                child: const Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}