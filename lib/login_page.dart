import 'package:flutter/material.dart';



class LoginPage extends StatelessWidget {
  //const LoginPage({super.key});
  const LoginPage({key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          toolbarHeight: 200,
          title: Center(child: Text("My App",
              style: TextStyle(
              fontSize: 60, letterSpacing: 5, color: Colors.white ))
          ),
          backgroundColor: Color.fromARGB(255, 217, 212, 0),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Center(
                  child:
                  Text("Login here to continue",
                style: TextStyle(
                fontSize: 25, letterSpacing: 0, color: Colors.black54)
                  )),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: " Username",

                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "password",
                    suffixIcon: Icon(Icons.remove_red_eye)),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //Center(child: Text("forgot password?")),
                  TextButton(onPressed: () {}, child: Text("forgot password?"))
                ],

              ),
              Container(
                height: 40,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 219, 210, 0),
                      Color.fromARGB(255, 218, 211, 0),
                      Color.fromARGB(255, 219, 210, 0)
                    ])),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 25, letterSpacing: 2, color: Colors.black),
                  ),
                ),
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account ? "),
                  TextButton(
                    onPressed: () {
                      print("tapped register");
                    },
                    child: Text(
                      "Register Account",
                      style: TextStyle(color: Colors.teal.shade900),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
