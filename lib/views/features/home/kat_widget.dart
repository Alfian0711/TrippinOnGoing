import 'package:flutter/material.dart';

class Kategori extends StatelessWidget {
  const Kategori({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: EdgeInsets.only(top: 13,left: 10,right: 10),
            width: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Color.fromRGBO(187, 232, 194, 1),
            ),
             child: Center(
              child: TextButton(
                onPressed: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context) => Regist()));
                },
                child: 
                Container(
                  child: Row(
                    children: [
                      ImageIcon(
                        AssetImage('assets/icon/beach.png'),
                        size: 30,
                        color:Colors.white,
                      ),
                      SizedBox(width: 10,),
                      Text(
                        'Pantai',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 13,left: 10,right: 10),
            width: 120,
            height: 7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Color.fromRGBO(187, 232, 194, 1),
            ),
            child: Center(
              child:TextButton(
                  onPressed: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => Regist()));
                  },
                child: 
                Container(
                  padding: EdgeInsets.all(7),
                  child: Row(
                    children: [
                      ImageIcon(
                        AssetImage('assets/icon/forest2.png'),
                        size: 30,
                        color:Colors.white,
                      ),
                      SizedBox(width: 10,),
                      Text(
                        'Hutan',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 13,left: 10,right: 10),
            width: 120,
            height: 7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Color.fromRGBO(187, 232, 194, 1),
            ),
             child: Center(
              child: TextButton(
                onPressed: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context) => Regist()));
                },
                child: 
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      ImageIcon(
                        AssetImage('assets/icon/hill2.png'),
                        size: 30,
                        color:Colors.white,
                      ),
                      SizedBox(width: 10,),
                      Text(
                        'Bukit',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ), 
              ),
            ),
          ),

        ],
      ),
    );
  }
}