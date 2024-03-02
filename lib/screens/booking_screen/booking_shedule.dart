import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:talktime/widgets/button_widgets.dart';
import 'package:talktime/widgets/inkwell_widgets.dart';
import 'package:talktime/widgets/rich_text_widget.dart';

class BookingSchedule extends StatelessWidget {
  const BookingSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    Size widgetSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Schedule"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            margin: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ListTile(
                  title: Text("Muhammad Ashique"),
                  subtitle: Text("ashiquec@gmail.com"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 15),
                  child: locationPinText(locationText: 'Calicut,kerala'),
                ),
              ],
            ),
          ),
          const Dash(
            direction: Axis.vertical,
            length: 30,
            dashLength: 4,
            dashColor: Colors.grey,
          ),
          borderButtonContainer(
            widgetSize: widgetSize,
            context: context,
            buttonText: "Select Meeting Date",
          ),
          const Dash(
            direction: Axis.vertical,
            length: 30,
            dashLength: 4,
            dashColor: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                borderButtonRow(widgetSize: widgetSize, context: context, buttonText: 'Start Time'),
                const SizedBox(width: 10),
                borderButtonRow(widgetSize: widgetSize, context: context, buttonText: 'End Time'),
              ],
            ),
          ),
          borderButtonContainer(
            widgetSize: widgetSize,
            context: context,
            buttonText: 'Select Location',
          ),
          const Dash(
            direction: Axis.vertical,
            length: 30,
            dashLength: 4,
            dashColor: Colors.grey,
          ),
          borderButtonContainer(
            widgetSize: widgetSize,
            context: context,
            buttonText: 'Select Meeting purpose',
          ),
        ],
      ),
      bottomNavigationBar: primaryButton(buttonText: "Make Payment", buttonAction: () {}),
    );
  }
}
