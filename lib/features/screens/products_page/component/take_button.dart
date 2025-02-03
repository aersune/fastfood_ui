import 'package:flutter/material.dart';
import 'package:products_ui/main.dart';
import '../../../../common/styles/colors.dart';
import '../../../../common/styles/responsive.dart';
import '../../../../common/styles/text_style.dart';


class TakeButton extends StatelessWidget {
  const TakeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      splashColor: AppColors.primary.withOpacity(.4),
      highlightColor: AppColors.primary.withOpacity(.1),
      onTap: (){},
      child: Ink(
        width: width(context)* .28,
        height: height(context) * .06,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.primary, width: 1),
        ),
        child: Center(child: Text('TAKE AWAY', style: AppStyle.h1.copyWith(color: AppColors.primary, fontSize: 16),)),
      ),
    );
  }
}
