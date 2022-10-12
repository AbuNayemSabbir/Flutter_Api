import 'package:flutter/material.dart';

import 'homePage.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.orange,brightness: Brightness.dark),
      home: Scaffold(

        body: SafeArea(


          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                margin: EdgeInsets.all(12),
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,

                  children:  const [

                    SizedBox(

                      height: 150,
                      child: Icon(Icons.cabin,size: 52,),
                    ),
                    Text("Email:"),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter your Email',
                      ),
                    ),
                    Text("Password:",),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter your Password',
                      ),
                    ),
                  ],
                ),

              ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:  [
                    SizedBox(height: 150),
                    ElevatedButton(

                      onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomePage())),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.red),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.red)
                              )
                          ),
                          padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(50,5,50,5)),

                          textStyle: MaterialStateProperty.all(TextStyle(fontSize: 30))),
                      child: Text("LogIn",style: TextStyle(fontFamily: 'Eczar'),),)],

                )

              ]
            ),
          ),
        ),
      ),
    );
  }
}
