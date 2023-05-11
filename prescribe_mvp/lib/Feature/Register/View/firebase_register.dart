// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// import 'registration_screen.dart';

// class RegistrationScreen extends StatefulWidget {
//   RegistrationScreen({required this.auth});

//   final FirebaseAuth auth;

//   @override
//   _RegistrationScreenState createState() => _RegistrationScreenState();
// }

// class _RegistrationScreenState extends State<RegistrationScreen> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   late String _email;
//   late String _password;
//   bool _loading = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Registration Screen'),
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Form(
//             key: _formKey,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 TextFormField(
//                   keyboardType: TextInputType.emailAddress,
//                   decoration: InputDecoration(
//                     labelText: 'Email',
//                     hintText: 'Enter your email',
//                     border: OutlineInputBorder(),
//                   ),
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return 'Email cannot be empty';
//                     }
//                     return null;
//                   },
//                   onSaved: (value) {
//                     _email = value!;
//                   },
//                 ),
//                 SizedBox(height: 16.0),
//                 TextFormField(
//                   obscureText: true,
//                   decoration: InputDecoration(
//                     labelText: 'Password',
//                     hintText: 'Enter your password',
//                     border: OutlineInputBorder(),
//                   ),
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return 'Password cannot be empty';
//                     }
//                     return null;
//                   },
//                   onSaved: (value) {
//                     _password = value!;
//                   },
//                 ),
//                 SizedBox(height: 16.0),
//                 ElevatedButton(
//                   child: _loading ? CircularProgressIndicator() : Text('Register'),
//                   onPressed: _loading ? null : _register,
//                 ),
//                 SizedBox(height: 16.0),
//                 TextButton(
//                   child: Text('Already have an account? Sign in'),
//                   onPressed: () {
//                     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen(auth: widget.auth)));
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

// void _register() async {
//   if (_formKey.currentState!.validate()) {
//     _formKey.currentState!.save();

//     setState(() {
//       _loading = true;
//     });

//     try {
//       UserCredential userCredential = await widget.auth.createUserWithEmailAndPassword(
//         email: _email,
//         password: _password,
//       );

//       setState(() {
//         _loading = false;
//       });

//       // Registration successful, navigate to the next screen
//       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
//     } on FirebaseAuthException catch (e) {
//       setState(() {
//         _loading = false;
//       });

//       if (e.code == 'weak-password') {
//         showDialog(
//           context: context,
//           builder: (BuildContext context) {
//             return AlertDialog(
//               title: Text('Registration Error'),
//               content: Text('The password provided is too weak.'),
//               actions: [
//                 TextButton(
//                   child: Text('OK'),
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                   },
//                 ),
//               ],
//             );
//           },
//         );
//       } else if (e.code == 'email-already-in-use') {
//         showDialog(
//           context: context,
//           builder: (BuildContext context) {
//             return AlertDialog(
//               title: Text('Registration Error'),
//               content: Text('The account already exists for that email.'),
//               actions: [
//                 TextButton(
//                   child: Text('OK'),
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                   },
//                 ),
//               ],
//             );
//           },
//         );
//       } else {
//         showDialog(
//           context: context,
//           builder: (BuildContext context) {
//             return AlertDialog(
//               title: Text('Registration Error'),
//               content: Text('An unknown error occurred.'),
//               actions: [
//                 TextButton(
//                   child: Text('OK'),
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                   },
//                 ),
//               ],
//             );
//           },
//         );
//       }
//     }
//   }
// }




// class LoginScreen extends StatefulWidget {
//   LoginScreen({required this.auth});

//   final FirebaseAuth auth;

//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   late String _email;
//   late String _password;
//   bool _loading = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Login Screen'),
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Form(
//             key: _formKey,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 TextFormField(
//                   keyboardType: TextInputType.emailAddress,
//                   decoration: InputDecoration(
//                     labelText: 'Email',
//                     hintText: 'Enter your email',
//                     border: OutlineInputBorder(),
//                   ),
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return 'Email cannot be empty';
//                     }
//                     return null;
//                   },
//                   onSaved: (value) {
//                     _email = value!;
//                   },
//                 ),
//                 SizedBox(height: 16.0),
//                 TextFormField(
//                   obscureText: true,
//                   decoration: InputDecoration(
//                     labelText: 'Password',
//                     hintText: 'Enter your password',
//                     border: OutlineInputBorder(),
//                   ),
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return 'Password cannot be empty';
//                     }
//                     return null;
//                   },
//                   onSaved: (value) {
//                     _password = value!;
//                   },
//                 ),
//                 SizedBox(height: 16.0),
//                 ElevatedButton(
//                   child: _loading ? CircularProgressIndicator() : Text('Login'),
//                   onPressed: _loading ? null : _login,
//                 ),
//                 SizedBox(height: 16.0),
//                 TextButton(
//                   child: Text('Don\'t have an account? Register'),
//                   onPressed: () {
//                     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RegistrationScreen(auth: widget.auth)));
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Future<void> _login() async {
//     final formState = _formKey.currentState;

//     if (formState!.validate()) {
//       formState.save();
//       setState(() {
//         _loading = true;
//       });

//       try {
//         await widget.auth.signInWithEmailAndPassword(email: _email, password: _password);
//       } catch (e) {
//         setState(() {
//           _loading = false;
//         });
//         print('Error: $e');
//         // Show a dialog with the error message
//         showDialog(
//           context: context,
//           builder: (BuildContext context) {
//             return AlertDialog(
//               title: Text('Error'),
//               content: Text(e.toString()),
//               actions: <Widget>[
//                 TextButton(
//                   child: Text('OK'),
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                   },
//                 ),
//               ],
//             );
//           },
//         );
//       }
//     }
//   }
// }
