import 'package:flutter/material.dart';
import 'package:music_app_ui/screens/foryou.dart';
import 'package:music_app_ui/screens/playlist.dart';
import 'package:music_app_ui/screens/settings.dart';


class HomeScreen extends StatefulWidget {
  HomeScreen({super.key,});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 13, 65, 108),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Music Pot",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: Color.fromARGB(255, 70, 166, 214)),
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => const playlist()));
                        },
                        icon: const Icon(
                          Icons.playlist_add,
                          size: 40,
                          color:Colors.white
                        )),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => const Settings()));
                        },
                        icon: const Icon(
                          Icons.settings,
                          color: Colors.white,
                        ))
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 10, left: 12),
            child: Text(
              "All Songs",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
         Expanded(
           child: ListView.builder(
            controller: ScrollController(keepScrollOffset: true),
            shrinkWrap: true,
            itemBuilder: (context, index) => ListTile(
            onTap: () {
               Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) => const ForYou()));
            },
              leading:const Icon(Icons.music_note,color: Colors.white,) ,
              title:  Text("Music_No $index",style: const TextStyle(color: Colors.white),),
              subtitle:const Text("Artist Name\tDuration",style: TextStyle(color: Colors.white),) ,
              trailing: 
              Padding(
                padding: EdgeInsets.only(right: 10.0),
                child:PopupMenuButton(
                  itemBuilder:(context)=>[
                    PopupMenuItem(
                      child: Row(
                      children: const [
                        Icon(
                          Icons.favorite_border),
                        Padding(
                          padding: EdgeInsets.only(left:10),
                          child: Text('Add favourite'),
                          
                        ),
                      ],
                    )
                    ),
                    PopupMenuItem(
                      child: Row(
                      children: const [
                        Icon(
                          Icons.playlist_add),
                        Padding(
                          padding: EdgeInsets.only(left:10),
                          child: Text('Add playlist'),
                        ),
                      ],
                    )
                    ),
                  ],
                  child:Icon(
                    Icons.more_horiz,color: Colors.white,),
              ),
              ),
            ),
            itemCount: 100,),
         ),
        ],
      ),
    );
  }

}