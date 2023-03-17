
import 'package:flutter/material.dart';
import 'package:music_app_ui/screens/foryou.dart';


class Favourite extends StatelessWidget {
  const Favourite({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(  
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
            const Text("Favourite ",style: TextStyle(fontSize: 25,color: Colors.white),),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:15.0),
              child: ListTile(
                onTap: () {
                 Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) => const ForYou()));
                },
              
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Text("Song1",style:TextStyle(color: Colors.white),),
                  ],
                ),
                trailing: Padding(
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
                          child: Text('Remove from favourite'),
                          
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
            ),
           Padding(
              padding: const EdgeInsets.symmetric(vertical:15.0),
              child: ListTile(
                onTap: () {
                 Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) => const ForYou()));
                },
                
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Song2",style:TextStyle(color: Colors.white),),
                  ],
                ),
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
                          child: Text('Remove from favourite'),
                          
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
        ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:15.0),
              child: ListTile(
                onTap: () {
                 Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) => const ForYou()));
                },
        
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Song3",style:TextStyle(color: Colors.white),),
                  ],
                ),
                trailing: Padding(
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
                          child: Text('Remove from favourite'),
                          
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
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: ListTile(
                onTap: () {
                 Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) => const ForYou()));
                },
               
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Song4",style:TextStyle(color: Colors.white),),
                  ],
                ),
                trailing: Padding(
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
                          child: Text('Remove from favourite'),
                          
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
            ),
            
          ],
          ),
        ),
      ),
      );
  }
}
