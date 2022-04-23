import 'package:attiire_referral/database/database.dart';
import 'package:flutter/material.dart';

import 'ListOfUser.dart';

class Tree extends StatefulWidget {
  const Tree({required this.database});
  final AppDb database;

  @override
  _TreeState createState() => _TreeState();
}

class _TreeState extends State<Tree> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Text(
                    'ID',
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
                    'Phone No.',
                    style: userInfoHeaderTextStyle(),
                  )),
              Expanded(
                  flex: 1,
                  child: Text(
                    'ref1',
                    style: userInfoHeaderTextStyle(),
                  )),
              Expanded(
                  flex: 1,
                  child: Text(
                    'ref2',
                    style: userInfoHeaderTextStyle(),
                  )),
              Expanded(
                  flex: 1,
                  child: Text(
                    'ref3',
                    style: userInfoHeaderTextStyle(),
                  )),
              Expanded(
                  flex: 1,
                  child: Text(
                    'ref4',
                    style: userInfoHeaderTextStyle(),
                  )),
              Expanded(
                  flex: 1,
                  child: Text(
                    'ref5',
                    style: userInfoHeaderTextStyle(),
                  )),
              Divider(
                height: 2,
                thickness: 5,
              )
            ],
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                StreamBuilder(
                  stream: widget.database.getUserByDate().watch(),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Text(
                                    user[index].customerId.toString(),
                                    style: userInfoTextStyle(),
                                  )),
                              Expanded(
                                  flex: 2,
                                  child: Text(user[index].name.toString(),
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
                                    user[index].phoneNo.toString(),
                                    style: userInfoTextStyle(),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: user[index].refId1 == null
                                      ? Text(
                                          "-",
                                          style: userInfoTextStyle(),
                                        )
                                      : Text(
                                          user[index].refId1.toString(),
                                          style: userInfoTextStyle(),
                                        )),
                              Expanded(
                                  flex: 1,
                                  child: user[index].refId2 == null
                                      ? Text(
                                          "-",
                                          style: userInfoTextStyle(),
                                        )
                                      : Text(
                                          user[index].refId2.toString(),
                                          style: userInfoTextStyle(),
                                        )),
                              Expanded(
                                  flex: 1,
                                  child: user[index].refId3 == null
                                      ? Text(
                                          "-",
                                          style: userInfoTextStyle(),
                                        )
                                      : Text(
                                          user[index].refId3.toString(),
                                          style: userInfoTextStyle(),
                                        )),
                              Expanded(
                                  flex: 1,
                                  child: user[index].refId4 == null
                                      ? Text(
                                          "-",
                                          style: userInfoTextStyle(),
                                        )
                                      : Text(
                                          user[index].refId4.toString(),
                                          style: userInfoTextStyle(),
                                        )),
                              Expanded(
                                  flex: 1,
                                  child: user[index].refId5 == null
                                      ? Text(
                                          "-",
                                          style: userInfoTextStyle(),
                                        )
                                      : Text(
                                          user[index].refId5.toString(),
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
    );
  }
}
