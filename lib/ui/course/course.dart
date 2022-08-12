import 'package:flutter/material.dart';
import 'package:new_ui_2/ui/course/custom_paint.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../reusable_widget/course_page_item_desig.dart';

class Course extends StatefulWidget {
  Course({Key? key}) : super(key: key);

  @override
  State<Course> createState() => _CourseState();
}

class _CourseState extends State<Course> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // return Container(
    //   child: Text("course"),
    // );
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * 1,
            width: size.width,
            color: Colors.white,
            child: CustomPaintDrawer(
              circleColor: Colors.white24,
              color: Colors.orange[400]!,
            ),
          ),
          Positioned(
              top: size.height * .05,
              left: size.width * .05,
              right: size.width * .05,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 25,
                    ),
                    Text(
                      'Course',
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 25,
                    ),
                  ],
                ),
              )),
          Positioned(
            top: size.height * .1,
            left: size.width * .02,
            right: size.width * .02,
            child: Container(
              // margin: EdgeInsets.all(size.width * .02),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(size.width * .02),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Spanish',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35.0,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * .02,
                                ),
                                Container(
                                    padding: EdgeInsets.all(
                                      10.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Begginer',
                                          style: TextStyle(
                                            color: Colors.orange,
                                            fontSize: 20.0,
                                          ),
                                        ),
                                        Icon(
                                          Icons.arrow_drop_down,
                                          color: Colors.orange,
                                          size: 30.0,
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              //width: size.width * .02,
                              child: CircularPercentIndicator(
                                radius: 50,
                                lineWidth: 4.0,
                                percent: 0.45,
                                center: new Text(
                                  "45%",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 35,
                                  ),
                                ),
                                progressColor: Colors.white,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: size.height * .06,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.games,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Icon(
                              Icons.games,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              '2 Milestones',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * .01,
                  ),
                  SingleChildScrollView(
                    child: Container(
                      height: size.height * .6,
                      width: size.width,
                      padding: EdgeInsets.all(0),
                      child: GridView.count(
                        //shrinkWrap: true,
                        // physics: NeverScrollableScrollPhysics(),
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,

                        padding: EdgeInsets.all(0),

                        children: [
                          CoursePageItemDesign(
                            icon: Icons.note_alt,
                            color: Colors.orange,
                            text: 'Basic',
                            percentage: 80,
                          ),
                          CoursePageItemDesign(
                            icon: Icons.note_alt,
                            color: Colors.red,
                            text: 'Occupations',
                            percentage: 10,
                          ),
                          CoursePageItemDesign(
                            icon: Icons.note_alt,
                            color: Colors.blue,
                            text: 'Conversation',
                            percentage: 50,
                          ),
                          CoursePageItemDesign(
                            icon: Icons.note_alt,
                            color: Colors.green,
                            text: 'Places',
                            percentage: 10,
                          ),
                          CoursePageItemDesign(
                            icon: Icons.note_alt,
                            color: Colors.purple,
                            text: 'Family members',
                            percentage: 40,
                          ),
                          CoursePageItemDesign(
                            icon: Icons.note_alt,
                            color: Colors.deepPurpleAccent,
                            text: 'Foods',
                            percentage: 35,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
