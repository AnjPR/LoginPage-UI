import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Login page UI',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const FirstScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => const SecondScreen(),
      },
    ),
  );
}

class FirstScreen extends StatelessWidget {
  //const FirstScreen({super.key});
  const FirstScreen({key});


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
                      Navigator.pushNamed(context, '/second');
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

class SecondScreen extends StatelessWidget {
  //const SecondScreen({super.key});
  const SecondScreen({key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          toolbarHeight: 70,

          title: Center(child: Text("My App",
              style: TextStyle(
                  fontSize: 20, letterSpacing: 5, color: Colors.white))
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
                  Text("Sign Up",
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
                decoration: InputDecoration(
                  labelText: " emailid",

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
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: " Confirm password",
                    suffixIcon: Icon(Icons.remove_red_eye)),
              ),
              SizedBox(
                height: 8,
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
                    "Sign up",
                    style: TextStyle(
                        fontSize: 25, letterSpacing: 2, color: Colors.black),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  print("Going Back..");
                },
                child: Text(
                  "Go back ",
                  style: TextStyle(color: Colors.black45),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}