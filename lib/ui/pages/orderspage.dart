import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OdersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xFF0E0E0E),
      statusBarBrightness: Brightness.dark,
    ));
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          "Orders",
          style: TextStyle(color: Color(0XFF174757), fontSize: 30),
        ),
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 10),
                Text(
                  "LAST ORDERS",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 20),
                order(),
                order(),
                order(),
                order(),
                order(),
                order(),
                order(),
                order(),
                order(),
                order(),
                order(),
                order(),
              ],
            ),
          )),
    );
  }

  Widget order() {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 70,
              child: Image.asset("assets/icons/ride.png"),
            ),
            Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  "Ride",
                  style: TextStyle(
                    color: Color(0XFF174757),
                    fontSize: 20,
                  ),
                ),
                Text(
                  "27/11/2019,1:0PM",
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  "Cash",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            )),
            Container(
                child: Row(
              children: <Widget>[
                Column(children: [
                  Text(
                    "550",
                    style: TextStyle(
                      color: Color(0XFF174757),
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "KES",
                    style: TextStyle(color: Colors.grey),
                  ),
                ]),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                  color: Colors.grey,
                )
              ],
            ))
          ]),
    );
  }
}
