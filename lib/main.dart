import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  var MyArrays = [
    {
      "img":
      "https://biteable.com/wp-content/uploads/2018/01/The-34-best-sites-for-free-images-and-pictures.png",
      "title": "Mahmud"
    },
    {
      "img":
      "https://biteable.com/wp-content/uploads/2018/01/The-34-best-sites-for-free-images-and-pictures.png",
      "title": "RAINY"
    },
    {
      "img":
      "https://biteable.com/wp-content/uploads/2018/01/The-34-best-sites-for-free-images-and-pictures.png",
      "title": "RAKIB"
    },
    {
      "img":
      "https://biteable.com/wp-content/uploads/2018/01/The-34-best-sites-for-free-images-and-pictures.png",
      "title": "Masud"
    },
    {
      "img":
      "https://biteable.com/wp-content/uploads/2018/01/The-34-best-sites-for-free-images-and-pictures.png",
      "title": "Noman"
    },
    {
      "img":
      "https://biteable.com/wp-content/uploads/2018/01/The-34-best-sites-for-free-images-and-pictures.png",
      "title": "Miraz"
    },
    {
      "img":
      "https://biteable.com/wp-content/uploads/2018/01/The-34-best-sites-for-free-images-and-pictures.png",
      "title": "Rasel"
    }
  ];

  /*MyAlert(){
   return showDialog(context: context, builder: (BuildContext context)
   {
     return Expanded(child: AlertDialog(
       title: Text("Alert"),
       content: Text(widget.MyArrays[index]['title']!),
     ));
   }
   );
 }*/
  MySncakbar(context, message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  } //sncakbar

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "ListView",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            backgroundColor: Colors.orangeAccent,
          ),
          body: ListView.builder(
            itemCount: widget.MyArrays.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  widget.MySncakbar(context, widget.MyArrays[index]["title"]);
                },
                child: Container(
                  width: double.infinity,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  child: Image.network(
                    widget.MyArrays[index]['img']!,
                    fit: BoxFit.fill,
                  ),
                ),
              );
            },
          ),
        ));
  }
}
