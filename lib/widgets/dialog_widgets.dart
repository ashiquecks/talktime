import 'package:flutter/material.dart';
import 'package:customizable_datetime_picker/date_picker_widget.dart';

datePickerDialog({
  required BuildContext context,
}) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        content: CustomizableDatePickerWidget(
            locale: DateTimePickerLocale.enUs,
            looping: true,
            initialDate: DateTime.now(),
            dateFormat: "dd-MMMM-yyyy",
            pickerTheme: const DateTimePickerTheme(
                itemTextStyle: TextStyle(fontSize: 14),
                backgroundColor: Colors.transparent,
                itemHeight: 80,
                pickerHeight: 300,
                dividerTheme: DatePickerDividerTheme(thickness: 1, height: 2)),
            onChange: (dateTime, selectedIndex) {}),
      );
    },
  );
}
