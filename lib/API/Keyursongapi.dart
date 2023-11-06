// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
// class KeyurProject extends StatefulWidget {
//   const KeyurProject({super.key});
//
//   @override
//   State<KeyurProject> createState() => _KeyurProjectState();
// }
//
// class _KeyurProjectState extends State<KeyurProject> {
//  var musicdata;
//
//   void getMovies() async {
//     print('2');
//
//     var url = Uri.parse('https://dev.omsakthimusic.com/api/');
//
//     print('3');
//
//     final data = await http.get(url,
//     headers:{
//       //headers kya??
//     });
//
//     if (data.statusCode == 200) {
//       var listdata = await jsonDecode(data.body);
//       print("data = $listdata");
//       setState(() {
//         musicdata = listdata;
//       });
//       return musicdata;
//     }
//   }
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//
//     print('1');
//     getMovies();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Download Movies'),
//       ),
//       body: musicdata == null
//           ? Center(child: CircularProgressIndicator())
//           : PageView.builder(
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(musicdata),
//                   subtitle: Text('Hello 1'),
//                   // leading: Image.network('${apimovies].toString()}',fit: BoxFit.contain,),
//                   trailing:
//                       IconButton(onPressed: () {}, icon: Icon(Icons.download)),
//                 );
//               },
//               // itemCount: apimovies['results'].toString().length,// have aapde je main karvanni hati e api levi
//                       ),
//     );
//   }
// }