import 'package:flutter/material.dart';

class MyAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text("My account",
              style: TextStyle(
                  color: Color(0XFF174757),
                  fontSize: 27,
                  fontWeight: FontWeight.w800)),
          backgroundColor: Colors.white,
          elevation: 0.0),
      body: Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            UserCard(),
            SizedBox(
              height: 10,
            ),
            Card(
                elevation: 4,
                child: Column(
                  children: <Widget>[
                    UserProfileActions(
                      text: "Communications",
                      icon: Icon(Icons.mail_outline, color: Color(0xFFF9893E)),
                    ),
                    Divider(),
                    UserProfileActions(
                        text: "Payment Methods",
                        icon: Icon(Icons.payment, color: Color(0xFFF9893E))),
                    Divider(),
                    UserProfileActions(
                        text: "Help",
                        icon:
                            Icon(Icons.help_outline, color: Color(0xFFF9893E))),
                    Divider(),
                    UserProfileActions(
                        text: "About",
                        icon:
                            Icon(Icons.info_outline, color: Color(0xFFF9893E))),
                  ],
                )),
            LogoAndAppVersion()
          ],
        )),
      ),
    );
  }
}

class UserCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
          leading: Image.network(
            "https://lh3.googleusercontent.com/a-/AOh14GgsXPlxzxMpRcveYVgt9RekyhP-1k9im7p0DfHlVHA=s96-cc-rg",
            fit: BoxFit.fill,
          ),
          title: Text("Kelvin Kosgei",
              style: TextStyle(
                  color: Color(0XFF174757),
                  fontSize: 20,
                  fontWeight: FontWeight.w800)),
          subtitle: Text("+25470000000",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              )),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 15,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}

class UserProfileActions extends StatelessWidget {
  final Icon icon;
  final String text;
  const UserProfileActions({Key key, this.icon, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon == null ? Icon(Icons.error) : icon,
      title: Text(text),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 15,
        color: Colors.grey,
      ),
    );
  }
}

class LogoAndAppVersion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 35),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    height: 24,
                    child: Image.asset(
                      "assets/icons/logo.png",
                    )),
                SizedBox(width: 5),
                Text(
                  "SafeBoda",
                  style: TextStyle(
                      color: Color(0xFFF9893E),
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(height: 5),
            Text(
              "Version 3.3.11",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            )
          ]),
    );
  }
}
