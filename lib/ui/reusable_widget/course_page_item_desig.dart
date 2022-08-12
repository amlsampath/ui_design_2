import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

class CoursePageItemDesign extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String text;
  final double percentage;
  const CoursePageItemDesign({required this.color, required this.icon, required this.percentage, required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/details_page');
      },
      child: Container(
        margin: EdgeInsets.all(5.0),
        width: size.width * .5,
        height: size.height * .28,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            SizedBox(
              height: size.height * .01,
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
              child: Icon(
                icon,
                color: color,
                size: 40,
              ),
            ),
            SizedBox(
              height: size.height * .01,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: size.width * .05,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: size.height * .01,
            ),
            Text(
              '4/5',
              style: TextStyle(
                fontSize: size.width * .04,
                fontWeight: FontWeight.w400,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10.0,
                left: 10.0,
                right: 10.0,
              ),
              child: LiquidLinearProgressIndicator(
                value: 0.5, // Defaults to 0.5.
                valueColor: AlwaysStoppedAnimation(color), // Defaults to the current Theme's accentColor.
                backgroundColor: color, // Defaults to the current Theme's backgroundColor.
                borderColor: Colors.white,
                borderWidth: 1.0,
                borderRadius: 12.0,
                direction: Axis.vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.horizontal.
                center: Text(
                  "$percentage%",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
