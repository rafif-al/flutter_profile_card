import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: Text('Rafif'),
            ),
            body: Column(
                children: <Widget>[
                    SizedBox(
                      child: Container(
                          child: Text(
                              'Nama',
                              style: TextStyle(
                                  color: Colors.amber,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  backgroundColor: Colors.redAccent,
                                  fontFamily: 'Poppins', //harus ada fontnya
                              ),
                          ),
                      ),
                    ),
                    Text(
                        'Al Fauzan',
                        style: TextStyle(
                            backgroundColor: Color.fromARGB(
                                200,
                                100,
                                100,
                                100,
                            )
                        ),
                    )
                ],
            ),
        ),
        debugShowCheckedModeBanner: false,
    );
  }
}