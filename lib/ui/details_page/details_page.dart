import 'package:flutter/material.dart';
import 'package:new_ui_2/ui/course/custom_paint.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // return Container(
    //   child: Text("course"),
    // );
    return Scaffold(
      backgroundColor: Colors.grey[500],
      body: Stack(
        children: [
          Container(
            height: size.height * 1,
            width: size.width,
            color: Colors.grey[100],
            child: CustomPaintDrawer(
              color: Colors.blue[400]!,
              circleColor: Color.fromARGB(61, 255, 254, 254),
            ),
          ),
          Positioned(
              top: size.height * .05,
              left: size.width * .05,
              right: size.width * .05,
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
                        Text(
                          'Translate these \nphrases to english',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * .05,
                  ),
                  Container(
                    margin: EdgeInsets.all(size.height * .025),
                    padding: EdgeInsets.all(size.height * .02),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.pause,
                              color: Colors.grey,
                            ),
                            Icon(
                              Icons.message,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                        Text(
                          'In publishing and graphic design, Lorem ipsum is a placeholder  ',
                          style: TextStyle(
                            fontSize: size.height * .04,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: Icon(
                            Icons.pause,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * .05,
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    margin: EdgeInsets.all(10.0),
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
                    child: TextFormField(
                      maxLines: 4,
                      decoration: InputDecoration(
                        hintText: 'Your answer',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * .05,
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25.0),
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
                      Icons.check,
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
