import 'package:attiire_referral/database/database.dart';
import 'package:attiire_referral/widgets/SideButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Color ayurGreen = Color(0xff456a17);
TextEditingController orderPhoneController = TextEditingController();
TextEditingController amountController = TextEditingController();

AppDb? databasee;
bool validOrderPhoneField = false;
bool validOrderAmtField = false;

class LeftColumn extends StatefulWidget {
  LeftColumn({required this.database, required this.changeView}) {
    databasee = this.database;
  }
  final AppDb database;
  Function changeView;

  @override
  _LeftColumnState createState() => _LeftColumnState();
}

class _LeftColumnState extends State<LeftColumn> {
  TextEditingController ref_idController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  var btGat = 17.0;

  DateTime dateTime = DateTime.now();
  Color color = Colors.green;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: 0.6,
          child: ColorFiltered(
            colorFilter: ColorFilter.mode(Color(0xFFCBFF91), BlendMode.dstIn),
            child: Container(
              color: Colors.grey,
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Image.asset(
                            'assets/lg.png',
                            fit: BoxFit.fitWidth,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SideButtons(
                            onPress: () => addUserPOPUP(context),
                            color: Colors.green.shade900,
                            text: 'Add New Customer',
                            icon: Icons.add_outlined,
                          ),
                          SideButtons(
                            onPress: () => widget.changeView(1, 1, 1),
                            color: Colors.green.shade700,
                            text: 'All Orders',
                            icon: Icons.shopping_cart_outlined,
                          ),
                          SideButtons(
                            onPress: () => widget.changeView(2, 1, 1),
                            color: Colors.green.shade600,
                            text: 'All Customers',
                            icon: Icons.people_alt_outlined,
                          ),
                          SideButtons(
                            onPress: () => widget.changeView(3, 1, 1),
                            color: Colors.green.shade500,
                            text: 'Commission BreakDown',
                            icon: Icons.dynamic_form_outlined,
                          ),
                          SideButtons(
                            onPress: () => widget.changeView(9, 1, 1),
                            color: Colors.green.shade600,
                            text: 'Commission Tree',
                            icon: Icons.account_tree_outlined,
                          ),
                          SideButtons(
                            onPress: () => widget.changeView(7, 1, 1),
                            color: Colors.green.shade700,
                            text: 'Pay Commission',
                            icon: Icons.payments_outlined,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0),
                            child: SideButtons(
                              onPress: () => widget.changeView(8, 1, 1),
                              color: Colors.green.shade800,
                              text: 'Paid Commission',
                              icon: Icons.alarm_on_outlined,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.green.shade900,
                      thickness: 1,
                    ),
                    OrderPanel(),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  var validAddName = false;
  var validAddPhone = false;

  onAddUserEnter() {
    if (nameController.text == '' || phoneController.text == '') {
      if (nameController.text == '') {
        validAddName = true;
        print('emp name');
        setState(() {});
      }
      if (phoneController.text == '') {
        validAddPhone = true;
        print('emp no.');
        setState(() {});
      }
    } else if (nameController.text != '' && phoneController.text != '') {
      validAddName = false;
      validAddPhone = false;
      if (ref_idController.text == '') {
        ref_idController.text = '0';
        print('${nameController.text} and ${phoneController.text}');
        insertUser();

        setState(() {});
      } else {
        print('${nameController.text} and ${phoneController.text}');
        insertUser();

        setState(() {});
      }
    } else {
      validAddName = true;
      validAddPhone = true;
    }
  }

  Future<dynamic> addUserPOPUP(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) =>
                  Container(
                width: MediaQuery.of(context).size.width * 0.25,
                height: MediaQuery.of(context).size.height * 0.37,
                child: Center(
                  child: Form(
                    child: ListView(
                      children: <Widget>[
                        //NAME///
                        Padding(
                          padding: EdgeInsets.only(top: 8, left: 8, right: 8),
                          child: TextField(
                            onSubmitted: (v) {
                              onAddUserEnter();
                              setState(() {});
                            },
                            controller: nameController,
                            decoration: new InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              errorText:
                                  validAddName ? 'Please Add Name' : null,
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                    color: Colors.redAccent, width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide:
                                    BorderSide(color: Colors.green, width: 2),
                              ),
                              hintText: 'Name',
                              labelText: 'Customer Name',
                              prefixIcon: const Icon(
                                Icons.person,
                                color: Colors.green,
                              ),
                              prefixText: ' ',
                            ),
                          ),
                        ),

                        //PHONE NUMBER///
                        Padding(
                          padding: EdgeInsets.only(top: 8, left: 8, right: 8),
                          child: TextField(
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9]')),
                            ],
                            onSubmitted: (v) {
                              onAddUserEnter();
                              setState(() {});
                            },
                            controller: phoneController,
                            decoration: new InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              errorText: validAddPhone
                                  ? 'Number already in use'
                                  : null,
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                    color: Colors.redAccent, width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide:
                                    BorderSide(color: Colors.green, width: 2),
                              ),
                              hintText: 'Phone No.',
                              labelText: "Customer's Phone No.",
                              prefixIcon: const Icon(
                                Icons.phone_outlined,
                                color: Colors.green,
                              ),
                              prefixText: ' ',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextField(
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9]')),
                            ],
                            onSubmitted: (v) {
                              onAddUserEnter();
                              setState(() {});
                            },
                            controller: ref_idController,
                            decoration: new InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide:
                                    BorderSide(color: Colors.green, width: 2),
                              ),
                              labelText: 'Referral Number',
                              hintText: 'Optional',
                              prefixIcon: const Icon(
                                Icons.person,
                                color: Colors.lightGreen,
                              ),
                              prefixText: ' ',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15, left: 8, right: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: SizedBox(
                                  height: 40,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.blueGrey),
                                    ),
                                    child: Text("Cancel"),
                                    onPressed: () {
                                      validAddName = false;
                                      validAddPhone = false;
                                      ref_idController.clear();
                                      nameController.clear();
                                      phoneController.clear();
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 40,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.green),
                                    ),
                                    child: Text("Submit"),
                                    onPressed: () {
                                      onAddUserEnter();
                                      setState(() {});
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }

  userGetByOrder() async {
    try {
      var printer = await widget.database.getUserByDate().get();
      print(printer[0]);
    } catch (e) {
      print(e);
    }
  }

  insertUser() async {
    List<User>? v = await widget.database
        .checkUserExist(int.parse(phoneController.text))
        .get();
    if (v.isEmpty) {
      if (ref_idController.text == '0') {
        await widget.database.insertUsers(
            nameController.text,
            int.parse(phoneController.text),
            null,
            DateTime.now(),
            null,
            null,
            null,
            null);
      } else {
        List<GetReferByIdResult> ref = await widget.database
            .getReferById(int.parse(ref_idController.text))
            .get();
        await widget.database.insertUsers(
            nameController.text,
            int.parse(phoneController.text),
            int.parse(ref_idController.text),
            DateTime.now(),
            ref[0].refId1,
            ref[0].refId2,
            ref[0].refId3,
            ref[0].refId4);
      }
      phoneController.clear();
      ref_idController.clear();
      nameController.clear();
      Navigator.pop(context);
    } else {
      print('v is ept');
      ref_idController.clear();
      validAddPhone = true;
      setState(() {});
    }
  }
}

insertOrder() async {
  if (orderPhoneController.text.isNotEmpty) {
    validOrderPhoneField = false;
    List<User> name = await databasee!
        .getUserNameByPhone(int.parse(orderPhoneController.text))
        .get();

    if (name.isEmpty) {
      errorPhoneText = 'Phone number does not exist';
      validOrderAmtField = false;
      validOrderPhoneField = true;
    } else if (amountController.text.isEmpty) {
      validOrderAmtField = true;
    } else {
      validOrderAmtField = false;
      validOrderPhoneField = false;

      //INSERTING ORDER AND DIVING COMMISSION
      var amt = double.parse(amountController.text);
      var com = 0.0;

      List<GetReferByPhoneResult> refs = await databasee!
          .getReferByPhone(int.parse(orderPhoneController.text))
          .get();

      /////////11111111111
      if (refs[0].refId1 != null && refs[0].refId1 != 0) {
        List<User> refName =
            await databasee!.getUserNameById(refs[0].refId1).get();
        var refCom = refName[0].com;
        refCom = (refCom! + (amt * 0.01));
        com = com + (amt * 0.01);
        await databasee!.insertUserById(refCom, refs[0].refId1);
        await databasee!.insertComT(
          refs[0].refId1,
          refName[0].name,
          name[0].customerId,
          name[0].name,
          (amt * 0.01),
          DateTime.now(),
        );
      }
      //////////2222222222222
      if (refs[0].refId2 != null && refs[0].refId2 != 0) {
        List<User> refName =
            await databasee!.getUserNameById(refs[0].refId2).get();
        var refCom = refName[0].com;
        refCom = (refCom! + (amt * 0.01));
        com = com + (amt * 0.01);
        await databasee!.insertUserById(refCom, refs[0].refId2);
        await databasee!.insertComT(
          refs[0].refId2,
          refName[0].name,
          name[0].customerId,
          name[0].name,
          (amt * 0.01),
          DateTime.now(),
        );
      }
      //////////333333333333
      if (refs[0].refId3 != null && refs[0].refId3 != 0) {
        List<User> refName =
            await databasee!.getUserNameById(refs[0].refId3).get();
        var refCom = refName[0].com;
        refCom = (refCom! + (amt * 0.01));
        com = com + (amt * 0.01);
        await databasee!.insertUserById(refCom, refs[0].refId3);
        await databasee!.insertComT(
          refs[0].refId3,
          refName[0].name,
          name[0].customerId,
          name[0].name,
          (amt * 0.01),
          DateTime.now(),
        );
      }
      /////////44444444444444
      if (refs[0].refId4 != null && refs[0].refId4 != 0) {
        List<User> refName =
            await databasee!.getUserNameById(refs[0].refId4).get();
        var refCom = refName[0].com;
        refCom = (refCom! + (amt * 0.01));
        com = com + (amt * 0.01);
        await databasee!.insertUserById(refCom, refs[0].refId4);
        await databasee!.insertComT(
          refs[0].refId4,
          refName[0].name,
          name[0].customerId,
          name[0].name,
          (amt * 0.01),
          DateTime.now(),
        );
      }
      ////////55555555555
      if (refs[0].refId5 != null && refs[0].refId5 != 0) {
        List<User> refName =
            await databasee!.getUserNameById(refs[0].refId5).get();
        var refCom = refName[0].com;
        refCom = (refCom! + (amt * 0.01));
        com = com + (amt * 0.01);
        await databasee!.insertUserById(refCom, refs[0].refId5);
        await databasee!.insertComT(
          refs[0].refId5,
          refName[0].name,
          name[0].customerId,
          name[0].name,
          (amt * 0.01),
          DateTime.now(),
        );
      }

      //////  INSERTING

      await databasee!.insertOrderp(
          name[0].name,
          int.parse(orderPhoneController.text),
          DateTime.now(),
          int.parse(amountController.text),
          com);

      amountController.clear();
      orderPhoneController.clear();
    }
  } else {
    errorPhoneText = 'Enter Phone No.';
    validOrderPhoneField = true;
  }
}

var errorPhoneText;

class OrderPanel extends StatefulWidget {
  const OrderPanel({Key? key}) : super(key: key);

  @override
  _OrderPanelState createState() => _OrderPanelState();
}

class _OrderPanelState extends State<OrderPanel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 13, right: 13, bottom: 17, top: 7.5),
            child: TextField(
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
              ],
              onSubmitted: (value) {
                insertOrder();
                setState(() {});
              },
              controller: orderPhoneController,
              decoration: orderPhoneInputDecoration(
                "Phone No.",
                "Customer's Phone No.",
                errorPhoneText,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13, bottom: 17),
            child: TextField(
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
              ],
              onSubmitted: (value) {
                insertOrder();
                setState(() {});
              },
              controller: amountController,
              decoration: orderAmtInputDecoration(
                'Total Amount',
                "Total Purchase Amount",
                'Please Enter the Amount',
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Flexible(
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red.shade700),
                    fixedSize: MaterialStateProperty.all<Size?>(Size(130, 40)),
                  ),
                  child: Text(
                    "Cancel",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                  ),
                  onPressed: () {
                    validOrderAmtField = false;
                    validOrderPhoneField = false;
                    amountController.clear();
                    orderPhoneController.clear();
                    setState(() {});
                  },
                ),
              ),
              Flexible(
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                    fixedSize: MaterialStateProperty.all<Size?>(Size(130, 40)),
                  ),
                  child: Text(
                    "Submit",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                  ),
                  onPressed: () {
                    insertOrder();
                    setState(() {});
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

InputDecoration orderPhoneInputDecoration(hint, label, error) {
  return new InputDecoration(
    contentPadding: EdgeInsets.symmetric(vertical: 1.0, horizontal: 35.0),
    errorText: validOrderPhoneField ? error : null,
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5.0),
      borderSide: BorderSide(
          color: Colors.redAccent, width: 0, style: BorderStyle.solid),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5.0),
      borderSide:
          BorderSide(color: Colors.green, width: 0, style: BorderStyle.solid),
    ),
    labelStyle: TextStyle(color: Colors.grey),
    hintStyle: TextStyle(color: Colors.grey),
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5.0),
      borderSide:
          BorderSide(color: Colors.green, width: 0, style: BorderStyle.solid),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5.0),
      borderSide:
          BorderSide(color: Colors.green, width: 0, style: BorderStyle.solid),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide:
          BorderSide(color: Colors.green, width: 0, style: BorderStyle.solid),
    ),
    filled: true,
    hintText: hint,
    labelText: label,
    prefixIcon: const Icon(
      Icons.phone_outlined,
      color: Colors.green,
    ),
    prefixText: ' ',
  );
}

InputDecoration orderAmtInputDecoration(hint, label, error) {
  return new InputDecoration(
    contentPadding: EdgeInsets.symmetric(vertical: 1.0, horizontal: 35.0),
    errorText: validOrderAmtField ? error : null,
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5.0),
      borderSide: BorderSide(
          color: Colors.redAccent, width: 0, style: BorderStyle.solid),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5.0),
      borderSide:
          BorderSide(color: Colors.green, width: 0, style: BorderStyle.solid),
    ),
    labelStyle: TextStyle(color: Colors.grey),
    hintStyle: TextStyle(color: Colors.grey),
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5.0),
      borderSide:
          BorderSide(color: Colors.green, width: 0, style: BorderStyle.solid),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5.0),
      borderSide:
          BorderSide(color: Colors.green, width: 0, style: BorderStyle.solid),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide:
          BorderSide(color: Colors.green, width: 0, style: BorderStyle.solid),
    ),
    filled: true,
    hintText: hint,
    labelText: label,
    prefixIcon: const Icon(
      Icons.local_mall_outlined,
      color: Colors.green,
    ),
    prefixText: ' ',
  );
}
