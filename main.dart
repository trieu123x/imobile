import 'dart:math';

import 'package:flutter/material.dart';
import 'build_container.dart';

void main() {
  runApp(const MainApp());
}

final List<Map<String, dynamic>> subj = [
  {
    "time": "07:00",
    "amPm": "AM",
    "task": "CTDL & GT",
  },
  {
    "time": "09:00",
    "amPm": "AM",
    "task": "Lí thuyết thông tin",
  },
  {
    "time": "13:00",
    "amPm": "PM",
    "task": "Tư tưởng HCM",
  },
  {
    "time": "15:00",
    "amPm": "PM",
    "task": "Toán rời rạc 2",
  },
];

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  Widget buildBox({String time ='9:00',String til = 'Congandanhdan', String desc = "desc"}){
    return Container(
      padding: EdgeInsets.all(16),
      width: 380,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start ,

            children: [
              Text(
                time,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),
              Text(
                'AM',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                )
              )
            ],
          ),
          SizedBox(
            width: 30,
          ),
          Container(
            width: 10,
            height: 80,
            color: Color.fromRGBO(Random().nextInt(256), Random().nextInt(256), Random().nextInt(256), 1),

          ),
          SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                til,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                desc,
              )
            ],
          )
        ],

      ),
    );
  }
  late int ran = 1;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> events = [
      {
        "time": "07:00",
        "session": "AM",
        "title": "CTDL & GT",
        "description": "Nguyễn Duy Phương",
      },
      {
        "time": "09:00",
        "session": "AM",
        "title": "Lí thuyết thông tin",
        "description": "Phạm Văn Sự",
      },
      {
        "time": "13:00",
        "session": "PM",
        "title": "Tư tưởng HCM",
        "description": "Phạm Thị Khánh",
      },
      {
        "time": "15:00",
        "session": "PM",
        "title": "Toán rời rạc 2",
        "description": "Nguyễn Tất Thắng",
      },
    ];
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Text("Đây là tiêu đề",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),),
            centerTitle: true,
            leading: Text("day la leading"),
          ),
          body: Center(
            child: Column(
              children: [
                SizedBox(
                  width: 100,
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: [
                        SizedBox(width: 20,),
                        BuildContainer(day: '2',thu: 'mon'),
                        SizedBox(width: 20,),
                        BuildContainer(day: '3',thu: 'ba'),
                        SizedBox(width: 20,),
                        BuildContainer(day: '4',thu: 'tue'),
                        SizedBox(width: 20,),
                        BuildContainer(day: '5',thu: 'fri'),
                        SizedBox(width: 20,),
                        BuildContainer(day: '5',thu: 'fri'),
                        SizedBox(width: 20,),
                        BuildContainer(day: '5',thu: 'fri'),
                      ]
                  ),
                ),
                SizedBox(
                  height: 600,
                  child: ListView.separated(itemBuilder: (context,index){
                    return buildBox(
                      time: events[ran]["time"],
                      til: events[ran]["title"],
                      desc: events[ran]["description"]
                    );
                  },
                    itemCount: 1,
                    separatorBuilder: (context, index){
                    return Container(
                      color:  Colors.grey,
                      height: 2,
                      width: double.infinity,
                    );
                    },
                  ),
                )
              ],
            )

          ),
          floatingActionButton: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(100),
            ),
            child: InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: ()=>{
                setState(() {
                  ran = Random().nextInt(events.length);
                }),
              },
              child: Icon(Icons.refresh),
            ),
          ),
        ),
      ),
    );
  }
}

