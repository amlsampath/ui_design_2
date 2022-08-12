import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CustomCourseBox extends StatelessWidget {
  final Color color;
  final String language;
  final String subTitle;
  final double percentage;

  const CustomCourseBox({
    required this.color,
    required this.language,
    required this.percentage,
    required this.subTitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/course');
      },
      child: Container(
        margin: EdgeInsets.all(
          size.width * .02,
        ),
        width: size.width * .4,
        height: size.height * .1,
        padding: EdgeInsets.all(size.width * .02),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10), bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              language,
              style: TextStyle(
                fontSize: size.width * .05,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              subTitle,
              style: TextStyle(
                fontSize: size.width * .04,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: size.height * .01,
            ),
            Container(
              alignment: Alignment.centerRight,
              //width: size.width * .02,
              child: CircularPercentIndicator(
                radius: 30,
                lineWidth: 1.0,
                percent: percentage / 100,
                center: new Text(
                  percentage.toString() + "%",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                progressColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
