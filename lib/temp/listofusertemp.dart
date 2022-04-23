import 'package:attiire_referral/database/database.dart';
import 'package:flutter/material.dart';

class ListOfUser extends StatelessWidget {
  ListOfUser({required this.database});
  final AppDb database;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_outlined,
                ),
              )
            ],
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.green, Colors.lightGreen])),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all<Size>(
                                  Size.fromHeight(50)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.add_outlined,
                                  color: Colors.green,
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  'Add New Customer',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            onPressed: () {},
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all<Size>(
                                  Size.fromHeight(50)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.add_outlined,
                                  color: Colors.green,
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  'All Customer List',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            onPressed: () {},
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all<Size>(
                                  Size.fromHeight(50)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.add_outlined,
                                  color: Colors.green,
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  'Commission BreakDown',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            onPressed: () {},
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 200,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Padding(
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
                                                    style:
                                                        userInfoTextStyle())),
                                            Expanded(
                                                flex: 2,
                                                child: Text(
                                                  "${user[index].joiningDate!.year.toString()}-${user[index].joiningDate!.month.toString().padLeft(2, '0')}-${user[index].joiningDate!.day.toString().padLeft(2, '0')}",
                                                  style: userInfoTextStyle(),
                                                )),
                                            Expanded(
                                                flex: 2,
                                                child: Text(
                                                  user[index]
                                                      .phoneNo
                                                      .toString(),
                                                  style: userInfoTextStyle(),
                                                )),
                                            Expanded(
                                                flex: 1,
                                                child: Text(
                                                  user[index].refId1.toString(),
                                                  style: userInfoTextStyle(),
                                                )),
                                            Expanded(
                                                flex: 1,
                                                child: Text(
                                                  user[index].refId2.toString(),
                                                  style: userInfoTextStyle(),
                                                )),
                                            Expanded(
                                                flex: 1,
                                                child: Text(
                                                  user[index].refId3.toString(),
                                                  style: userInfoTextStyle(),
                                                )),
                                            Expanded(
                                                flex: 1,
                                                child: Text(
                                                  user[index].refId4.toString(),
                                                  style: userInfoTextStyle(),
                                                )),
                                            Expanded(
                                                flex: 1,
                                                child: Text(
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
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TextStyle userInfoTextStyle() => TextStyle(fontSize: 16, fontFamily: '');
  TextStyle userInfoHeaderTextStyle() =>
      TextStyle(fontSize: 20, fontWeight: FontWeight.w500);
}
