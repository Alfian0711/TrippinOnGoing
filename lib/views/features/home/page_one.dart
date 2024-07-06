import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_two/controllers/authUser.dart';
import 'package:project_two/views/features/home/kat_widget.dart';
import 'package:project_two/views/features/home/list_wisata.dart';

class Home extends StatelessWidget {
   Home({super.key,required this.credential});

  final UserCredential credential;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(187, 232, 194, 1),
        title: 
        Text(
          'Trippin',
            style: TextStyle(
              fontSize: 30,
              fontWeight:FontWeight.bold,
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(onPressed: () async {
              await Logout().signOut(
               context,
              );
            }, 
            icon: Icon(Icons.exit_to_app_rounded, color: Colors.white,),
            ),
          ],
      ),

      body: ListView(
          scrollDirection: Axis.vertical,
        children: [
          Container(
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
              children:<Widget> [
                Container(
                  color: Color.fromRGBO(187, 232, 194, 1),
                    height: 130,
                    width: MediaQuery.sizeOf(context).width,
                    padding: EdgeInsets.only(left: 10,right: 10),
                  child:Center(
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            child: CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage('assets/images/alfian.jpeg'),
                            ),
                          ),

                          Container(
                            padding:EdgeInsets.all(30),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [
                                Text(
                                  'Alfian Ramadhan',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight:FontWeight.bold,
                                  ),  
                                ),
                                Text(
                                '${credential.user!.email}',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black
                                ),
                              ),
                              Text(
                                'Jr.Developer',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  ),
                ),

                  Container(
                  color: Color.fromRGBO(187, 232, 194, 1),
                  padding: EdgeInsets.only(left: 10,bottom: 10),
                    alignment: Alignment.centerLeft,
                  child: Text(
                    'Where Do\nYou Want To Go?',           
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold
                      ),
                    ),
                  )
              ],
            ),
          ),

          // widget kategori

          Container(
            height: 80,
            child: Kategori(),
          ),
            
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 10,top: 10),
              child: Text(
                  'Mungkin Anda Sukai',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Colors.black
              ),
            ),
          ),
    
          //==== img listview horizontal ====

          Container(
            padding: EdgeInsets.all(3),
            margin: const EdgeInsets.symmetric(vertical: 10),
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 160,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      scale: 1.8,
                      image: AssetImage('assets/images/wisata/img.png'),
                    ),
                  ),
                  child: Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Bukit Paralayang',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                  ),
                ),
                Container(
                  width: 160,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      scale: 1.8,
                      image: AssetImage('assets/images/wisata/img (4).png'),
                    ),
                  ),
                ),
                Container(
                  width: 160,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      scale: 1.8,
                      image: AssetImage('assets/images/wisata/img.png'),
                    ),
                  ),
                ),
                Container(
                  width: 160,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      scale: 1.8,
                      image: AssetImage('assets/images/wisata/img (4).png'),
                    ),
                  ),
                ),
                Container(
                  width: 160,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      scale: 1.8,
                      image: AssetImage('assets/images/wisata/img (4).png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.all(10),
              child: Text(
                'Rating Tertinggi',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),

            // list view wisata vertikal

          Container(
            height: MediaQuery.sizeOf(context).height,
            child:
             ListPage(),
          ),
        ],
      ),

      // tab bar
       bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(249, 251, 245, 1),
          elevation: 0,
          iconSize: 33,
          showSelectedLabels: false,
          showUnselectedLabels: false,

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled, color: Colors.black,),
            label:'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_rounded, color: Colors.black,),
            label: 'Pin',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save_alt_rounded, color: Colors.black,),
            label: 'Category',
          ),
        ],
      ),
    );
  }
}