import 'package:flutter/material.dart';

class PLogIn extends StatefulWidget {
  const PLogIn({super.key});

  @override
  State<PLogIn> createState() => _PLogInState();
}

class _PLogInState extends State<PLogIn> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  bool eye = true;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "images/shopp.jpg",
              ),
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(150, 133, 133, 133).withOpacity(.5),
            ),
          ),
        ),
        Positioned(
          top: 150,
          left: size.width * .1,
          child: Column(
            children: [
              Text(
                "Hello Again!",
                style: TextStyle(
                    color: Color.fromARGB(181, 9, 158, 96).withOpacity(.8),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Macondo'),
              ),
              Text("Welcome Back you've been missed",
                  style: TextStyle(
                      color: Color.fromARGB(181, 9, 158, 96).withOpacity(.8),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Macondo')),
              SizedBox(
                height: 50,
              ),
              Form(
                  key: _formKey,
                  child: Column(children: [
                    Container(
                      height: 55,
                      width: .8 * size.width,
                      child: TextFormField(
                        controller: emailcontroller,
                        validator: (String? emailinput) {
                          if (emailinput != null &&
                              emailinput.isNotEmpty == true &&
                              emailinput.contains('@') &&
                              emailinput.contains('.com')) {
                            return null;
                          } else {
                            return "Please,Enter correct Email";
                          }
                        },
                        cursorColor:
                            Color.fromARGB(181, 9, 158, 96).withOpacity(.8),
                        onFieldSubmitted: (value) {},
                        decoration: InputDecoration(
                          errorStyle: TextStyle(
                            color: Colors.red,
                            fontSize: null,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          ),
                          suffixIcon: Icon(
                            Icons.edit,
                            color: Colors.grey,
                          ),
                          hintText: "Enter Your Email",
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                        height: 55,
                        width: .8 * size.width,
                        child: TextFormField(
                          controller: passcontroller,
                          validator: (String? passinput) {
                            if (passinput != null &&
                                passinput.isNotEmpty == true &&
                                passinput.length >= 6) {
                              return null;
                            } else {
                              return "Incorrect Password ";
                            }
                          },
                          obscureText: eye,
                          cursorColor:
                              Color.fromARGB(181, 9, 158, 96).withOpacity(.8),
                          decoration: InputDecoration(
                            errorStyle: TextStyle(
                              color: Colors.red,
                              fontSize: null,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            ),
                            suffixIcon: (eye)
                                ? IconButton(
                                    icon: Image.asset(
                                      "images/hide.png",
                                      color: Color.fromARGB(255, 65, 63, 63),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        eye = !eye;
                                      });
                                    })
                                : IconButton(
                                    icon: Icon(
                                      Icons.remove_red_eye_rounded,
                                      color: Color.fromARGB(255, 30, 29, 29),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        eye = !eye;
                                      });
                                    }),
                            hintText: "Password",
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                          ),
                        )),
                    SizedBox(
                      height: 40,
                    ),
                    MaterialButton(
                      minWidth: .55 * size.width,
                      onPressed: () {
                        setState(() {
                          print(_formKey.currentState!.validate(
                              //check

                              ));
                        });
                        setState(() {
                          if (_formKey.currentState!.validate()) {
                            Navigator.of(context)
                                .pushReplacementNamed("/category");
                          }
                        });
                      },
                      child: Text("Sign In",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Macondo')),
                      color: Color.fromARGB(181, 9, 158, 96),
                    ),
                  ])),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't Have Account?",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        // textAlign: TextAlign.left,
                      ))
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text(("Or Continue With"),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Macondo')),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      "images/facebook.png",
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image.asset("images/google.png"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image.asset("images/apple.png"),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    ));
  }
}
