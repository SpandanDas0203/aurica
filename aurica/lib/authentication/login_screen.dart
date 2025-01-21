import 'package:flutter/material.dart';
import 'package:aurica/authentication/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailTextEditingController= TextEditingController();
  TextEditingController passwordTextEditingController= TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [

              Image.asset(
                  "assets/images/Aurica.png"
              ),

              Text(
                "Login As User",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),

              //text fields + button

              Padding(
                padding: const EdgeInsets.all(22),
                child: Column(
                  children: [

                    //email
                    TextField(

                      controller: emailTextEditingController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        labelText: "User Email",
                        labelStyle: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 22,),

                    //password
                    TextField(
                      controller: passwordTextEditingController,
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        labelText: "User Password",
                        labelStyle: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 22,),

                    ElevatedButton(
                      onPressed:() {

                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        padding: const EdgeInsets.symmetric(horizontal: 80),
                      ),
                      child: const Text (
                        "Login",
                      ),
                    )
                  ],
                ),
              ),

              //login button

              TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (c)=>SignUpScreen()));
                },
                child: const Text(
                  "Don't have an account? Register Here",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
