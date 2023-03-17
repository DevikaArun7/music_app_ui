import 'package:flutter/material.dart';

class ForYou extends StatefulWidget {
   const ForYou({super.key});

  @override
  State<ForYou> createState() => _ForYouState();
}

class _ForYouState extends State<ForYou> {
  int fav = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 66, 117),
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children:[ Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  const Text("For You",style: TextStyle(fontSize: 23,color:Colors.white),),
                   IconButton(
                    onPressed: (){
                      setState(() {
                        fav = fav + 1;
                      });
                    }, 
                    icon: (fav % 2 == 0)
                    ? const Icon(Icons.favorite_border,size: 30,)
                    : const Icon(Icons.favorite,size: 30,)
                  )
                ],
              ),
            
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
Center(
    child:Column(
	children:[
		const CircleAvatar(
			radius:100.0,
			child:Icon(
			Icons.music_note,
			size:80.0,

),
),
    const SizedBox(
  height: 60.0,
),
    const Text(
      "Song Name",
    overflow: TextOverflow.clip,
     maxLines: 1,
     style: TextStyle(
      fontWeight:FontWeight.bold ,
      fontSize: 30.0,
    ),
    ),
    const SizedBox(
      height: 10.0,
    ),
    const Text("Artist Name",overflow: TextOverflow.fade,maxLines: 1,style: TextStyle(
      fontWeight:FontWeight.bold ,
      fontSize: 20.0,
    ),
    ),
    const SizedBox(
      height: 30.0,
    ),

    Row(
      children: [
        const Text("0.0"),
        Expanded(
          child: Slider(value: 0.0, onChanged: (value){})),
        const Text("0.0"),
      ],
    ),
   
     Row(
      mainAxisAlignment:MainAxisAlignment.spaceAround ,
      children: [
        IconButton(onPressed:(){}, icon:const Icon(Icons.skip_previous,size: 40.0,),),
        IconButton(onPressed:(){}, icon:const Icon(Icons.pause,size: 40.0,color:Colors.orangeAccent ,),),
        IconButton(onPressed:(){}, icon:const Icon(Icons.skip_next,size: 40.0,),),
      ],
    ),
],
),
),
                  
                ],
              ),
            )
          ]
          ),
      ),
      );
  }
}