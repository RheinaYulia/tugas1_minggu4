import 'package:flutter/material.dart';

class perhitungan extends StatelessWidget {
  const perhitungan({
    Key? key,
    required this.selectedDropdown,
    required this.listSatuanSuhu,
    required this.onDropdownChanged,
  }) : super(key: key);

  final String selectedDropdown;
  final List<String> listSatuanSuhu;
  final Function onDropdownChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      isExpanded: true,
      value: selectedDropdown,
      items: listSatuanSuhu.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (value) {
        onDropdownChanged(value);
      },
    );
  }
}
