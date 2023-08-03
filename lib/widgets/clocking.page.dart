import 'package:attendance/widgets/yes.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Clockin extends StatefulWidget {
  const Clockin({super.key});

  @override
  State<Clockin> createState() => _ClockinState();
}

class _ClockinState extends State<Clockin> {
  Color _buttonColor = Colors.green;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 10, right: 20, left: 20),
          child: ElevatedButton(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Continue',
              ),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Yes()));
            },
          ),
        ),
        body: Column(
          children: [
            Container(
              color: Color.fromARGB(255, 0, 173, 238),
              child: Padding(
                padding: const EdgeInsets.only(left: 5,top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text('APP-NAME',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Image.asset(
                        'assets/images/logo_new.png',
                        height: 80,
                        width: 150,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 10,
              width:double.maxFinite,
              color: Color(0xFFD7DF23),
            ),
            SizedBox(height: 17,),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 24,
                        child: Image.asset(
                          'assets/images/office-worker.png',
                          height: 29,
                          width: 29,
                        ),
                        backgroundColor: Color.fromARGB(255, 234, 246, 255),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Good morning,',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'PF 3434',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    '08:23',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Wednesday, 23 August',
                    style: TextStyle(fontSize: 17, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  InkWell(
                    onTap: () {
                      if (_buttonColor == Colors.green) {
                        setState(() {
                          _buttonColor = Color.fromARGB(255, 252, 107, 97);
                        });
                      } else {
                        setState(() {
                          _buttonColor = Colors.green;
                        });
                      }
                    },
                    child: Card(
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(95.0)),
                      child: Container(
                        width: 190,
                        height: 190,
                        decoration: BoxDecoration(
                          color: _buttonColor,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                'assets/images/tap.png',
                                height: 50,
                                width: 50,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Clock in',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_pin,
                          size: 18,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                            width: 230,
                            child: Text(
                              'Location : Bweyogerere Branch',
                              style: TextStyle(
                                  color: Colors.grey,
                                  overflow: TextOverflow.ellipsis),
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  _buttonColor == Colors.green
                      ? SizedBox(
                          height: 60,
                        )
                      : Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 234, 246, 255),
                                border: Border.all(
                                  color: Colors.blue,
                                )),
                            child: Padding(
                              padding: const EdgeInsets.all(17),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/attention.png',
                                        height: 20,
                                        width: 20,
                                        color: Colors.red,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                      child: Text(
                                    'datajofghnjlsnfgjlsnfddfjbkdfkbkdfdfk',
                                  )),
                                ],
                              ),
                            ),
                          ),
                        )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
