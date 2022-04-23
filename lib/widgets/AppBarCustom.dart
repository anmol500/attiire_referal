import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class AppBarCustom extends StatefulWidget {
  AppBarCustom(this.title, this.changeView, this.isRange);
  final title;
  Function changeView;
  final isRange;

  @override
  _AppBarCustomState createState() => _AppBarCustomState();
}

class _AppBarCustomState extends State<AppBarCustom> {
  bool showProgress = false;
  var start;
  var end;
  var st;
  var et;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: [
            Colors.lightGreen,
            Colors.lightGreen.shade800,
          ],
        )),

        //Upper row app bar//////////////////////////////////

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.isRange
                    ? 'Orders From   ${Jiffy(st).format("MMM do yyyy")}  -  ${Jiffy(et).format("MMM do yyyy")} '
                    : widget.title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.green.shade800),
                    ),
                    child: Text("Today's Order"),
                    onPressed: () {
                      widget.changeView(4, 1, 1);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.green.shade700),
                    ),
                    child: Text(""
                        "last Week's Order"),
                    onPressed: () {
                      widget.changeView(5, 1, 1);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.green.shade600),
                      ),
                      child: Text("Select Date"),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                backgroundColor: Colors.white,
                                actions: <Widget>[
                                  Container(
                                    height: 30,
                                    child: MaterialButton(
                                      color: Colors.green,
                                      child: Text(
                                        'Set',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      onPressed: () {
                                        widget.changeView(6, start, end);
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ),
                                  TextButton(
                                    child: Text('Cancel'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                                content: Container(
                                  height: 300,
                                  width: 300,
                                  child: SfDateRangePicker(
                                    startRangeSelectionColor:
                                        Colors.green.shade400,
                                    endRangeSelectionColor:
                                        Colors.green.shade400,
                                    rangeSelectionColor:
                                        Colors.lightGreen.shade100,
                                    initialSelectedDate: DateTime.now(),
                                    selectionMode:
                                        DateRangePickerSelectionMode.range,
                                    onSelectionChanged: (value) {
                                      st = value.value.startDate;
                                      et = value.value.endDate;
                                      start = value.value.startDate;
                                      end = Jiffy(value.value.endDate)
                                          .add(days: 1)
                                          .startOf(Units.DAY)
                                          .dateTime;
                                    },
                                  ),
                                ),
                              );
                            });
                      }),
                ),
              ],
            ),
          ],
        ));
  }
}
