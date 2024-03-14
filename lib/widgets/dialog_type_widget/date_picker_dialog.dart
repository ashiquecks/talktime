import 'package:customizable_datetime_picker/sources/i18n/date_picker_i18n.dart';
import 'package:customizable_datetime_picker/sources/model/date_picker_divider_theme.dart';
import 'package:customizable_datetime_picker/sources/model/date_picker_theme.dart';
import 'package:customizable_datetime_picker/sources/widget/customizable_date_picker_widget.dart';
import 'package:flutter/material.dart';

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