import 'package:flutter/material.dart';


double height(BuildContext context) => MediaQuery.of(context).size.height;
double width(BuildContext context) => MediaQuery.of(context).size.width;


double text24(BuildContext context) => width(context) * .06;
double text22(BuildContext context) => width(context) * .055;
double text20(BuildContext context) => width(context) * .05;
double text18(BuildContext context) => width(context) * .044;
double text16(BuildContext context) => width(context) * .04;
double text14(BuildContext context) => width(context) * .034;
double text12(BuildContext context) => width(context) * .03;


double kDefaultPadding(BuildContext context) => width(context) * .04;



extension SizeUntil on int {
  SizedBox getH(BuildContext context) => SizedBox(
    height: (this / height(context)) * height(context),
  );
  SizedBox getW(BuildContext context) => SizedBox(
    height: (this / width(context)) * width(context),
  );
}