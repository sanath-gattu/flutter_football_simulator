import 'package:flutter/material.dart';
import 'package:footballsimulator/main.dart';
import 'dart:math';
class screen2 extends StatefulWidget {
  List clubliked;
  Map names;
  screen2({Key key,this.clubliked,this.names}):super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _screen2(clubliked,names);
  }

}
class _screen2 extends State<screen2>
{
  String msg="Select Atleast two teams";
  List clubliked;
  Map names;
  int clublikedcount=0;
  List<String> versusnames=[];
  Random r = new Random();
  _screen2(this.clubliked,this.names);

  @override
  Widget build(BuildContext context)
  {
    for(int i=0;i<11;i++)
      {
        if(clubliked[i]==true)
          {
            clublikedcount+=1;
            print(clublikedcount);
          }
      }

    if(clublikedcount>0) {
      if(clublikedcount==1)
        {
          versusnames.add(" ");
        }
      else {
        for (int i = 0; i < clubliked.length; i++) {
          for (int j = i + 1; j < clubliked.length; j++) {
            if (clubliked[i] && clubliked[j]) {
              
              versusnames.add(names[i] + "  VS  " + names[j]);
            }
          }
        }
      }
    }
    else
      {
        for (int i = 0; i < 11; i++)
          {
            for(int j=0;j<11;j++)
              {
                versusnames.add(names[i]+"  VS  "+names[j]);

              }
          }

      }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Scores"),
          centerTitle: true,
        ),
        body:ListView.builder(
          itemCount: versusnames.length,

            itemBuilder: (context,index){
            return Container(
               margin: EdgeInsets.all(10),
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0,color: Colors.black),
                  borderRadius: BorderRadius.circular(10)
                ),
                child:ListTile(
                title: Text(versusnames[index]),
                subtitle: Center(
                    child:Text(clublikedcount==1?
                        msg:
                        r.nextInt(5).toString()+"     -     " + r.nextInt(5).toString(),
                        style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900))
                ) ,
            )

            );

            }


      ),


      ),
    );

  }

}