import 'package:flutter/material.dart';
import 'package:credit_card_input_form/constants/constanst.dart';
import 'package:credit_card_input_form/provider/card_name_provider.dart';
import 'package:provider/provider.dart';

class CardName extends StatelessWidget {
  final defaultName = 'NAME SURNAME';

  @override
  Widget build(BuildContext context) {
    final String name = Provider.of<CardNameProvider>(context).cardName;

    return Text(name.isNotEmpty ? name : defaultName,
        style: name.isNotEmpty ? kNametextStyle : kDefaultNameTextStyle);
  }
}
