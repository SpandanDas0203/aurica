import 'package:flutter/material.dart';
import 'package:aurica/authentication/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  TextEditingController emailTextEditingController= TextEditingController();
  TextEditingController userNameTextEditingController= TextEditingController();
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
                  "Create a user's Account",
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

                      //username
                      TextField(
                        controller: userNameTextEditingController,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          labelText: "User Name",
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
                            "Sign Up",
                          ),
                      )
                    ],
                  ),
                ),

                //login button

                TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (c)=>LoginScreen()));
                  },
                  child: const Text(
                    "Already have an account? Login Here",
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
