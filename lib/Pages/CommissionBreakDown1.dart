import 'package:attiire_referral/database/database.dart';
import 'package:flutter/material.dart';

class ComBrDn1 extends StatefulWidget {
  ComBrDn1({required this.database});
  final AppDb database;

  @override
  _ComBrDn1State createState() => _ComBrDn1State();
}

class _ComBrDn1State extends State<ComBrDn1> {
  var user = [];

  getcomTuser() async {
    if (user.isEmpty) {
      user = await widget.database.getComTjoinUsers().get();
      setState(() {});
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    getcomTuser();
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      ListView.builder(
                        physics: ScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: user.length,
                        itemBuilder: (context, index) => Column(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              color: Colors.green,
                              elevation: 4,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  ListTile(
                                    leading: Icon(Icons.attach_money_outlined,
                                        size: 70),
                                    title: Text('Customer',
                                        style: TextStyle(color: Colors.white)),
                                    subtitle: Text(user[index].name.toString(),
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 25)),
                                  ),
                                  ButtonTheme(
                                    child: ButtonBar(
                                      children: <Widget>[
                                        FlatButton(
                                          child: const Text('Edit',
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          onPressed: () {},
                                        ),
                                        FlatButton(
                                          child: const Text('Delete',
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          onPressed: () {},
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
