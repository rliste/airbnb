import 'package:airbnb_rigel/src/views/detail.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget cardTipo1() {
  List<String> fotos = [
    'https://i.pinimg.com/originals/d5/e2/6d/d5e26d02b19d4250a314bf807f8953b5.jpg',
    'https://i.pinimg.com/736x/a1/46/79/a146797c8977b58fbca231c1b25ecf73.jpg',
    'https://i.pinimg.com/originals/f8/13/90/f813908e175ba1d564cf58f198ae3fc6.jpg'
  ];
  final card1 = Container(
      width: double.infinity,
      //height: 200.0.h,
      // width: displayWidth(context) * 1,
      //height: displayWidth(context) * 1,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://i.pinimg.com/originals/d5/e2/6d/d5e26d02b19d4250a314bf807f8953b5.jpg'),
          fit: BoxFit.fill,
        ),
      ));
  return Container(
      child: ClipPath(
    clipper: BottomClipper(),
    child: card1,
  ));
}

Widget cardTipo2() {
  final card2 = Container(
      width: double.infinity,
      //height: 200.0.h,
      // width: displayWidth(context) * 1,
      //height: displayWidth(context) * 1,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://i.pinimg.com/736x/a1/46/79/a146797c8977b58fbca231c1b25ecf73.jpg'),
          fit: BoxFit.fill,
        ),
      ));
  return Container(
      child: ClipPath(
    clipper: BottomClipper(),
    child: card2,
  ));
}

Widget cardTipo3() {
  final card3 = Container(
      width: double.infinity,
      //height: 200.0.h,
      // width: displayWidth(context) * 1,
      //height: displayWidth(context) * 1,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://i.pinimg.com/originals/f8/13/90/f813908e175ba1d564cf58f198ae3fc6.jpg'),
          fit: BoxFit.fill,
        ),
      ));
  return Container(
      child: ClipPath(
    clipper: BottomClipper(),
    child: card3,
  ));
}

// Bottom Clipper, rwecortador de la imágen

class BottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 170);

    var firstControlPoint = Offset(size.width / 3, size.height);
    var firstEndPoint = Offset(size.width / 1, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
/*
    var secondControlPoint =
        Offset(size.width - (size.width / 3.25), size.height -65);
    var secondEndPoint = Offset(size.width, size.height - 40);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
*/
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

////HOME CARDS
///
///
///
class CardHome1 extends StatefulWidget {
  const CardHome1({Key key}) : super(key: key);

  @override
  _CardHome1State createState() => _CardHome1State();
}

class _CardHome1State extends State<CardHome1> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    final cardHome1 = Container(
        //   width: displayWidth(context) * 1,
        // height: displayWidth(context) * 1,

        child: Stack(
      children: [
        Column(children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Detail()),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image(
                  // width: 80.0.w,
                  height: 28.0.h,
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/edc090120peart-005-1595519364.jpg',
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 1.0.h),
          Padding(
            padding: EdgeInsets.only(right: 18.0.w),
            child: Text(
              'Royal Malewane',
              style: TextStyle(
                  fontFamily: 'PlayFair',
                  fontSize: 13.0.sp,
                  color: Color.fromRGBO(33, 45, 82, 1)),
            ),
          ),
          SizedBox(height: 1.0.h),
          Padding(
            padding: EdgeInsets.only(right: 7.6.w),
            child: Text(
              'Do you searching luxury hotels?',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 9.0.sp,
                color: Color.fromRGBO(153, 163, 196, 1),
              ),
            ),
          ),
          SizedBox(height: 0.4.h),
          Padding(
            padding: EdgeInsets.only(right: 23.8.w),
            child: Text(
              'This is only for you !',
              style: TextStyle(
                fontSize: 9.0.sp,
                color: Color.fromRGBO(153, 163, 196, 1),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 1.0.h),
          Padding(
            padding: EdgeInsets.only(right: 42.8.w),
            child: Text(
              'From',
              style: TextStyle(
                  fontSize: 10.0.sp,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(33, 45, 82, 1)),
            ),
          ),
          SizedBox(height: 1.0.h),
          Padding(
            padding: EdgeInsets.only(right: 40.5.w),
            child: Text(
              '\$285',
              style: TextStyle(
                  fontSize: 13.0.sp,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(33, 45, 82, 1)),
            ),
          ),
          SizedBox(height: 3.0.h),
        ]),
        Padding(
          padding: EdgeInsets.only(left: 43.0.w),
          child: IconButton(
            padding: EdgeInsets.only(top: 42.0.h),
            onPressed: () {
              setState(() {
                _isPressed = !_isPressed;
              });
            },
            icon: _isPressed
                ? Icon(
                    Icons.favorite_outlined,
                    color: Color.fromRGBO(71, 148, 255, 1),
                    size: 3.0.h,
                  )
                : Icon(
                    Icons.favorite_outline,
                    color: Color.fromRGBO(71, 148, 255, 1),
                    size: 3.0.h,
                  ),
          ),
        ),
      ],
    ));
    return Container(
      width: 34.0.h,
      child: Container(
          color: Color.fromRGBO(255, 255, 245, 0.5),
          //color: Colors.red,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: cardHome1,
          )),
    );
  }
}

class CardHome2 extends StatefulWidget {
  const CardHome2({Key key}) : super(key: key);

  @override
  _CardHome2State createState() => _CardHome2State();
}

class _CardHome2State extends State<CardHome2> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    final cardHome2 = Container(
        //  width: displayWidth(context) * 1,
        // height: displayWidth(context) * 1,

        child: Stack(
      children: [
        Column(children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Detail()),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image(
                  // width: 80.0.w,
                  height: 28.0.h,
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    'https://i.pinimg.com/originals/52/8b/64/528b64f9ae3ce0e09f30e7bd0e656fe1.jpg',
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 1.0.h),
          Padding(
            padding: EdgeInsets.only(right: 18.0.w),
            child: Text(
              'Malak Artweles',
              style: TextStyle(
                  fontFamily: 'PlayFair',
                  fontSize: 13.0.sp,
                  color: Color.fromRGBO(33, 45, 82, 1)),
            ),
          ),
          SizedBox(height: 1.0.h),
          Padding(
            padding: EdgeInsets.only(right: 7.6.w),
            child: Text(
              'Do you searching luxury hotels?',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 9.0.sp,
                color: Color.fromRGBO(153, 163, 196, 1),
              ),
            ),
          ),
          SizedBox(height: 0.4.h),
          Padding(
            padding: EdgeInsets.only(right: 23.8.w),
            child: Text(
              'This is only for you !',
              style: TextStyle(
                fontSize: 9.0.sp,
                color: Color.fromRGBO(153, 163, 196, 1),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 1.0.h),
          Padding(
            padding: EdgeInsets.only(right: 42.8.w),
            child: Text(
              'From',
              style: TextStyle(
                  fontSize: 10.0.sp,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(33, 45, 82, 1)),
            ),
          ),
          SizedBox(height: 1.0.h),
          Padding(
            padding: EdgeInsets.only(right: 40.5.w),
            child: Text(
              '\$230',
              style: TextStyle(
                  fontSize: 13.0.sp,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(33, 45, 82, 1)),
            ),
          ),
          SizedBox(height: 3.0.h),
        ]),
        Padding(
          padding: EdgeInsets.only(left: 43.0.w),
          child: IconButton(
            padding: EdgeInsets.only(top: 42.0.h),
            onPressed: () {
              setState(() {
                _isPressed = !_isPressed;
              });
            },
            icon: _isPressed
                ? Icon(
                    Icons.favorite_outlined,
                    color: Color.fromRGBO(71, 148, 255, 1),
                    size: 3.0.h,
                  )
                : Icon(
                    Icons.favorite_outline,
                    color: Color.fromRGBO(71, 148, 255, 1),
                    size: 3.0.h,
                  ),
          ),
        ),
      ],
    ));
    return Container(
      width: 34.0.h,
      child: Container(
          color: Color.fromRGBO(255, 255, 245, 0.5),
          //color: Colors.red,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: cardHome2,
          )),
    );
  }
}

class CardHome3 extends StatefulWidget {
  const CardHome3({Key key}) : super(key: key);

  @override
  _CardHome3State createState() => _CardHome3State();
}

class _CardHome3State extends State<CardHome3> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    final cardHome3 = Container(
        // width: displayWidth(context) * 1,
        //height: displayWidth(context) * 1,

        child: Stack(
      children: [
        Column(children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Detail()),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image(
                  // width: 80.0.w,
                  height: 28.0.h,
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    'http://static1.squarespace.com/static/56f2595e8a65e2db95a7d983/59708dbdb3db2bb651d60316/5cc2df23f16856000141c9aa/1556628432039/Luxury+Interiors+%281%29.jpg?format=1500w',
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 1.0.h),
          Padding(
            padding: EdgeInsets.only(right: 18.0.w),
            child: Text(
              'Cadiz Luminosa',
              style: TextStyle(
                  fontFamily: 'PlayFair',
                  fontSize: 13.0.sp,
                  color: Color.fromRGBO(33, 45, 82, 1)),
            ),
          ),
          SizedBox(height: 1.0.h),
          Padding(
            padding: EdgeInsets.only(right: 7.6.w),
            child: Text(
              'Do you searching luxury hotels?',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 9.0.sp,
                color: Color.fromRGBO(153, 163, 196, 1),
              ),
            ),
          ),
          SizedBox(height: 0.4.h),
          Padding(
            padding: EdgeInsets.only(right: 23.8.w),
            child: Text(
              'This is only for you !',
              style: TextStyle(
                fontSize: 9.0.sp,
                color: Color.fromRGBO(153, 163, 196, 1),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 1.0.h),
          Padding(
            padding: EdgeInsets.only(right: 42.8.w),
            child: Text(
              'From',
              style: TextStyle(
                  fontSize: 10.0.sp,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(33, 45, 82, 1)),
            ),
          ),
          SizedBox(height: 1.0.h),
          Padding(
            padding: EdgeInsets.only(right: 40.5.w),
            child: Text(
              '\$295',
              style: TextStyle(
                  fontSize: 13.0.sp,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(33, 45, 82, 1)),
            ),
          ),
          SizedBox(height: 3.0.h),
        ]),
        Padding(
          padding: EdgeInsets.only(left: 43.0.w),
          child: IconButton(
            padding: EdgeInsets.only(top: 42.0.h),
            onPressed: () {
              setState(() {
                _isPressed = !_isPressed;
              });
            },
            icon: _isPressed
                ? Icon(
                    Icons.favorite_outlined,
                    color: Color.fromRGBO(71, 148, 255, 1),
                    size: 3.0.h,
                  )
                : Icon(
                    Icons.favorite_outline,
                    color: Color.fromRGBO(71, 148, 255, 1),
                    size: 3.0.h,
                  ),
          ),
        ),
      ],
    ));
    return Container(
      width: 34.0.h,
      child: Container(
          color: Color.fromRGBO(255, 255, 245, 0.5),
          //color: Colors.red,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: cardHome3,
          )),
    );
  }
}
