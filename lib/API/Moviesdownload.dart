import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MoviesdownloadApi extends StatefulWidget {
  const MoviesdownloadApi({super.key});

  @override
  State<MoviesdownloadApi> createState() => _MoviesdownloadApiState();
}

class _MoviesdownloadApiState extends State<MoviesdownloadApi> {
  var apimovies;

  void getMovies() async {
    print('2');

    var url = Uri.parse('https://moviesdatabase.p.rapidapi.com/titles');

    print('3');

    final data = await http.get(url,
    headers:{
      'X-RapidAPI-Key': '9b18305f95msh7dd5c2b89ec3ecap1cbeb8jsnaa4358a96ceb',
      'X-RapidAPI-Host': 'moviesdatabase.p.rapidapi.com',
    });

    if (data.statusCode == 200) {
      var listdata = await jsonDecode(data.body);
      print("data = $listdata");
      setState(() {
        apimovies = listdata;
      });
      return apimovies;
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    print('1');
    getMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Download Movies'),
      ),
      body: apimovies == null
          ? Center(child: CircularProgressIndicator())
          : PageView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(apimovies['results'][index]['primaryImage']['caption']['plainText']),
                  subtitle: Text('Hello 1'),
                  // leading: Image.network('${apimovies].toString()}',fit: BoxFit.contain,),
                  trailing:
                      IconButton(onPressed: () {}, icon: Icon(Icons.download)),
                );
              },
              // itemCount: apimovies['results'].toString().length,// have aapde je main karvanni hati e api levi
                      ),
    );
  }
}
