import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';

class CustomCountrySelector extends StatelessWidget {
  final Country country;
  const CustomCountrySelector({required this.country, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          // SizedBox(
          //   width: 8.0,
          // ),
          // Text("+${country.phoneCode}(${country.isoCode})"),
        ],
      ),
    );
  }
}
