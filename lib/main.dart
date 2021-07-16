import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}


class Home extends StatefulWidget {
  final String title;
  const Home({Key key,this.title}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override

  TextEditingController htt = TextEditingController();
  TextEditingController wtt = TextEditingController();
  String res;
  double a=0.0,b=0.0;

  void BMI(double h,double w)
  {
    double bmii = w/(h*h/10000);
    String hq = bmii.toStringAsFixed(2);
    setState(() {
      res = hq;
    });
  }



  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body : SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height:40.0),
              Row(
                children: [
                  SizedBox(width : 100.0),
                  Image.asset('images/BMIc.png',height:250.0,width:200.0),
                ],
              ),
              SizedBox(height : 20.0),
              Text('ENTER YOUR HEIGHT ',
                style: TextStyle(color: Colors.amber,fontSize: 30.0,fontWeight: FontWeight.bold),),
              SizedBox(height : 10.0),
              TextField(
                keyboardType: TextInputType.number,
                controller: htt,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText:'Enter your height in cms..',
                  filled: true,
                  fillColor: Colors.grey,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(155.0),
                    borderSide: BorderSide.none,
                  ),
                  ),
                ),
              SizedBox(height : 40.0),
              Text('ENTER YOUR WEIGHT ',
                style: TextStyle(color: Colors.amber,fontSize: 30.0,fontWeight: FontWeight.bold),),
              SizedBox(height:10.0),
              TextField(
                keyboardType: TextInputType.number,
                controller : wtt,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText:'Enter your weight in kgs..',
                  filled: true,
                  fillColor: Colors.grey,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(155.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              FlatButton(onPressed: () {
                a=double.parse(htt.value.text);
                b=double.parse(wtt.value.text);
                BMI(a,b);
              } , child: Text(('CALCULATE')),color: Colors.grey),
              SizedBox(height : 50.0),
              Row(
                children: [
                  SizedBox(width : 20.0),
                  Text('YOUR BMI IS : ',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.amber,
                  ),),
                  Text((a==0.0 || b==0.0)?'  ':' $res',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0,
                    color: Colors.greenAccent,
                  ),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

