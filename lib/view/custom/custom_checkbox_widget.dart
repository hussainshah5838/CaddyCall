

import 'package:flutter/material.dart';
import '../../config/constants/app_colors.dart';
import '../../config/constants/app_fonts.dart';
import 'custom_animated_row.dart';
import 'my_text_widget.dart';

class TermsCheckbox extends StatefulWidget {
  final String? text;

  final Color? textcolor;
  final Function(bool) onChanged;

  const TermsCheckbox({
    super.key,
    this.text,
    required this.onChanged,
    this.textcolor,
  });

  @override
  _TermsCheckboxState createState() => _TermsCheckboxState();
}

class _TermsCheckboxState extends State<TermsCheckbox> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedRow(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _isChecked = !_isChecked;
            });
            widget.onChanged(_isChecked);
          },
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: _isChecked ? kCheckBoxColor : null,
              border: Border.all(
                color: kCheckBoxColor,
                width: 2,
              ),
            ),
            child: _isChecked
                ? Icon(
                    Icons.check,
                    color: kQuaternaryColor,
                    size: 15,
                  )
                : null,
          ),
        ),
        SizedBox(width: 10),
        Flexible(
          child: MyText(
            text: widget.text ?? '',
            size: 14,
            color: kBlackColor,
            fontFamily: AppFonts.inter,
            weight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
