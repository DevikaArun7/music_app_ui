import 'package:flutter/material.dart';


class Library extends StatelessWidget {
  const Library({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 20, 95, 156),
        appBar: AppBar(
          bottom:const TabBar(tabs: [
            Tab(text: 'Recently'),
            Tab(text: 'Mostly')
          ]) ,
          title: const Text('Library'),
          backgroundColor: const Color.fromARGB(255, 21, 78, 124),
        ),
      body: TabBarView
      (children:[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('No Recently played song',style: TextStyle(fontSize: 25,color: Color.fromARGB(255, 21, 15, 15)),),
            
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(child: Text('No Mostly played songs',style: TextStyle(fontSize:25,color:  Color.fromARGB(255, 23, 10, 10)),)),
           
          ],
        ),
      ],
      ),  
      ), 
    );
   
  }
}