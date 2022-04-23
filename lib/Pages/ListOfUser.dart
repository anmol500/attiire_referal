import 'package:attiire_referral/database/database.dart';
import 'package:flutter/material.dart';

class ListOfUser extends StatelessWidget {
  ListOfUser({required this.database});
  final AppDb database;
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
                                flex: 1,
                                child: Text(
                                  'Customer ID',
                                  style: userInfoHeaderTextStyle(),
                                )),
                            Expanded(
                                flex: 2,
                                child: Text(
                                  'Name',
                                  style: userInfoHeaderTextStyle(),
                                )),
                            Expanded(
                                flex: 2,
                                child: Text(
                                  'Joining Date',
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
                                  'Phone No.',
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
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            StreamBuilder(
                              stream: database.getUserByDate().watch(),
                              builder: (BuildContext context,
                                  AsyncSnapshot<List<User>> snapshot) {
                                if (snapshot.data == null) {
                                  return Container();
                                }
                                List<User>? user = snapshot.data;

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
                                              flex: 1,
                                              child: Text(
                                                user[index]
                                                    .customerId
                                                    .toString(),
                                                style: userInfoTextStyle(),
                                              )),
                                          Expanded(
                                              flex: 2,
                                              child: Text(
                                                  user[index].name.toString(),
                                                  style: userInfoTextStyle())),
                                          Expanded(
                                              flex: 2,
                                              child: Text(
                                                "${user[index].joiningDate!.year.toString()}-${user[index].joiningDate!.month.toString().padLeft(2, '0')}-${user[index].joiningDate!.day.toString().padLeft(2, '0')}",
                                                style: userInfoTextStyle(),
                                              )),
                                          Expanded(
                                              flex: 2,
                                              child: Text(
                                                "${user[index].joiningDate!.hour.toString().padLeft(2, '0')}:${user[index].joiningDate!.minute.toString().padLeft(2, '0')}",
                                                style: userInfoTextStyle(),
                                              )),
                                          Expanded(
                                              flex: 2,
                                              child: Text(
                                                user[index].phoneNo.toString(),
                                                style: userInfoTextStyle(),
                                              )),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ],
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

TextStyle userInfoTextStyle() => TextStyle(fontSize: 16, fontFamily: '');
TextStyle userInfoHeaderTextStyle() => TextStyle(
    fontSize: 17,
    fontFamily: 'au',
    fontWeight: FontWeight.w800,
    color: Colors.green.shade900);

TextStyle userInfoHeader2TextStyle() => TextStyle(
    fontSize: 16, fontWeight: FontWeight.w700, color: Colors.green.shade800);
