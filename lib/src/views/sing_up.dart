import 'package:airbnb_rigel/src/views/home.dart';
import 'package:airbnb_rigel/src/views/widgets/fields.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SingUp extends StatefulWidget {
  const SingUp({Key key}) : super(key: key);

  @override
  _SingUpState createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 241, 241, 1),
      appBar: AppBar(
        iconTheme: IconThemeData(opacity: 0),
        elevation: 0.0,
        toolbarHeight: 80,
        backgroundColor: Color.fromRGBO(240, 241, 241, 1),
        flexibleSpace: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: Stack(
            children: [
              Container(
                  padding: EdgeInsets.only(top: 10.0.w),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Color.fromRGBO(33, 45, 82, 1),
                    onPressed: () {},
                  )),
              Center(
                  child: Padding(
                padding: EdgeInsets.only(top: 4.0.h),
                child: Text(
                  'Sing Up',
                  style: TextStyle(
                      fontSize: 12.0.sp,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(33, 45, 82, 1)),
                ),
              ))
            ],
          ),
        ),
      ),
      body: ListView(children: [
        SizedBox(
          height: 3.5.h,
        ),
        Center(
          child: Container(
            height: 48.0.h,
            width: 85.0.w,
            decoration: BoxDecoration(
                //color: Colors.red,
                color: Color.fromRGBO(240, 241, 241, 1),
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[300],
                      blurRadius: 25.0,
                      spreadRadius: 2.0),
                ]),
            child: Column(
              children: [
                SizedBox(height: 2.0.h),
                Text(
                  'Sing Up',
                  style: TextStyle(
                      fontFamily: 'PlayFair',
                      fontSize: 24.0,
                      color: Color.fromRGBO(33, 45, 82, 1)),
                ),
                SizedBox(height: 3.0.h),
                Padding(
                  padding: EdgeInsets.only(right: 69.0.w),
                  child: Text(
                    'Email',
                    style: TextStyle(
                        color: Color.fromRGBO(138, 150, 190, 1),
                        fontWeight: FontWeight.w600,
                        fontSize: 11.4.sp),
                  ),
                ),
                SizedBox(height: 1.7.h),
                ingresoEmail(),
                SizedBox(height: 1.7.h),
                Padding(
                  padding: EdgeInsets.only(right: 61.5.w),
                  child: Text(
                    'Password',
                    style: TextStyle(
                        color: Color.fromRGBO(138, 150, 190, 1),
                        fontWeight: FontWeight.w600,
                        fontSize: 11.4.sp),
                  ),
                ),
                SizedBox(height: 1.7.h),
                ingresoPassword(),
                SizedBox(height: 1.7.h),
                Padding(
                  padding: EdgeInsets.only(right: 46.0.w),
                  child: Text(
                    'Confirm Password',
                    style: TextStyle(
                        color: Color.fromRGBO(138, 150, 190, 1),
                        fontWeight: FontWeight.w600,
                        fontSize: 11.4.sp),
                  ),
                ),
                SizedBox(height: 1.7.h),
                confirmarPassword(),
              ],
            ),
          ),
        ),
        SizedBox(height: 6.8.h),
        Center(
          child: Container(
              height: 7.6.h,
              width: 85.0.w,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(71, 148, 255, 1),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
                child: Center(
                    child: Padding(
                  padding: EdgeInsets.only(top: 3.0),
                  child: Text('SING UP',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 11.0.sp,
                          color: Colors.white)),
                )),
              )),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Have an Account?',
              style: TextStyle(
                  color: Color.fromRGBO(64, 74, 106, 1),
                  fontWeight: FontWeight.w400,
                  fontSize: 11.0.sp),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Sing in',
                  style: TextStyle(
                    fontSize: 11.8.sp,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(64, 74, 106, 1),
                  )),
            )
          ],
        ),
        SizedBox(height: 1.0.h),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            //color: Colors.yellow,
            height: 5.5.h,
            width: 15.0.w,
            child: FlatButton(
                padding: EdgeInsets.only(left: 6.0),
                onPressed: () {},
                child: Image.asset(
                  'assets/images/googleLogo.png',
                )),
          ),
          Container(
            //color: Colors.red,
            height: 5.5.h,
            width: 15.0.w,
            child: FlatButton(
                padding: EdgeInsets.only(right: 6.0),
                onPressed: () {},
                child: Image.asset(
                  'assets/images/facebookLogo.png',
                  //fit: BoxFit.contain
                )),
          )
        ])
      ]),
    );
  }
}
