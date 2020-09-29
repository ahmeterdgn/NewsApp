import 'package:flutter/material.dart';
import 'package:newsapp/constant/themes.dart';
import 'package:newsapp/lang/tr.dart';
import 'package:newsapp/model/stepModel.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  List<StepModel> list = StepModel.list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _appbar(),
          _body(),
          _indicator(),
        ],
      ),
    );
  }

  _appbar() {
    return Container(
      margin: EdgeInsets.only(
        top: 2,
      ),
      padding: EdgeInsets.all(
        12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
              color: Colors.grey[200],
            ),
            child:
                IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {}),
          ),
          FlatButton(
            onPressed: () {},
            child: Text(
              intoSkip,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }

  _body() {
    return Expanded(
      child: PageView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.asset('assets/image/into1.png'),
              Text(list[index].text),
            ],
          );
        },
      ),
    );
  }

  _indicator() {
    return Container(
      width: 90,
      height: 90,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 80,
              height: 80,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(mainColor),
                value: 0.25,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                  ),
                ),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
