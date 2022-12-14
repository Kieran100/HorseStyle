import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CompetitionsView extends StatefulWidget {
  const CompetitionsView({super.key, required this.title});

  static const tag = "competitions_Page";

  final String title;

  @override
  State<CompetitionsView> createState() => _CompetitionsViewState();
}

class _CompetitionsViewState extends State<CompetitionsView> {
  late final bool readOnly;

  String hrCounter = '00';
  String minCounter = '00';
  String temp = "";

  final TextEditingController nameController = TextEditingController();
  final TextEditingController dateinput = TextEditingController();

  @override
  void initState() {
    dateinput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Nom',
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Écrivez votre nom';
                }
                return null;
              },
              controller: nameController,
            ),
            TextField(
                controller: dateinput,
                //editing controller of this TextField
                decoration: const InputDecoration(
                    icon: Icon(Icons.calendar_today), //icon of text field
                    labelText: "Date" //label text of field
                    ),
                //  const Text ("Date"),
                readOnly: true,
                //set it true, so that user will not able to edit text
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2021),
                      //DateTime.now() - not to allow to choose before today.
                      lastDate: DateTime(2101));

                  if (pickedDate != null) {
                    print(
                        pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                    String formattedDate =
                        DateFormat('yyyy-MM-dd').format(pickedDate);
                    print(formattedDate); //formatted date output using intl package =>  2021-03-16
                    //you can implement different kind of Date Format here according to your requirement

                    setState(() {
                      dateinput.text =
                          formattedDate; //set output date to TextField value.
                    });
                  } else {
                    print("Date is not selected");
                  }
                }),

            /*     TextFormField(
              controller: _dateController,
              keyboardType:
              const TextInputType.numberWithOptions(decimal: false),
              inputFormatters: [
                LengthLimitingTextInputFormatter(9),
              ],
              decoration: InputDecoration(
                  hintText: '$hrCounter:$minCounter',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: 'Horaire'),
              onChanged: (val) {
                String y="";
                switch (val.length) {
                  case 0:
                    setState(() {
                      hrCounter = "00";
                      minCounter = "00";
                    });
                    break;
                  case 1:
                    setState(() {
                      temp=val;
                      _dateController.value = _dateController.value.copyWith(
                        text: "$hrCounter:$minCounter",
                        selection: const TextSelection.collapsed(offset: 8),
                      );
                    });
                    break;
                  default: setState((){
                    for(int i=1;i<=val.length-1;i++){
                      y=y+val.substring(i,i+1);
                    }
                    y=y.replaceAll(":", "");
                    val="${y.substring(0,2)}:${y.substring(2,4)}";
                    temp=val;
                    _dateController.value = _dateController.value.copyWith(
                      text: val,
                      selection: const TextSelection.collapsed(offset: 8),
                    );
                  });
                  break;

                }
              },
            ),
*/
            TextButton(
              onPressed: () {
                Navigator.pop(context, 'Valider');
              },
              child: const Text('Valider'),
            ),
          ]),
    );
  }
}
