import 'package:flutter/material.dart';
import 'package:talktime/widgets/dialog_type_widget/date_picker_dialog.dart';


// THIS TWO WIDGET FUNCTIONS USED AT BOOKING FORM SCREEN OR MODULE

Widget borderButtonContainer({required Size widgetSize, required BuildContext context,required String buttonText}) {
  return InkWell(
    onTap: () {
      datePickerDialog(context: context);
    },
    child: Container(
      height: 50,
      width: widgetSize.width,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.center,
      child:  Text(
        buttonText,
        style: TextStyle(fontSize: 16),
      ),
    ),
  );
}

Widget borderButtonRow({required Size widgetSize, required BuildContext context, required String buttonText}) {
  return Expanded(
    child: InkWell(
      onTap: () {
        datePickerDialog(context: context);
      },
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        child: Text(
          buttonText,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    ),
  );
}
