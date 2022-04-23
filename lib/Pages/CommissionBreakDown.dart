import 'package:attiire_referral/database/database.dart';
import 'package:flutter/material.dart';

import 'ListOfUser.dart';

class ComBrDn extends StatefulWidget {
  ComBrDn({required this.database});
  final AppDb database;

  @override
  _ComBrDnState createState() => _ComBrDnState();
}

class _ComBrDnState extends State<ComBrDn> {
  var user = [];

  getcomTuser() async {
    if (user.isEmpty) {
      user = await widget.database.getComT().get();

      setState(() {});
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    getcomTuser();
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                flex: 8,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 4,
                                child: Text(
                                  'Commission From',
                                  style: userInfoHeaderTextStyle(),
                                )),
                            Expanded(
                                flex: 4,
                                child: Text(
                                  'Earned By',
                                  style: userInfoHeaderTextStyle(),
                                )),
                            Expanded(
                                flex: 2,
                                child: Text(
                                  'Date',
                                  style: userInfoHeaderTextStyle(),
                                )),
                            Expanded(
                                flex: 2,
                                child: Text(
                                  'Time',
                                  style: userInfoHeaderTextStyle(),
                                )),
                            Expanded(
                                flex: 2,
                                child: Text(
                                  'Amount',
                                  style: userInfoHeaderTextStyle(),
                                )),
                            Divider(
                              height: 2,
                              thickness: 5,
                            )
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.green.shade900,
                        thickness: 0.5,
                      ),
                      SizedBox(
                        height: 33,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Text(
                                  "Customer ID",
                                  style: userInfoHeader2TextStyle(),
                                )),
                            Expanded(
                                flex: 2,
                                child: Text(
                                  "Customer Name",
                                  style: userInfoHeader2TextStyle(),
                                )),
                            Expanded(
                                flex: 2,
                                child: Text(
                                  "Referral ID",
                                  style: userInfoHeader2TextStyle(),
                                )),
                            Expanded(
                                flex: 2,
                                child: Text(
                                  "Referral Name",
                                  style: userInfoHeader2TextStyle(),
                                )),
                            Expanded(
                                flex: 2,
                                child: Text(
                                  'YYYY-MM-DD',
                                  style: userInfoHeader2TextStyle(),
                                )),
                            Expanded(
                                flex: 2,
                                child: Text(
                                  'IST',
                                  style: userInfoHeader2TextStyle(),
                                )),
                            Expanded(
                                flex: 2,
                                child: Text(
                                  'In Rupees',
                                  style: userInfoHeader2TextStyle(),
                                )),
                            Divider(
                              height: 2,
                              thickness: 5,
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          physics: ScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: user.length,
                          itemBuilder: (context, index) => Column(
                            children: [
                              Divider(
                                thickness: 1,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                      flex: 2,
                                      child: Text("${user[index].comF}",
                                          style: userInfoTextStyle())),
                                  Expanded(
                                      flex: 2,
                                      child: Text(
                                          user[index].comFName.toString(),
                                          style: userInfoTextStyle())),
                                  Expanded(
                                      flex: 2,
                                      child: Text(
                                        "${user[index].comE.toString()}",
                                        style: userInfoTextStyle(),
                                      )),
                                  Expanded(
                                      flex: 2,
                                      child: Text(
                                        user[index].comEName.toString(),
                                        style: userInfoTextStyle(),
                                      )),
                                  Expanded(
                                      flex: 2,
                                      child: Text(
                                        "${user[index].date!.year.toString()}-${user[index].date!.month.toString().padLeft(2, '0')}-${user[index].date!.day.toString().padLeft(2, '0')}",
                                        style: userInfoTextStyle(),
                                      )),
                                  Expanded(
                                      flex: 2,
                                      child: Text(
                                        "${user[index].date!.hour.toString().padLeft(2, '0')}:${user[index].date!.minute.toString().padLeft(2, '0')}",
                                        style: userInfoTextStyle(),
                                      )),
                                  Expanded(
                                      flex: 2,
                                      child: Text(
                                        user[index].commA!.toStringAsFixed(2),
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.green.shade800),
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
