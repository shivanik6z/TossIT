import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import './route2.dart';
final myController = TextEditingController();

class home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.bellotaTextTheme(
          Theme.of(context).textTheme,
        )
      ),

      debugShowCheckedModeBanner: false,
      title: 'Coin Tosser',
      home: Material(
        child: Center(
          child: Container(
            alignment: Alignment.center,
            color: Color(0xff222831),
            child: Column(
          children: <Widget>[
           Container(
             margin: EdgeInsets.only(left: 50.0,top:50.0,right: 50.0,bottom: 10.0),
           child:Text( "Welcome to Coin Tosser!",
              textAlign: TextAlign.center,
              style: GoogleFonts.bellota(
                  textStyle: TextStyle(
                      //fontStyle: FontStyle.italic,
                      fontSize: 30,
                      color: Colors.white
                  )
              ),

          )),
          Container(
              margin: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
              child:Text( "Leave it all on a Coin Flip;)",
              textAlign: TextAlign.center,
              style: GoogleFonts.bellota(
                  textStyle: TextStyle(
                      //fontStyle: FontStyle.italic,
                      fontSize: 30,
                      color: Colors.white
                  )
              ),

          )),
            Container(
                margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                child:Text( "What decision is bothering you?",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.bellota(
                        textStyle: TextStyle(
                            //fontStyle: FontStyle.italic,
                            fontSize: 25,
                            color: Colors.white
                        )
                    )
                )),

            Container(
              margin: EdgeInsets.fromLTRB(10.0,10.0,10.0,10.0),
              child:TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white
                          ),
                          borderRadius: BorderRadius.circular(10.0)
                      ),
                      disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black
                          ),
                          borderRadius: BorderRadius.circular(10.0)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.yellow.shade400
                          ),
                          borderRadius: BorderRadius.circular(10.0)
                      ),
                      hintText: "ex- Should I wear black or red today",
                      hintStyle: TextStyle(
                          color: Colors.white70,
                          fontStyle: FontStyle.italic,
                          fontSize: 15.0

                      )

                  ),
                onSubmitted: (String string){
                    //null
                },
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10.0,10.0,10.0,10.0),
              child:TextField(
                controller: myController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white
                  ),
                  borderRadius: BorderRadius.circular(10.0)
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black
                  ),
                  borderRadius: BorderRadius.circular(10.0)
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.yellow
                  ),
                  borderRadius: BorderRadius.circular(10.0)
                ),
                hintText: "Type for heads, ex-Wear red!",
                hintStyle: TextStyle(
                  color: Colors.white70,
                      fontStyle: FontStyle.italic

                  )

                )
              ),
            ),

            //for tales text field
            Container(
              margin: EdgeInsets.all(10.0),
              child:TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white
                        ),
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.greenAccent
                        ),
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.yellow
                        ),
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    hintText: "Type for tails, ex- Wear blue!",
                    hintStyle: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white70,
                       // fontStyle: FontStyle.italic

                    )

                )
            ),
            ),
            //for submit button
            RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/second');
              },

              child: Text('Toss it!',
                style: TextStyle(
                    fontSize: 25,
                    color: Color(0xff00fff5)),
              ),
              color: Color(0xff00adb5),
              elevation: 10,
              highlightElevation: 20,
              padding: EdgeInsets.fromLTRB(20, 10,20,10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),

              ) ,
            )


        ],
        )
          ),
        ),
        color: Colors.lightBlueAccent,
    )
    );
  }
}
//class EnteredData extends home{

//  //@override
//  void dispose()
//  {
//    myController.dispose();
//    super.dispose();
//  }
//}
//Text('Hello Universe!',
//style: GoogleFonts.bellota(
//textStyle: TextStyle(
//color: Colors.white,
//fontSize: 30,
//fontStyle: FontStyle.italic,
//fontWeight: FontWeight.w700
//)
//),
//)