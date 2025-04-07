import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  Widget buildBox({
    String name = 'name',
    double tu = 1,
    double mau = 1,
    Color color = Colors.green,
  }) {
    return SizedBox(
      width: 110,
      height: 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Container(width: tu / mau * 110, height: 4, color: color),
              Container(
                width: 110 - tu / mau * 110,
                height: 4,
                color: Color(0xffdcdcdc),
              ),
            ],
          ),
          Text(
            '${tu.toStringAsFixed(0)}/${mau.toStringAsFixed(0)}g',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 80,
            title: Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Color(0xffd1d1d1), width: 2),
                  ),
                  child: ClipRRect(
                    clipBehavior: Clip.antiAlias,
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'asset/avatars-6CkzcHmzyH2x6Sd5-nhcPdg-t1080x1080.jpg',

                    ),
                  ),
                ),
                Spacer(),
                Text(
                  "Gai xinh",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Color(0xffd1d1d1), width: 2),
                  ),
                  child: IconButton(
                    onPressed: () => {},
                    icon: Icon(Icons.share),
                  ),
                ),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 170,
                    width: 350,
                    child: ListView(
                      children: [Image.asset('asset/avatars-6CkzcHmzyH2x6Sd5-nhcPdg-t1080x1080.jpg',width: double.infinity, fit: BoxFit.cover,)],
                    ),
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    height: 170,
                    width: 350,
                    child: ListView(
                      children: [Image.asset('asset/avatars-6CkzcHmzyH2x6Sd5-nhcPdg-t1080x1080.jpg',width: double.infinity, fit: BoxFit.cover,)],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 350,
                        width: 170,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Image.asset('asset/avatars-6CkzcHmzyH2x6Sd5-nhcPdg-t1080x1080.jpg',fit: BoxFit.cover,height: 350,),
                        ),
                      ),
                      SizedBox(width: 10,),
                      SizedBox(
                        height: 350,
                        width: 170,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Image.asset('asset/avatars-6CkzcHmzyH2x6Sd5-nhcPdg-t1080x1080.jpg',fit: BoxFit.cover,height: 350,),
                        ),

                      )
                    ],
                  ),
                  SizedBox(height: 15,),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        height: 200,
                        width: 350,
                        child: ListView(
                          children: [Image.asset('asset/avatars-6CkzcHmzyH2x6Sd5-nhcPdg-t1080x1080.jpg',width: double.infinity, fit: BoxFit.cover,)],
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100)
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 170,
                        width: 170,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Image.asset('asset/avatars-6CkzcHmzyH2x6Sd5-nhcPdg-t1080x1080.jpg',height: 350,width: 350, fit: BoxFit.cover,),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      SizedBox(
                        height: 170,
                        width: 170,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Image.asset('asset/avatars-6CkzcHmzyH2x6Sd5-nhcPdg-t1080x1080.jpg',height: 350,width: 350, fit: BoxFit.cover,),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 170,
                        width: 170,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Image.asset('asset/avatars-6CkzcHmzyH2x6Sd5-nhcPdg-t1080x1080.jpg',height: 350,width: 350, fit: BoxFit.cover,),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      SizedBox(
                        height: 170,
                        width: 170,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Image.asset('asset/avatars-6CkzcHmzyH2x6Sd5-nhcPdg-t1080x1080.jpg',height: 350,width: 350, fit: BoxFit.cover,),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),

          )
        ),
      ),
    );
  }
}
