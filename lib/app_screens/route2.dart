import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './home.dart';
import 'dart:math';
int result()
{
  Random random = Random();
  int dec = random.nextInt(2);
  return dec;
}
int h=0;
Widget decision()
{
  int res = result();
  if(res==0) {
    h = 1;
    return Image.asset('assets/images/head.png',
        height: 1150,
        width: 1150
    );
  }
  else {
    h=0;
    return Image.asset('assets/images/tail.png',
        height: 1150,
        width: 1150,
        fit: BoxFit.cover
    );
  }

}
Widget ourresult()
{
  if(h==1)
    return Text(
      "It's heads!",
      style: TextStyle(
        color: Colors.white,
        fontSize: 30
      ),
    );
  else
    return Text(
      "It's tails!",
      style: TextStyle(
          color: Colors.white,
          fontSize: 30
      ),
    );
}


class secondroute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.bellotaTextTheme(
          Theme.of(context).textTheme
        )
      ),
      debugShowCheckedModeBanner: false,
      home: Material(
        child: Center(
          child: Container(
            alignment: Alignment.center,
            color: Colors.lightBlueAccent,
            child: Column(
              children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 50.0,top:50.0,right: 50.0,bottom: 10.0),
                alignment: Alignment.center,
                child: Text(
                 "Let's make a good decision ;)",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
                Container(

                  margin: EdgeInsets.only(top:5),
                  height: 200,
                  width: 200,
                  child: decision(),
                ),
                Container(
                  child: ourresult(),
                  //to do text-its heads or its tails
                ),
                Container(
                  margin: EdgeInsets.only(top:10),
                  child: Text(
                    myController.text,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:20),
                child:RaisedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/second');
                  },

                  child: Text('Toss it again',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white),
                  ),
                  color: Colors.yellow,
                  elevation: 10,
                  highlightElevation: 20,
                  padding: EdgeInsets.fromLTRB(20, 10,20,10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),

                  ) ,
                )),
                Container(
                    margin: EdgeInsets.only(top:20),
                    child:RaisedButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/');
                      },

                      child: Text('Back to home',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white),
                      ),
                      color: Colors.yellow,
                      elevation: 10,
                      highlightElevation: 20,
                      padding: EdgeInsets.fromLTRB(20, 10,20,10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),

                      ) ,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

