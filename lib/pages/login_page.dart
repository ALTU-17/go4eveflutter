import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();

}

class _MyLoginState extends State<MyLogin> {
  bool changeButton = false;
  String name = "";


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color:Color(0x7412F5C8),
        image: DecorationImage(
            image: AssetImage('assets/images/login.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(),
            Container(
              padding: EdgeInsets.only(left: 35, top: 100),
              child: Text(
                "Login $name",
                style: TextStyle(color: Colors.white, fontSize: 33),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5),
                child:Form(
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children:[
                          TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                fillColor: Colors.black54,
                                filled: true,
                                hintText: "Username or Email",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Username cannot be empty";
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            style: TextStyle(),
                            obscureText: true,
                            decoration: InputDecoration(
                                fillColor: Colors.black54,
                                filled: true,
                                hintText: "Password",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Sign in',
                                style: TextStyle(
                                    fontSize: 27,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black)
                              ),
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Color(0xff4c505b),
                                child: IconButton(
                                    color: Colors.white,
                                    onPressed: () {
                                      Navigator.pushNamed(context, 'bottom_nav');
                                    },
                                    icon: Icon(
                                      Icons.arrow_forward,
                                    )),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'register');
                                },
                                child: Text(
                                  'Register',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.amber,
                                      fontSize: 18),
                                ),
                                style: ButtonStyle(),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'profile');
                                  },
                                  child: Text(
                                    'Forgot Password',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Color(0xff4c505b),
                                      fontSize: 18,
                                    ),
                                  )),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}





























// import 'package:flutter/material.dart';
//
// class MyLogin extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<MyLogin> {
//   String name = "";
//   bool changeButton = false;
//
//   final _formKey = GlobalKey<FormState>();
//
//   moveToHome(BuildContext context) async {
//     if (_formKey.currentState!.validate()) {
//       setState(() {
//         changeButton = true;
//       });
//       await Future.delayed(Duration(seconds: 1));
//       await Navigator.pushNamed(context, 'bottom_nav');
//       setState(() {
//         changeButton = false;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//         color: Color(0x7412F5C8),
//         child: SingleChildScrollView(
//           child: Form(
//             key: _formKey,
//             child: Column(
//
//               children: [
//                 Image.asset(
//                   "assets/images/go_for_event_logo.png",
//                   fit: BoxFit.cover,
//                 ),
//                 SizedBox(
//                   height: 20.0,
//                 ),
//                 Text(
//                   "Welcome $name",
//                   style: TextStyle(
//                     fontSize: 28,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20.0,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(
//                       vertical: 16.0, horizontal: 32.0),
//                   child: Column(
//                     children: [
//                       TextFormField(
//                         decoration: InputDecoration(
//                           hintText: "Enter username",
//                           labelText: "Username",
//                         ),
//                         validator: (value) {
//                           if (value!.isEmpty) {
//                             return "Username cannot be empty";
//                           }
//
//                           return null;
//                         },
//                         onChanged: (value) {
//                           name = value;
//                           setState(() {});
//                         },
//                       ),
//                       TextFormField(
//                         obscureText: true,
//                         decoration: InputDecoration(
//                           hintText: "Enter password",
//                           labelText: "Password",
//                         ),
//                         validator: (value) {
//                           if (value!.isEmpty) {
//                             return "Password cannot be empty";
//                           } else if (value.length < 6) {
//                             return "Password length should be atleast 6";
//                           }
//
//                           return null;
//                         },
//                       ),
//                       SizedBox(
//                         height: 40.0,
//                       ),
//                       Material(
//                         color: Colors.deepPurple,
//                         borderRadius:
//                         BorderRadius.circular(changeButton ? 50 : 8),
//                         child: InkWell(
//                           onTap: () => moveToHome(context),
//                           child: AnimatedContainer(
//                             duration: Duration(seconds: 1),
//                             width: changeButton ? 50 : 150,
//                             height: 50,
//                             alignment: Alignment.center,
//                             child: changeButton
//                                 ? Icon(
//                               Icons.done,
//                               color: Colors.white,
//                             )
//                                 : Text(
//                               "Login",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 18),
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 15.0,
//                       ),
//                       Text(
//                         "OR",
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 20),
//                       ),
//                       SizedBox(
//                         height: 15.0,
//                       ),
//                       Material(
//                         color: Colors.deepPurple,
//                         borderRadius:
//                         BorderRadius.circular(changeButton ? 50 : 8),
//                         child: InkWell(
//                           onTap: () {
//                             Navigator.pushNamed(context, 'register');
//                           },
//                           child: AnimatedContainer(
//                             duration: Duration(seconds: 1),
//                             width: changeButton ? 50 : 150,
//                             height: 50,
//                             alignment: Alignment.center,
//                             child: changeButton
//                                 ? Icon(
//                               Icons.done,
//                               color: Colors.white,
//                             )
//                                 : Text(
//                               "Merchant",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 18),
//
//                             ),
//                           ),
//                         ),
//                       ),
//
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ));
//   }
// }
