
import 'package:flutter/material.dart';

class BuildContainer extends StatefulWidget {
  final String day;
  final String thu;


  const BuildContainer({super.key, required this.day, required this.thu});

  @override
  State<BuildContainer> createState() => _BuildContainerState();
}

class _BuildContainerState extends State<BuildContainer> {
  late bool hasBorder;
  void initState(){
    super.initState();
    hasBorder = true;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 90,
      decoration: BoxDecoration(
        color: hasBorder ? null : Colors.green,
        borderRadius: BorderRadius.circular(20),
        border: hasBorder ? Border.all(color: Colors.grey, width: 2,) : null,
      ),
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: ()=>{
          setState(() {
            hasBorder = !hasBorder;
          }),
        },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                  widget.day,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,)
              ),
              Text(
                  widget.thu,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 26,
                  )
              )
            ],
          )
      ),
    );
  }
}