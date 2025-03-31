
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
    Color color = Colors.green
  }) {
    return Container(
      width: 110,
      height: 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
          SizedBox(height: 12,),
          Row(
            children: [
              Container(
                width: tu/mau * 110,
                height: 4,
                color: color,
              ),
              Container(
                width: 110- tu/mau * 110,
                height: 4,
                color: Color(0xffdcdcdc),
              )
            ],
          ),
      Text(
        '${tu.toStringAsFixed(0)}/${mau.toStringAsFixed(0)}g',
        style: TextStyle(
          fontSize: 16,
        ),)
        ],
      ),
    );
  }
  Widget cont({
    String name = '',
    String cal ='',
    String pro = '',
    String fat = '',
    String car = '',
    String m = '',
  }){
    return Container(
      padding: EdgeInsets.all(15),
      width: double.infinity,
      height: 180,
      color: Color(0xffdfdfdf),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
              ), Spacer(),
              Icon(Icons.mode_edit_outlined)
            ],
          ),
          Row(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                spacing: 3,
                children: [
                  Text(cal, style: TextStyle(fontSize: 50)),
                  Text("kcal", style: TextStyle(fontSize: 20,color: Color(
                      0xff888888))),
                ],
              ), Spacer(),
              Text(m,style: TextStyle(fontSize: 20,color: Color(
                  0xff888888)))
            ],
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Protein",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                  Row(
                    children: [
                      Container(width: 16, height: 16, color: Colors.purpleAccent,),
                      SizedBox(width: 10,),
                      Text('${pro}g',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500))
                    ],
                  )
                ],
              ),Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Fat",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                  Row(
                    children: [
                      Container(width: 16, height: 16, color: Colors.orange,),
                      SizedBox(width: 10,),
                      Text('${fat}g',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500))
                    ],
                  )
                ],
              ),Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Carbs",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                  Row(
                    children: [
                      Container(width: 16, height: 16, color: Colors.black,),
                      SizedBox(width: 10,),
                      Text('${car}g',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500))
                    ],
                  )
                ],
              )
            ],
          )
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
                  child: IconButton(
                    onPressed: () => {},
                    icon: Icon(Icons.fast_rewind_outlined),
                  ),
                ),
                Spacer(),
                Text(
                  "Breakfast",
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
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 5,
                        children: [
                          Text(
                            "Breakfast",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text("Today", style: TextStyle(fontSize: 18)),
                        ],
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add_outlined, size: 50),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Divider(height: 2, thickness: 3),
                  Row(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        spacing: 3,
                        children: [
                          Text("432", style: TextStyle(fontSize: 65)),
                          Text("kcal", style: TextStyle(fontSize: 20)),
                        ],
                      ),Spacer(),
                      Container(
                          width: 90,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: Center(child: Text("Normal",style: TextStyle(fontSize: 17, color: Colors.white)),),
                        ),
                      
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      buildBox(name: 'Protein',tu: 13,mau: 80,color: Colors.purpleAccent),
                      Spacer(),
                      buildBox(name: 'Fat',tu: 20,mau: 60,color: Colors.orange),
                      Spacer(),
                      buildBox(name: 'Carbs',tu: 19,mau: 200,color: Colors.black),
                    ],
                  ),
                  SizedBox(height: 10,),
                  cont(name: 'Fried egg',cal: '378',pro: '12',fat: '17',car: '17',m: '100g'),
                  SizedBox(height: 8,),
                  cont(name: 'Fried egg',cal: '378',pro: '12',fat: '17',car: '17',m: '100g'),
                  SizedBox(height: 8,),
                  cont(name: 'Fried egg',cal: '378',pro: '12',fat: '17',car: '17',m: '100g'),
                  SizedBox(height: 8,),
                  cont(name: 'Fried egg',cal: '378',pro: '12',fat: '17',car: '17',m: '100g'),
                  SizedBox(height: 8,),
                  cont(name: 'Fried egg',cal: '378',pro: '12',fat: '17',car: '17',m: '100g'),
                  SizedBox(height: 8,),
                  cont(name: 'Fried egg',cal: '378',pro: '12',fat: '17',car: '17',m: '100g'),
                  SizedBox(height: 8,),
                  cont(name: 'Fried egg',cal: '378',pro: '12',fat: '17',car: '17',m: '100g'),
                  SizedBox(height: 8,),
                  cont(name: 'Fried egg',cal: '378',pro: '12',fat: '17',car: '17',m: '100g'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
