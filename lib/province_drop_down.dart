library province_drop_down;

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProvinceDropDown extends StatefulWidget {
  const ProvinceDropDown({super.key});

  @override
  State<ProvinceDropDown> createState() => _ProvinceDropDownState();
}

class _ProvinceDropDownState extends State<ProvinceDropDown> {
  final province = [
    'Bolikhamxay',
    'Vientiane Capital',
    'Savanhnakhet',
    'Oudomxay',
    'Luangprabang',
    'Champasack'
  ];

  String? chooseProvince;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      width: MediaQuery.of(context).size.width * 0.8,
      height: 50,
      child: DropdownButton(
          isExpanded: true,
          value: chooseProvince,
          hint: const Text('Select'),
          items: province
              .map(
                (e) => DropdownMenuItem(
                  value: e,
                  child: Text(e, style: TextStyle(fontSize: 16)),
                ),
              )
              .toList(),
          onChanged: (value) {
            setState(() {
              chooseProvince = value.toString();
            });
          }),
    );
  }
}
