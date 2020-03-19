import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xFFf8783e),
      statusBarBrightness: Brightness.dark,
    ));
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            WhatDoYouNeedPart(),
            Wallet(),
            Announcements(),
          ],
        )),
      ),
    );
  }
}

class WhatDoYouNeedPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      child: Stack(
        children: <Widget>[
          Container(
            height: (MediaQuery.of(context).size.height / 3) * 0.85,
            color: Color(0xFFF9893E),
          ),
          Container(
            height: double.infinity,
            width: MediaQuery.of(context).size.width,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Text("What do you need?",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w800)),
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Row(children: <Widget>[
                        Expanded(
                          child: WhatDoYouNeedItem(
                            asset: "assets/icons/ride.png",
                            text: "Order Ride",
                          ),
                        ),
                        Expanded(
                          child: WhatDoYouNeedItem(
                            asset: "assets/icons/food.png",
                            text: "Food Delivery",
                          ),
                        ),
                        Expanded(
                          child: WhatDoYouNeedItem(
                            asset: "assets/icons/parcel.png",
                            text: "Deliver Package",
                          ),
                        )
                      ]))
                ]),
          ),
        ],
      ),
    );
  }
}

class WhatDoYouNeedItem extends StatelessWidget {
  final String asset;
  final String text;

  const WhatDoYouNeedItem({Key key, this.asset, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.only(left: 10, right: 10),
        child: Column(children: [
          Expanded(
              child: Container(
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Image.asset(
                asset,
                fit: BoxFit.scaleDown,
              ),
            ),
          )),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
            child: Text(
              text,
              style: TextStyle(
                color: Color(0XFF174757),
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ]),
      ),
    );
  }
}

// wallet
class Wallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 8, right: 8, top: 20),
      color: Colors.transparent,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          height: 120,
          // color: Color(0XFF174757),
          decoration: BoxDecoration(
            // color: Color(0XFF174757),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: <Widget>[
              Container(
                height: 40,
                padding: EdgeInsets.only(top: 8, bottom: 8, left: 4, right: 8),
                decoration: BoxDecoration(
                  color: Color(0XFF174757),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: <Widget>[
                          Image.asset("assets/icons/logo.png"),
                          SizedBox(width: 5),
                          Text("Wallet",
                              style: TextStyle(
                                color: Colors.white,
                              ))
                        ],
                      ),
                      Text("KES 30",
                          style: TextStyle(
                              color: Color(0xFF22c8a2),
                              fontWeight: FontWeight.w500))
                    ]),
              ),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    WalletItem(icon: "assets/icons/topup.png", name: "Top Up"),
                    WalletItem(
                      icon: "assets/icons/transactions.png",
                      name: "Transaction",
                    ),
                    WalletItem(
                      icon: "assets/icons/info.png",
                      name: "Info",
                    ),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}

class WalletItem extends StatelessWidget {
  final String icon;
  final String name;
  const WalletItem({Key key, this.icon, this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 30,
                child: Image.asset(icon),
              ),
              SizedBox(height: 10),
              Text(
                name,
                style: TextStyle(
                  color: Color(0xFFF9893E),
                ),
              )
            ]),
      ),
    );
  }
}
// wallet

class Announcements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      height: 250,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Card(
        elevation: 3,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(children: <Widget>[
          Container(
            height: 125,
            color: Colors.green,
            child: Image.asset(
              "assets/icons/covid.png",
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "SafeBoda - Ride. Deliver. SAFELY!",
                      style: TextStyle(
                          color: Color(0XFF174757),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Expanded(
                      child: Text(
                        "Keep things moving and stay safe during the COVID-19 Lockdown with SafeBoda",
                        style: TextStyle(color: Colors.grey, fontSize: 17),
                      ),
                    ),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(13, 4, 13, 4),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xFFEC9A44), width: 2.5),
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            "More",
                            style: TextStyle(color: Color(0xFFEC9A44)),
                          ),
                        ))
                  ]),
            ),
          )
        ]),
      ),
    );
  }
}
