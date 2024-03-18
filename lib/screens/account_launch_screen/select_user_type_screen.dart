import 'package:flutter/material.dart';
import 'package:talktime/widgets/widget_function/select_user_type_card.dart';

class SelectUserType extends StatelessWidget {
  const SelectUserType({super.key});

  @override
  Widget build(BuildContext context) {
    final widgetSize = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 0,
          leading: const SizedBox(),
          title: const Text("Account Type"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            selectUserTypeCard(context: context, userType: "Creator Account", typeImage: 'assets/images/creator_type.png'),
            selectUserTypeCard(context: context, userType: "User Account", typeImage: 'assets/images/gust-type.jpg'),
            SizedBox(height: widgetSize.height / 8)
          ],
        ),
      ),
    );
  }
}
