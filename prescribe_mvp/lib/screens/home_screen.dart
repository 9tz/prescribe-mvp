// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:prescribe_mvp/screens/signin_screen.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:prescribe_mvp/services/elasticsearch.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Search"),
//         actions: [
//           IconButton(onPressed: _showSearch, icon: Icon(Icons.search))
//         ],
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: const Text("Logout"),
//           onPressed: () {
//             FirebaseAuth.instance.signOut().then((value) {
//               print("Signed Out");
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => SignInScreen()));
//             });
//           },
//         ),
//       ),
//     );
//   }

//   Future<void> _showSearch() async {
//     await showSearch(
//       context: context,
//       delegate: ElasticSearchDelegate(),
//       query: "",
//     );
//   }
// }
