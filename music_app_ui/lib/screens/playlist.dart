import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class playlist extends StatelessWidget {
  const playlist({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 8, 83, 144),
        body: Padding(
          padding: EdgeInsets.all(13.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                    "PlayList",
                    style: TextStyle(fontSize: 24,color: Color.fromARGB(255, 232, 223, 223)),
                  ),
                  Expanded
                  (
                    child: Align(alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Add PlayList',style: TextStyle(fontSize: 25),),
                        PopupMenuButton(itemBuilder: (context)=>[
                          PopupMenuItem(child: Row(
                            children: const [
                              Icon(Icons.edit),
                              Padding(padding:EdgeInsets.only(left: 10),
                              child: Text('Edit'),
                              )
                            ],
                          ),
                          ),
                           PopupMenuItem(
                      child: Row(
                      children: const [
                        Icon(
                          Icons.favorite_border),
                        Padding(
                          padding: EdgeInsets.only(left:10),
                          child: Text('Add Favourite'),
                        ),
                      ],
                    )
                    ),
                        ],
                        child:Icon(
                    Icons.playlist_add,size: 35,),
                        ),
                      ]
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