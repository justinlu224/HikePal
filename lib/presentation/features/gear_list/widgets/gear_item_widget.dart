import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/constants/app_constants.dart';

class GearItemWidget extends StatelessWidget {
  final String itemName;
  final bool isChecked;
  final ValueChanged<bool?>? onChanged;

  const GearItemWidget({
    super.key,
    required this.itemName,
    required this.isChecked,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFe0e0e0),
            width: 0.5,
          ),
        ),
      ),
      child: CheckboxListTile(
        title: Text(
          itemName,
          style: TextStyle(
            fontSize: 14,
            color: isChecked ? AppTheme.textSecondary : AppTheme.textPrimary,
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
        ),
        value: isChecked,
        onChanged: onChanged,
        activeColor: AppTheme.successGreen,
        checkColor: Colors.white,
        controlAffinity: ListTileControlAffinity.leading,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppConstants.paddingMedium,
          vertical: AppConstants.paddingSmall / 2,
        ),
        dense: true,
      ),
    );
  }
}
