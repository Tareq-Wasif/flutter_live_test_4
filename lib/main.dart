
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeSceen(),
    );
  }
}


class HomeSceen extends StatelessWidget{
  const HomeSceen({super.key});

  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News Feed"),
      ),
      body: OrientationBuilder(
        builder: (context, orientation){
          if(orientation == Orientation.portrait){
            return ListView.builder(
              itemCount: 10,
              itemBuilder: (context,index)=>Card(
                child:  Image.network("https://via.placeholder.com/150",
                    width:150,
                    height:150),
              )
            );
          } else{
            return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:2),
                itemBuilder:(context,index)=>Card(
                  child: Image.network("https://via.placeholder.com/150",
                    width: 150,
                    height: 150,
                  ),
                )
            );
          }
        },
      ),
    );
  }
}

