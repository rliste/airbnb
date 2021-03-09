import 'package:airbnb_rigel/src/views/widgets/cards.dart';
import 'package:airbnb_rigel/src/views/widgets/fields.dart';
import 'package:airbnb_rigel/src/views/widgets/texts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _isPressed1 = false;
  bool _isPressed2 = false;
  bool _isPressed3 = false;
  bool _isPressed4 = false;
  bool _isPressed5 = false;
  int _currentIndex = 0;

  List<Widget> cardList = [CardHome1(), CardHome2(), CardHome3()];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(240, 241, 241, 1),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          iconTheme: IconThemeData(opacity: 1.0),
          elevation: 0.0,
          toolbarHeight: 10.0.h,
          backgroundColor: Color.fromRGBO(240, 241, 241, 1),
          title: Stack(
            children: [
              Positioned(
                // left: 150.0.w,
                child: IconButton(
                    iconSize: 10.0.w,
                    icon: ImageIcon(
                        AssetImage('assets/images/iconMenuHome.png'),
                        color: Color.fromRGBO(33, 45, 82, 1)),
                    onPressed: () {}),
              ),

              // padding: EdgeInsets.only(right: 18.0.h),
              Padding(
                padding: EdgeInsets.only(left: 80.0.w),
                child: CircleAvatar(
                  radius: 3.2.h,
                  backgroundImage: NetworkImage(
                      'https://www.seduccionatraccion.com/wp-content/uploads/2013/03/mujer-sexo-vacaciones.jpg'),
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 1.0.h),
            Container(
                padding: EdgeInsets.only(right: 39.0.w), child: textHome1()),
            Container(
                padding: EdgeInsets.only(right: 46.0.w), child: textHome2()),
            SizedBox(height: 3.0.h),
            Center(child: searchApartament()),
            SizedBox(height: 2.0.h),
            Container(
                padding: EdgeInsets.only(right: 66.0.w), child: textHome3()),
            SizedBox(height: 2.0.h),
            CarouselSlider(
              items: cardList.map((card) {
                return Builder(builder: (BuildContext context) {
                  return Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(240, 242, 243, 1),
                        borderRadius: BorderRadius.circular(320),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: FittedBox(child: card, fit: BoxFit.fill),
                      ));
                });
              }).toList(),
              options: CarouselOptions(
                height: 68.0.w,
                //aspectRatio: 2.0,
                autoPlay: false,
                viewportFraction: 0.52,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                pauseAutoPlayOnTouch: true,
                //aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),
            SizedBox(height: 2.0.h),
            _botoneraInferior()
          ],
        ));
  }

  Widget _botoneraInferior() {
    return Container(
        height: 9.2.h,
        width: 89.0.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(27.0),
          color: Colors.white,
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          _isPressed1
              ? Stack(
                  children: [
                    Container(
                      //padding: EdgeInsets.only(right: 1.0.w),
                      width: 13.0.w,
                      height: 13.0.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(71, 148, 255, 1),
                      ),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 1.8.h),
                          child: Text('.',
                              style: TextStyle(
                                  fontSize: 24.0.sp, color: Colors.white)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 1.0.h),
                      child: Container(
                        padding: EdgeInsets.only(left: 0.7.w),
                        child: IconButton(
                          color: Colors.white,
                          onPressed: () {
                            setState(() {
                              _isPressed1 = !_isPressed1;
                              _isPressed2 = false;
                              _isPressed3 = false;
                              _isPressed4 = false;
                              _isPressed5 = false;
                            });
                          },
                          icon: Icon(Icons.home_work_outlined, size: 3.0.h),
                        ),
                      ),
                    ),
                  ],
                )
              : Container(
                  width: 13.0.w,
                  height: 13.0.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                  ),
                  child: IconButton(
                    color: Color.fromRGBO(153, 163, 196, 1),
                    onPressed: () {
                      setState(() {
                        _isPressed1 = !_isPressed1;
                        _isPressed2 = false;
                        _isPressed3 = false;
                        _isPressed4 = false;
                        _isPressed5 = false;
                      });
                    },
                    icon: Icon(
                      Icons.home_work_outlined,
                      size: 3.0.h,
                    ),
                  ),
                ),
          _isPressed2
              ? Stack(
                  children: [
                    Container(
                      //padding: EdgeInsets.only(right: 1.0.w),
                      width: 13.0.w,
                      height: 13.0.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(71, 148, 255, 1),
                      ),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 1.2.h),
                          child: Container(
                            padding: EdgeInsets.only(left: 0.3.w),
                            child: Text('.',
                                style: TextStyle(
                                    fontSize: 24.0.sp, color: Colors.white)),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 1.0.h),
                      child: Container(
                        padding: EdgeInsets.only(left: 0.7.w),
                        child: IconButton(
                          color: Colors.white,
                          onPressed: () {
                            setState(() {
                              _isPressed2 = !_isPressed2;
                              _isPressed1 = false;
                              _isPressed3 = false;
                              _isPressed4 = false;
                              _isPressed5 = false;
                            });
                          },
                          icon: Icon(Icons.favorite_outline, size: 3.0.h),
                        ),
                      ),
                    ),
                  ],
                )
              : Container(
                  width: 13.0.w,
                  height: 13.0.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                  ),
                  child: IconButton(
                    color: Color.fromRGBO(153, 163, 196, 1),
                    onPressed: () {
                      setState(() {
                        _isPressed2 = !_isPressed2;
                        _isPressed1 = false;
                        _isPressed3 = false;
                        _isPressed4 = false;
                        _isPressed5 = false;
                      });
                    },
                    icon: Icon(
                      Icons.favorite_outline,
                      size: 3.0.h,
                    ),
                  ),
                ),
          _isPressed3
              ? Stack(
                  children: [
                    Container(
                      //padding: EdgeInsets.only(right: 1.0.w),
                      width: 13.0.w,
                      height: 13.0.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(71, 148, 255, 1),
                      ),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 1.2.h),
                          child: Container(
                            padding: EdgeInsets.only(left: 0.3.w),
                            child: Text('.',
                                style: TextStyle(
                                    fontSize: 24.0.sp, color: Colors.white)),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 1.0.h),
                      child: Container(
                        padding: EdgeInsets.only(left: 0.7.w),
                        child: IconButton(
                          color: Colors.white,
                          onPressed: () {
                            setState(() {
                              _isPressed3 = !_isPressed3;
                              _isPressed2 = false;
                              _isPressed1 = false;
                              _isPressed4 = false;
                              _isPressed5 = false;
                            });
                          },
                          icon: Icon(Icons.add_location_outlined, size: 3.0.h),
                        ),
                      ),
                    ),
                  ],
                )
              : Container(
                  width: 13.0.w,
                  height: 13.0.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                  ),
                  child: IconButton(
                    color: Color.fromRGBO(153, 163, 196, 1),
                    onPressed: () {
                      setState(() {
                        _isPressed3 = !_isPressed3;
                        _isPressed2 = false;
                        _isPressed1 = false;
                        _isPressed4 = false;
                        _isPressed5 = false;
                      });
                    },
                    icon: Icon(
                      Icons.add_location_outlined,
                      size: 3.0.h,
                    ),
                  ),
                ),
          _isPressed4
              ? Stack(
                  children: [
                    Container(
                      //padding: EdgeInsets.only(right: 1.0.w),
                      width: 13.0.w,
                      height: 13.0.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(71, 148, 255, 1),
                      ),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 1.2.h),
                          child: Text('.',
                              style: TextStyle(
                                  fontSize: 24.0.sp, color: Colors.white)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 1.0.h),
                      child: Container(
                        padding: EdgeInsets.only(left: 0.7.w),
                        child: IconButton(
                          color: Colors.white,
                          onPressed: () {
                            setState(() {
                              _isPressed4 = !_isPressed4;
                              _isPressed2 = false;
                              _isPressed3 = false;
                              _isPressed1 = false;
                              _isPressed5 = false;
                            });
                          },
                          icon: Icon(Icons.mail_outline, size: 3.0.h),
                        ),
                      ),
                    ),
                  ],
                )
              : Container(
                  width: 13.0.w,
                  height: 13.0.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                  ),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        _isPressed4 = !_isPressed4;
                        _isPressed2 = false;
                        _isPressed3 = false;
                        _isPressed1 = false;
                        _isPressed5 = false;
                      });
                    },
                    icon: Icon(
                      Icons.mail_outline,
                      color: Color.fromRGBO(153, 163, 196, 1),
                      size: 3.0.h,
                    ),
                  ),
                ),
          _isPressed5
              ? Stack(
                  children: [
                    Container(
                      //padding: EdgeInsets.only(right: 1.0.w),
                      width: 13.0.w,
                      height: 13.0.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(71, 148, 255, 1),
                      ),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 1.2.h),
                          child: Text('.',
                              style: TextStyle(
                                  fontSize: 24.0.sp, color: Colors.white)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 1.0.h),
                      child: Container(
                        padding: EdgeInsets.only(left: 0.7.w),
                        child: IconButton(
                          color: Colors.white,
                          onPressed: () {
                            setState(() {
                              _isPressed5 = !_isPressed5;
                              _isPressed2 = false;
                              _isPressed3 = false;
                              _isPressed4 = false;
                              _isPressed1 = false;
                            });
                          },
                          icon: Icon(Icons.perm_identity, size: 3.0.h),
                        ),
                      ),
                    ),
                  ],
                )
              : Container(
                  width: 13.0.w,
                  height: 13.0.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                  ),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        _isPressed5 = !_isPressed5;
                        _isPressed2 = false;
                        _isPressed3 = false;
                        _isPressed4 = false;
                        _isPressed1 = false;
                      });
                    },
                    icon: Icon(
                      Icons.perm_identity,
                      color: Color.fromRGBO(153, 163, 196, 1),
                      size: 3.0.h,
                    ),
                  ),
                ),
        ]));
  }
}
