import 'package:attiire_referral/Pages/ListOfUser.dart';
import 'package:attiire_referral/database/database.dart';
import 'package:flutter/material.dart';

class RightColumn extends StatefulWidget {
  const RightColumn({required this.database});
  final AppDb database;

  @override
  _RightColumnState createState() => _RightColumnState();
}

class _RightColumnState extends State<RightColumn> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
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
                            'Order ID',
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
                            'Phone No.',
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
                      Expanded(
                          flex: 2,
                          child: Text(
                            'Total Commission',
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
                        stream: widget.database.getOrderpByDateDesc().watch(),
                        builder: (BuildContext context,
                            AsyncSnapshot<List<OrderpData>> snapshot) {
                          if (snapshot.data == null) {
                            return Container();
                          }
                          List<OrderpData>? order = snapshot.data;

                          return ListView.builder(
                            physics: ScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: order!.length,
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
                                          order[index].orderId.toString(),
                                          style: userInfoTextStyle(),
                                        )),
                                    Expanded(
                                        flex: 2,
                                        child: Text(
                                            order[index].name.toString(),
                                            style: userInfoTextStyle())),
                                    Expanded(
                                        flex: 2,
                                        child: Text(
                                          order[index].phone.toString(),
                                          style: userInfoTextStyle(),
                                        )),
                                    Expanded(
                                        flex: 2,
                                        child: Text(
                                          "${order[index].date!.year.toString()}-${order[index].date!.month.toString().padLeft(2, '0')}-${order[index].date!.day.toString().padLeft(2, '0')}",
                                          style: userInfoTextStyle(),
                                        )),
                                    Expanded(
                                        flex: 2,
                                        child: Text(
                                          "${order[index].date!.hour.toString().padLeft(2, '0')}:${order[index].date!.minute.toString().padLeft(2, '0')}",
                                          style: userInfoTextStyle(),
                                        )),
                                    Expanded(
                                        flex: 2,
                                        child: Text(
                                          order[index].amt.toString(),
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.green.shade800),
                                        )),
                                    Expanded(
                                        flex: 2,
                                        child: Text(
                                          order[index].com.toString(),
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.green.shade800),
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
    );
  }
}
