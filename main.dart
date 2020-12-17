import 'package:flutter/material.dart';
import 'package:footballsimulator/screens/screen2.dart';
void main()=>runApp(Demo());
class Demo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return App();
  }

}

class App extends State<Demo>
{

  // ignore: missing_return
  var liked=List<bool>.filled(
      11,
      false,
      growable: false
      );


   _pressed(int i)
   {
     setState(() {
       liked[i]=!liked[i];
     });
   }


  @override
  Widget build(BuildContext context)
  {
    var clubs = Map();
    clubs[0]='Bayer Leverkusen';
    clubs[1]='Arminia Bielefeld';
    clubs[2]='Bayern Muenchen';
    clubs[3]='Borussia Dortmund';
    clubs[4]='Borussia Moenchalengladbach';
    clubs[5]='Eintracht Frankfurt';
    clubs[6]='FC Augsburg';
    clubs[7]='Freiburg';
    clubs[8]='Hertha BSC';
    clubs[9]='Hoffenheim';
    clubs[10]='Koeln';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
      body:CustomScrollView(
       slivers: [
         SliverAppBar(
           expandedHeight: 200.0,
           flexibleSpace: FlexibleSpaceBar(
             background: Image.network("https://wallpapercave.com/wp/wp1996349.jpg",fit: BoxFit.cover,),
             // titlePadding: EdgeInsets.only(top:20,left:38),
           ),
         ),
         SliverList(
             delegate: SliverChildListDelegate(
               [
                 Container(
                   color:Colors.white,
                   height: 80,
                   child: Center(
                     child:Container(
                     height: 50,
                     padding: EdgeInsets.all(10),
                       decoration:  BoxDecoration(
                         border:  Border.all(width: 0.2, color: Colors.black),
                         color: Colors.transparent,
                         borderRadius: BorderRadius.circular(10),
                         boxShadow: <BoxShadow>[
                           BoxShadow(color: Colors.grey[300], offset: Offset(1.5, .0), blurRadius: 2.0,),],
                       ),
                     child:Text("FootBall Simulator",style: TextStyle(decoration:TextDecoration.none,fontSize: 25,),
                     ),
                    )
                   )
                 ),
                Card(
                    child: Container(
                      height: 300,
                         decoration: BoxDecoration(
                           border: Border.all(width:0.5,color:Colors.black),
                           borderRadius: BorderRadius.circular(10)
                         ),
                         child:Column(
                              children:[
                                Container(
                                  height:230,
                                  decoration: BoxDecoration(
                                          image: DecorationImage(
                                          image: AssetImage("images/Bayer_Leverkusen.png",)
                                      )
                                  ),
                                ),
                                ListTile(
                                leading: CircleAvatar(
                                      child: Image(
                                    image: AssetImage("images/Bayer_Leverkusen.png"),
                                                  )),
                                  trailing: IconButton(
                                    icon:Icon(liked[0]?Icons.favorite:Icons.favorite_border),
                                    color:liked[0]?Colors.red:Colors.grey,
                                    onPressed: ()=>_pressed(0),
                                  ),
                                  title: Text("Bayer Leverkusen")
                                 ),
                                   ]
                            )
                           )
                          ),
                 Card(
                     child: Container(
                         height: 300,
                         decoration: BoxDecoration(
                             border: Border.all(width:0.5,color:Colors.black),
                             borderRadius: BorderRadius.circular(10)
                         ),
                         child:Column(
                             children:[
                               Container(
                                 height:230,
                                 decoration: BoxDecoration(
                                     image: DecorationImage(
                                         image: AssetImage("images/Arminia_Bielefeld.png",)
                                     )
                                 ),
                               ),
                               ListTile(
                                   leading: CircleAvatar(
                                       child: Image(
                                         image: AssetImage("images/Arminia_Bielefeld.png"),
                                       )),
                                   trailing: IconButton(
                                     icon:Icon(liked[1]?Icons.favorite:Icons.favorite_border),
                                     color:liked[1]?Colors.red:Colors.grey,
                                     onPressed: ()=>_pressed(1),
                                   ),
                                   title: Text("Arminia Bielefeld")
                               ),
                             ]
                         )
                     )
                 ),

                 Card(
                     child: Container(
                         height: 300,
                         decoration: BoxDecoration(
                             border: Border.all(width:0.5,color:Colors.black),
                             borderRadius: BorderRadius.circular(10)
                         ),
                         child:Column(
                             children:[
                               Container(
                                 height:230,
                                 decoration: BoxDecoration(
                                     image: DecorationImage(
                                         image: AssetImage("images/Bayern_Muenchen.png",)
                                     )
                                 ),
                               ),
                               ListTile(
                                   leading: CircleAvatar(
                                       child: Image(
                                         image: AssetImage("images/Bayern_Muenchen.png"),
                                       )),
                                   trailing: IconButton(
                                     icon:Icon(liked[2]?Icons.favorite:Icons.favorite_border),
                                     color:liked[2]?Colors.red:Colors.grey,
                                     onPressed: ()=>_pressed(2),
                                   ),
                                   title: Text("Bayern Muenchen")
                               ),
                             ]
                         )
                     )
                 ),
                 Card(
                     child: Container(
                         height: 300,
                         decoration: BoxDecoration(
                             border: Border.all(width:0.5,color:Colors.black),
                             borderRadius: BorderRadius.circular(10)
                         ),
                         child:Column(
                             children:[
                               Container(
                                 height:230,
                                 decoration: BoxDecoration(
                                     image: DecorationImage(
                                         image: AssetImage("images/Borussia_Dortmund.png",)
                                     )
                                 ),
                               ),
                               ListTile(
                                   leading: CircleAvatar(
                                       child: Image(
                                         image: AssetImage("images/Borussia_Dortmund.png"),
                                       )),
                                   trailing: IconButton(
                                     icon:Icon(liked[3]?Icons.favorite:Icons.favorite_border),
                                     color:liked[3]?Colors.red:Colors.grey,
                                     onPressed: ()=>_pressed(3),
                                   ),
                                   title: Text("Borussia Dortmund")
                               ),
                             ]
                         )
                     )
                 ),
                 Card(
                     child: Container(
                         height: 300,
                         decoration: BoxDecoration(
                             border: Border.all(width:0.5,color:Colors.black),
                             borderRadius: BorderRadius.circular(10)
                         ),
                         child:Column(
                             children:[
                               Container(
                                 height:230,
                                 decoration: BoxDecoration(
                                     image: DecorationImage(
                                         image: AssetImage("images/Borussia_Moenchalengladbach.png",)
                                     )
                                 ),
                               ),
                               ListTile(
                                   leading: CircleAvatar(
                                       child: Image(
                                         image: AssetImage("images/Borussia_Moenchalengladbach.png"),
                                       )),
                                   trailing: IconButton(
                                     icon:Icon(liked[4]?Icons.favorite:Icons.favorite_border),
                                     color:liked[4]?Colors.red:Colors.grey,
                                     onPressed: ()=>_pressed(4),
                                   ),
                                   title: Text("Borussia Moenchalengladbach")
                               ),
                             ]
                         )
                     )
                 ),
                 Card(
                     child: Container(
                         height: 300,
                         decoration: BoxDecoration(
                             border: Border.all(width:0.5,color:Colors.black),
                             borderRadius: BorderRadius.circular(10)
                         ),
                         child:Column(
                             children:[
                               Container(
                                 height:230,
                                 decoration: BoxDecoration(
                                     image: DecorationImage(
                                         image: AssetImage("images/Eintracht_Frankfurt..png",)
                                     )
                                 ),
                               ),
                               ListTile(
                                   leading: CircleAvatar(
                                       child: Image(
                                         image: AssetImage("images/Eintracht_Frankfurt..png"),
                                       )),
                                   trailing: IconButton(
                                     icon:Icon(liked[5]?Icons.favorite:Icons.favorite_border),
                                     color:liked[5]?Colors.red:Colors.grey,
                                     onPressed: ()=>_pressed(5),
                                   ),
                                   title: Text("Eintracht Frankfurt")
                               ),
                             ]
                         )
                     )
                 ),
                 Card(
                     child: Container(
                         height: 300,
                         decoration: BoxDecoration(
                             border: Border.all(width:0.5,color:Colors.black),
                             borderRadius: BorderRadius.circular(10)
                         ),
                         child:Column(
                             children:[
                               Container(
                                 height:230,
                                 decoration: BoxDecoration(
                                     image: DecorationImage(
                                         image: AssetImage("images/FC_Augsburg.jpg",)
                                     )
                                 ),
                               ),
                               ListTile(
                                   leading:
                                    Image(
                                         width:50,
                                         image: AssetImage("images/FC_Augsburg.jpg"),
                                       ),
                                   trailing: IconButton(
                                     icon:Icon(liked[6]?Icons.favorite:Icons.favorite_border),
                                     color:liked[6]?Colors.red:Colors.grey,
                                     onPressed: ()=>_pressed(6),
                                   ),
                                   title: Text("FC Augsburg")
                               ),
                             ]
                         )
                     )
                 ),
                 Card(
                     child: Container(
                         height: 300,
                         decoration: BoxDecoration(
                             border: Border.all(width:0.5,color:Colors.black),
                             borderRadius: BorderRadius.circular(10)
                         ),
                         child:Column(
                             children:[
                               Container(
                                 height:230,
                                 decoration: BoxDecoration(
                                     image: DecorationImage(
                                         image: AssetImage("images/Freiburg.png",)
                                     )
                                 ),
                               ),
                               ListTile(
                                   leading:
                                   Image(
                                     width:50,
                                     image: AssetImage("images/Freiburg.png"),
                                   ),
                                   trailing: IconButton(
                                     icon:Icon(liked[7]?Icons.favorite:Icons.favorite_border),
                                     color:liked[7]?Colors.red:Colors.grey,
                                     onPressed: ()=>_pressed(7),
                                   ),
                                   title: Text("Freiburg")
                               ),
                             ]
                         )
                     )
                 ),
                 Card(
                     child: Container(
                         height: 300,
                         decoration: BoxDecoration(
                             border: Border.all(width:0.5,color:Colors.black),
                             borderRadius: BorderRadius.circular(10)
                         ),
                         child:Column(
                             children:[
                               Container(
                                 height:230,
                                 decoration: BoxDecoration(
                                     image: DecorationImage(
                                         image: AssetImage("images/Hertha_BSC..jpg",)
                                     )
                                 ),
                               ),
                               ListTile(
                                   leading:
                                   Image(
                                     width:50,
                                     image: AssetImage("images/Hertha_BSC..jpg"),
                                   ),
                                   trailing: IconButton(
                                     icon:Icon(liked[8]?Icons.favorite:Icons.favorite_border),
                                     color:liked[8]?Colors.red:Colors.grey,
                                     onPressed: ()=>_pressed(8),
                                   ),
                                   title: Text("Hertha BSC")
                               ),
                             ]
                         )
                     )
                 ),
                 Card(
                     child: Container(
                         height: 300,
                         decoration: BoxDecoration(
                             border: Border.all(width:0.5,color:Colors.black),
                             borderRadius: BorderRadius.circular(10)
                         ),
                         child:Column(
                             children:[
                               Container(
                                 height:230,
                                 decoration: BoxDecoration(
                                     image: DecorationImage(
                                         image: AssetImage("images/Hoffenheim.png",)
                                     )
                                 ),
                               ),
                               ListTile(
                                   leading:
                                   Image(
                                     width:50,
                                     image: AssetImage("images/Hoffenheim.png"),
                                   ),
                                   trailing: IconButton(
                                     icon:Icon(liked[9]?Icons.favorite:Icons.favorite_border),
                                     color:liked[9]?Colors.red:Colors.grey,
                                     onPressed: ()=>_pressed(9),
                                   ),
                                   title: Text("Hoffenheim")
                               ),
                             ]
                         )
                     )
                 ),
                 Card(
                     child: Container(
                         height: 300,
                         decoration: BoxDecoration(
                             border: Border.all(width:0.5,color:Colors.black),
                             borderRadius: BorderRadius.circular(10)
                         ),
                         child:Column(
                             children:[
                               Container(
                                 height:230,
                                 decoration: BoxDecoration(
                                     image: DecorationImage(
                                         image: AssetImage("images/koeln.png",)
                                     )
                                 ),
                               ),
                               ListTile(
                                   leading:
                                   Image(
                                     width:50,
                                     image: AssetImage("images/koeln.png"),
                                   ),
                                   trailing: IconButton(
                                     icon:Icon(liked[10]?Icons.favorite:Icons.favorite_border),
                                     color:liked[10]?Colors.red:Colors.grey,
                                     onPressed: ()=>_pressed(10),
                                   ),
                                   title: Text("koeln")
                               ),
                             ]
                         )
                     )
                 ),

               ]
             )
         )
       ],
     ),
                                  bottomNavigationBar: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child:Builder(
                                      builder: (context) =>
                                      RaisedButton(
                                       onPressed: () {
                                      Navigator.push(context,
                                         MaterialPageRoute(builder: (context) => screen2(clubliked:liked,names:clubs)));
                                                       },
                                       color: Colors.blue,
                                       textColor: Colors.white,
                                       child: Text('Simulate'),))

                                  )

    )
    );
  }



}