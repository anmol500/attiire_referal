import 'package:attiire_referral/database/database.dart';
import 'package:flutter/material.dart';

import 'ListOfUser.dart';

class PaidComm extends StatefulWidget {
  PaidComm({required this.database, required this.changeView});
  final AppDb database;
  Function changeView;

  @override
  _PaidCommState createState() => _PaidCommState();
}

class _PaidCommState extends State<PaidComm> {
  aa() async {
    List<PaidComData> l = await widget.database.getPaidCom().get();
    l[0].customerId;
  }

  @override
  Widget build(BuildContext context) {
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
                        height: 44,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Text(
                                  'Sr No.',
                                  style: userInfoHeaderTextStyle(),
                                )),
                            Expanded(
                                flex: 2,
                                child: Text(
                                  'Referral ID',
                                  style: userInfoHeaderTextStyle(),
                                )),
                            Expanded(
                                flex: 2,
                                child: Text(
                                  'Referral Name',
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
                                  'Paid Commission',
                                  style: userInfoHeaderTextStyle(),
                                )),
                            Expanded(
                                flex: 2,
                                child: Text(
                                  'Status',
                                  textAlign: TextAlign.center,
                                  style: userInfoHeaderTextStyle(),
                                )),
                            Divider(
                              height: 2,
                              thickness: 5,
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: StreamBuilder(
                          stream: widget.database.getPaidCom().watch(),
                          builder: (context,
                              AsyncSnapshot<List<PaidComData>> snapshot) {
                            List<PaidComData>? userP =
                                snapshot.data == null ? [] : snapshot.data;
                            return ListView.builder(
                              physics: ScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: userP!.length,
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
                                          child: Text(
                                            userP[index].id.toString(),
                                            style: userInfoTextStyle(),
                                          )),
                                      Expanded(
                                          flex: 2,
                                          child: Text(
                                              "${userP[index].customerId}",
                                              style: userInfoTextStyle())),
                                      Expanded(
                                          flex: 2,
                                          child: Text(
                                            userP[index].name.toString(),
                                            style: userInfoTextStyle(),
                                          )),
                                      Expanded(
                                          flex: 2,
                                          child: Text(
                                            "${userP[index].date!.year.toString()}-${userP[index].date!.month.toString().padLeft(2, '0')}-${userP[index].date!.day.toString().padLeft(2, '0')}",
                                            style: userInfoTextStyle(),
                                          )),
                                      Expanded(
                                          flex: 2,
                                          child: Text(
                                            "${userP[index].date!.hour.toString().padLeft(2, '0')}:${userP[index].date!.minute.toString().padLeft(2, '0')}",
                                            style: userInfoTextStyle(),
                                          )),
                                      Expanded(
                                          flex: 2,
                                          child: Text(
                                            userP[index]
                                                .amt!
                                                .toStringAsFixed(2),
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.green.shade800),
                                          )),
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          "Paid",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.green.shade600),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
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
