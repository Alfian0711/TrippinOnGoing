import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:project_two/controllers/authUser.dart';
import 'package:project_two/views/features/auth/regist.dart';

class Login extends StatelessWidget {
  Login({super.key});

  // text editing controller
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(187, 232, 194, 1),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage('assets/images/beachbackground.png'),
                          fit: BoxFit.fill)),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 30,
                        width: 80,
                        height: 200,
                        child: FadeInUp(
                            duration: Duration(seconds: 1),
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/light-1.png'))),
                            )),
                      ),
                      Positioned(
                        left: 140,
                        width: 80,
                        height: 150,
                        child: FadeInUp(
                            duration: Duration(milliseconds: 1200),
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/light-2.png'))),
                            )),
                      ),
                      Positioned(
                        right: 40,
                        top: 40,
                        width: 80,
                        height: 150,
                        child: FadeInUp(
                            duration: Duration(milliseconds: 1300),
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/mountain.png'))),
                            )),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  child: FadeInUp(
                    duration: Duration(milliseconds: 1600),
                    child: Container(
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 65,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    )
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      FadeInUp(
                          duration: Duration(milliseconds: 1800),
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Color.fromRGBO(187, 232, 194, 1),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(143, 148, 251, .2),
                                      blurRadius: 20.0,
                                      offset: Offset(0, 10))
                                ]),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                    color: Color.fromRGBO(187, 232, 194, 1),
                                  ))),
                                  child: TextField(
                                    controller: usernameController,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Email or Username",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[700])),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  child: TextField(
                                    controller: passwordController,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Password",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[700])),
                                  ),
                                )
                              ],
                            ),
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      FadeInUp(
                          duration: Duration(milliseconds: 1900),
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(colors: [
                                  Color.fromRGBO(167, 216, 175, 1),
                                  Color.fromRGBO(144, 193, 152, 1),
                                ])),
                            child: Center(
                                child: ElevatedButton(
                              onPressed: () {
                               SignIn().signUserIn(
                                  email: usernameController.text,
                                  password: passwordController.text,
                                  context: context
                              );
                                // Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                                // Define the action when the button is pressed
                              },
                              style: ElevatedButton.styleFrom(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            )),
                          )),
                      SizedBox(
                        height: 70,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Regist()));
                        },
                        child: FadeInUp(
                            duration: Duration(milliseconds: 2000),
                            child: Text(
                              "Create Account?",
                              style: TextStyle(fontSize: 15,color: Colors.white),
                            )),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
