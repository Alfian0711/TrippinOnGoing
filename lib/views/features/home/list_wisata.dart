import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Container(
              color: Color.fromRGBO(249, 251, 245, 1),
              height: 130,
              width: MediaQuery.sizeOf(context).width,
              padding: EdgeInsets.all(10),
              child: Center(
                child: Container(
                  child: Row(
                    children: [
                      Image(image: AssetImage('assets/images/wisata/img(9).png'),),
                      SizedBox(width: 20,),
                      Column(
                        children: [
                          // Text list
                          Text(
                            'Pantai Kuta',
                              style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            'Denpasar, Bali IDR 10.000',
                              style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 12,),

            Container(
              color: Color.fromRGBO(249, 251, 245, 1),
              height: 130,
              width: MediaQuery.sizeOf(context).width,
              padding: EdgeInsets.all(10),
              child: Center(
                child: Container(
                  child: Row(
                    children: [
                      Image(image: AssetImage('assets/images/wisata/img(6).png'),),
                      SizedBox(width: 20,),
                      Column(
                        children: [
                          // Text list
                          Text(
                            'Pantai Kuta',
                              style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            'Denpasar, Bali IDR 10.000',
                              style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 12,),

            Container(
              color: Color.fromRGBO(249, 251, 245, 1),
              height: 130,
              width: MediaQuery.sizeOf(context).width,
              padding: EdgeInsets.all(10),
              child: Center(
                child: Container(
                  child: Row(
                    children: [
                      Image(image: AssetImage('assets/images/wisata/img(10).png'),),
                      SizedBox(width: 20,),
                      Column(
                        children: [
                          // Text list
                          Text(
                            'Pantai Kuta',
                              style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            'Denpasar, Bali IDR 10.000',
                              style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 12,),

            Container(
              color: Color.fromRGBO(249, 251, 245, 1),
              height: 130,
              width: MediaQuery.sizeOf(context).width,
              padding: EdgeInsets.all(10),
              child: Center(
                child: Container(
                  child: Row(
                    children: [
                      Image(image: AssetImage('assets/images/wisata/img(8).png'),),
                      SizedBox(width: 20,),
                      Column(
                        children: [
                          // Text list
                          Text(
                            'Pantai Kuta',
                              style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            'Denpasar, Bali IDR 10.000',
                              style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 12,),

            Container(
              color: Color.fromRGBO(249, 251, 245, 1),
              height: 130,
              width: MediaQuery.sizeOf(context).width,
              padding: EdgeInsets.all(10),
              child: Center(
                child: Container(
                  child: Row(
                    children: [
                      Image(image: AssetImage('assets/images/wisata/img.png'),),
                      SizedBox(width: 20,),
                      Column(
                        children: [
                          // Text list
                          Text(
                            'Pantai Kuta',
                              style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            'Denpasar, Bali IDR 10.000',
                              style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 12,),

            Container(
              color: Color.fromRGBO(249, 251, 245, 1),
              height: 130,
              width: MediaQuery.sizeOf(context).width,
              padding: EdgeInsets.all(10),
              child: Center(
                child: Container(
                  child: Row(
                    children: [
                      Image(image: AssetImage('assets/images/wisata/img (5).png'),),
                      SizedBox(width: 20,),
                      Column(
                        children: [
                          // Text list
                          Text(
                            'Pantai Kuta',
                              style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            'Denpasar, Bali IDR 10.000',
                              style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}