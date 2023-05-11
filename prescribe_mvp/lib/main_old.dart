// // Copyright 2022 The Prescribe team. All rights reserved.
// // Use of this source code is governed by a Prescribe license that can be
// // found in the LICENSE file.

// //import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';
// import 'package:prescribe_mvp/screens/signin_screen.dart';
// import 'package:firebase_core/firebase_core.dart';

// import 'package:prescribe_mvp/services/elasticsearch.dart';


// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'Prescribe Health',
//       home: const SignInScreen(),
//     );
//   }
// }

// /* 
//  Not using this block
// */
// class RandomWords extends StatefulWidget {
//   const RandomWords({super.key});

//   @override
//   State<RandomWords> createState() => _RandomWordsState();
// }

// class _RandomWordsState extends State<RandomWords> {
//   final _suggestions = <WordPair>[];
//   final _saved = <WordPair>{};
//   final _biggerFont = const TextStyle(fontSize: 18);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Prescribe Health'),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.list),
//             onPressed: _pushSaved,
//             tooltip: 'Saved Suggestions',
//           ),
//           IconButton(onPressed: _showSearch, icon: Icon(Icons.search))
//         ],
//       ),
//       body: ListView.builder(
//         padding: const EdgeInsets.all(16.0),
//         itemBuilder: /*1*/ (context, i) {
//           if (i.isOdd) return const Divider(); /*2*/

//           final index = i ~/ 2; /*3*/
//           if (index >= _suggestions.length) {
//             _suggestions.addAll(generateWordPairs().take(10)); /*4*/
//           }
//           final alreadySaved = _saved.contains(_suggestions[index]);
//           return ListTile(
//             title: Text(
//               _suggestions[index].asPascalCase,
//               style: _biggerFont,
//             ),
//             trailing: Icon(
//               alreadySaved ? Icons.favorite : Icons.favorite_border,
//               color: alreadySaved ? Colors.purple : null,
//               semanticLabel: alreadySaved ? 'Remove from saved' : 'Save',
//             ),
//             onTap: () {
//               setState(() {
//                 if (alreadySaved) {
//                   _saved.remove(_suggestions[index]);
//                 } else {
//                   _saved.add(_suggestions[index]);
//                 }
//               });
//             },
//           );
//         },
//       ),
//     );
//   }

//   void _pushSaved() {
//     Navigator.of(context).push(
//       MaterialPageRoute<void>(
//         builder: (context) {
//           final tiles = _saved.map(
//             (pair) {
//               return ListTile(
//                 title: Text(
//                   pair.asPascalCase,
//                   style: _biggerFont,
//                 ),
//               );
//             },
//           );
//           final divided = tiles.isNotEmpty
//               ? ListTile.divideTiles(
//                   context: context,
//                   tiles: tiles,
//                 ).toList()
//               : <Widget>[];

//           return Scaffold(
//             appBar: AppBar(
//               title: const Text('Saved Suggestions'),
//             ),
//             body: ListView(children: divided),
//           );
//         },
//       ),
//     );
//   }

// Future<void> _showSearch() async {
//     await showSearch(
//       context: context,
//       delegate: ElasticSearchDelegate(),
//       query: "",
//     );
//   }

// }
