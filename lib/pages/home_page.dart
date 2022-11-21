import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String> _listItem = [
    'assets/images/images1.jpg',
    'assets/images/images2.jpg',
    'assets/images/images3.jpg',
    'assets/images/images4.jpg',
    'assets/images/images5.jpg',
    'assets/images/images6.jpg',
    'assets/images/images1.jpg',
    'assets/images/images2.jpg',
    'assets/images/images3.jpg',
    'assets/images/images4.jpg',
    'assets/images/images5.jpg',
    'assets/images/images6.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Center(child: Text('Apple shop')),
        leading: Icon(Icons.menu),
        actions: [
          Container(
            height: 30,
            width: 36,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey
            ),
            child: Center(child: Text('7'),),
          )
        ],
      ),

      body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  height: 240,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('assets/images/images4.jpg'),
                        fit: BoxFit.cover,
                      )
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors: [
                              Colors.black.withOpacity(.3),
                              Colors.black.withOpacity(.01),
                            ]
                        )
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Lifestyle sale', style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
                        SizedBox(height: 30,),
                        Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(child: Text('Shop Now', style: TextStyle(color: Colors.grey[900]),),),
                        ),
                        SizedBox(height: 30,)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    //crossAxisSpacing: 10,
                    //mainAxisSpacing: 10,
                    children:
                    _listItem.map((item) => cellOfList(item)).toList(),
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
  Widget cellOfList(String item) {
    return Card(
      elevation: 0,
      color: Colors.transparent,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(item),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(
              Icons.star_outline_sharp,
              color: Colors.yellowAccent,
              size: 35,
            ),
          ],
        ),
      ),
    );
  }
}