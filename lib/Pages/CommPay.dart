import 'package:attiire_referral/database/database.dart';
import 'package:flutter/material.dart';
import 'ListOfUser.dart';

class ComBrDnP extends StatefulWidget {
  ComBrDnP({required this.database, required this.changeView});
  final AppDb database;
  Function changeView;

  @override
  _ComBrDnPState createState() => _ComBrDnPState();
}

class _ComBrDnPState extends State<ComBrDnP> {
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
                                  'Phone No.',
                                  style: userInfoHeaderTextStyle(),
                                )),
                            Expanded(
                                flex: 2,
                                child: Text(
                                  'Payable Commission',
                                  style: userInfoHeaderTextStyle(),
                                )),
                            Expanded(
                                flex: 2,
                                child: Text(
                                  'Pay',
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
                          stream: widget.database.getUsersByHighCom().watch(),
                          builder:
                              (context, AsyncSnapshot<List<User>> snapshot) {
                            List<User>? user =
                                snapshot.data == null ? [] : snapshot.data;
                            return ListView.builder(
                              physics: ScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: user!.length,
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
                                              "${user[index].customerId}",
                                              style: userInfoTextStyle())),
                                      Expanded(
                                          flex: 2,
                                          child: Text(
                                            user[index].name.toString(),
                                            style: userInfoTextStyle(),
                                          )),
                                      Expanded(
                                          flex: 2,
                                          child: Text(
                                            user[index].phoneNo.toString(),
                                            style: userInfoTextStyle(),
                                          )),
                                      Expanded(
                                          flex: 2,
                                          child: Text(
                                            user[index].com!.toStringAsFixed(2),
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.green.shade800),
                                          )),
                                      Expanded(
                                        flex: 2,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 130),
                                          child: ElevatedButton(
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                          Color>(
                                                      Colors.green.shade600),
                                            ),
                                            child: Text(""
                                                "Pay"),
                                            onPressed: () {
                                              widget.database.insertUserById(
                                                  0, user[index].customerId);

                                              if (user[index].com != 0) {
                                                widget.database.insertPaidCom(
                                                    user[index].customerId,
                                                    user[index].name,
                                                    user[index].com,
                                                    DateTime.now());
                                              }
                                            },
                                          ),
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
