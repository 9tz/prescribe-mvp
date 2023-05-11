// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:prescribe_mvp/reusable_widgets/reusable_widgets.dart';
// import 'package:prescribe_mvp/screens/home_screen.dart';
// import 'package:prescribe_mvp/screens/reset_password.dart';
// import 'package:prescribe_mvp/screens/signup_screen.dart';
// import 'package:prescribe_mvp/services/firebase_services.dart';
// import 'package:prescribe_mvp/Util/color_utils.dart';
// import 'package:flutter/material.dart';
// import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

// class SignInScreen extends StatefulWidget {
//   const SignInScreen({Key? key}) : super(key: key);

//   @override
//   _SignInScreenState createState() => _SignInScreenState();
// }

// class _SignInScreenState extends State<SignInScreen> {
//   TextEditingController _passwordTextController = TextEditingController();
//   TextEditingController _emailTextController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: const Text('Prescribe Health'),
//       // ),
//       body: Container(
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height,
//         decoration: BoxDecoration(
//             gradient: LinearGradient(colors: [
//           Color.fromARGB(255, 56, 59, 63),
//           Color.fromARGB(230, 194, 190, 190),
//         ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: EdgeInsets.fromLTRB(
//                 20, MediaQuery.of(context).size.height * 0.2, 20, 0),
//             child: Column(
//               children: <Widget>[
//                 logoWidget("assets/images/Logomark_Blue.png"),
//                 const SizedBox(
//                   height: 50,
//                 ),
//                 reusableTextField("Enter UserName", Icons.person_outline, false,
//                     _emailTextController),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 reusableTextField("Enter Password", Icons.lock_outline, true,
//                     _passwordTextController),
//                 const SizedBox(
//                   height: 5,
//                 ),
//                 forgetPassword(context),
//                 firebaseUIButton(context, "Sign In", () {
//                   FirebaseAuth.instance
//                       .signInWithEmailAndPassword(
//                           email: _emailTextController.text,
//                           password: _passwordTextController.text)
//                       .then((value) {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => HomeScreen()));
//                   }).onError((error, stackTrace) {
//                     print("Error ${error.toString()}");
//                     _siginErroHandler(error.toString());
//                   });
//                 }),
//                 googleSignInButton(context, "Sign In with Google", () async {
//                   // FirebaseAuth.instance
//                   //     .signInWithProvider(GoogleAuthProvider())
//                   //     .then((value) {
//                   //   Navigator.push(context,
//                   //       MaterialPageRoute(builder: (context) => HomeScreen()));
//                   // }).onError((error, stackTrace) {
//                   //   print("Error ${error.toString()}");
//                   //   _siginErroHandler(error.toString());
//                   // });
//                   FirebaseService service = new FirebaseService();
//                   try {
//                     await service.signInwithGoogle();
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
//                   } catch (e) {
//                     if (e is FirebaseAuthException) {
//                       _siginErroHandler(e.message!);
//                     }
//                   }
//                 }),
//                 signUpOption()
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Container firebaseUIButton(
//       BuildContext context, String title, Function onTap) {
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       height: 50,
//       margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
//       decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
//       child: ElevatedButton(
//         onPressed: () {
//           onTap();
//         },
//         style: ButtonStyle(
//             backgroundColor: MaterialStateProperty.resolveWith((states) {
//               if (states.contains(MaterialState.pressed)) {
//                 return Colors.black26;
//               }
//               return Colors.white;
//             }),
//             shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                 RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30)))),
//         child: Text(
//           title,
//           style: const TextStyle(
//               color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),
//         ),
//       ),
//     );
//   }

//   Row signUpOption() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         const Text("Don't have account?",
//             style: TextStyle(color: Colors.white70)),
//         GestureDetector(
//           onTap: () {
//             Navigator.push(context,
//                 MaterialPageRoute(builder: (context) => SignUpScreen()));
//           },
//           child: const Text(
//             "Sign Up",
//             style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//           ),
//         )
//       ],
//     );
//   }

//   Widget forgetPassword(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       height: 35,
//       alignment: Alignment.bottomRight,
//       child: TextButton(
//         child: const Text(
//           "Forgot Password?",
//           style: TextStyle(color: Colors.white70),
//           textAlign: TextAlign.right,
//         ),
//         onPressed: () => Navigator.push(
//             context, MaterialPageRoute(builder: (context) => ResetPassword())),
//       ),
//     );
//   }
// }

// _siginErroHandler(String error_message) {
//   var pos = error_message.lastIndexOf(']') + 1;
//   Fluttertoast.showToast(
//       msg: error_message.toString().substring(pos),
//       toastLength: Toast.LENGTH_SHORT,
//       timeInSecForIosWeb: 5,
//       backgroundColor: Colors.white,
//       textColor: Colors.red,
//       gravity: ToastGravity.TOP);
// }
