import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_ui_2/ui/reusable_widget/custom_course_box.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Country countrySelector = CountryPickerUtils.getCountryByIsoCode('LK');

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(
                left: size.width * .05,
                top: size.width * .05,
                right: size.width * .05,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * .01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/images/menu.png',
                        width: size.width * .08,
                        fit: BoxFit.cover,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: <Widget>[
                            CountryPickerUtils.getDefaultFlagImage(countrySelector),
                            SizedBox(width: 8.0),
                            Text(countrySelector.name),
                            SizedBox(width: 8.0),
                            Icon(Icons.arrow_drop_down_sharp),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * .02,
                  ),
                  Row(
                    children: [
                      Container(
                        width: size.height * .08,
                        child: CircleAvatar(
                          radius: 40.0,
                          backgroundImage: NetworkImage(
                            "http://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg",
                          ),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                      SizedBox(
                        width: size.width * .06,
                      ),
                      Column(
                        children: [
                          Text(
                            'Lahiru Sampath',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: size.height * .01,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.grey,
                              ),
                              Text(
                                "United Kindom",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * .02,
                  ),
                  Text(
                    'Welcome back!',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                  SizedBox(
                    height: size.height * .02,
                  ),
                  Container(
                    margin: EdgeInsets.all(size.width * .02),
                    decoration: BoxDecoration(
                      color: Colors.white,
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
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            left: size.width * .05,
                            bottom: size.width * .05,
                            top: size.width * .05,
                            right: size.width * .05,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: size.height * .02,
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.blue[100],
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Text(
                                  'Intermediate',
                                  style: TextStyle(
                                    color: Colors.blue[900],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: size.height * .03,
                              ),
                              Text(
                                "Today's \nChallenge",
                                style: TextStyle(
                                  fontSize: size.width * .05,
                                ),
                              ),
                              SizedBox(
                                height: size.height * .02,
                              ),
                              Text(
                                'German meals',
                                style: TextStyle(
                                  color: Colors.blue[900],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: size.height * .02,
                              ),
                              Text(
                                'Take this lesson to \nearn a new milestone',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.start,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: size.width * .01,
                        ),
                        Expanded(
                          child: Image.network(
                            'https://img.freepik.com/free-vector/students-learning-foreign-language-with-vocabulary_74855-11070.jpg?w=996&t=st=1660195916~exp=1660196516~hmac=1353e5ce60c8a6f9fd21f75ab7f31bd1688360547af9e7db992879d07819f15f',
                            width: size.width * .5,
                            height: size.height * .3,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * .02,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: size.width * .05,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your courses',
                    style: TextStyle(
                      fontSize: size.width * .05,
                    ),
                  ),
                  SizedBox(
                    height: size.height * .02,
                  ),
                  Container(
                    height: size.height * .215,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        CustomCourseBox(
                          subTitle: 'Begginer',
                          color: Colors.orange[500]!,
                          language: 'Spanish',
                          percentage: 45,
                        ),
                        CustomCourseBox(
                          subTitle: 'Advance',
                          color: Colors.green[500]!,
                          language: 'Italian',
                          percentage: 45,
                        ),
                        CustomCourseBox(
                          subTitle: 'Begginer',
                          color: Colors.blue[500]!,
                          language: 'Spanish',
                          percentage: 45,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
