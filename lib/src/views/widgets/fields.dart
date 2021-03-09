import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

final TextEditingController _emailEditingController = TextEditingController();
final TextEditingController _passEditingController = TextEditingController();
final TextEditingController _confirmPassEditingController =
    TextEditingController();

final FocusNode _emailFocusNode = FocusNode();
final FocusNode _passFocusNode = FocusNode();
final FocusNode _confirmPassFocusNode = FocusNode();

Widget ingresoEmail() {
  return Container(
    height: 6.2.h,
    width: 78.0.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      color: Colors.white,
    ),
    child: TextField(
      style: TextStyle(
          color: Color.fromRGBO(33, 45, 82, 1),
          decoration: TextDecoration.none),
      //focusNode: _emailFocusNode,
      keyboardType: TextInputType.emailAddress,
      //keyboardActionIcon: TextInputAction.next,
      controller: _emailEditingController,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 20.0),
          hintText: 'ejemplo@email.com',
          hintStyle: TextStyle(
              color: Color.fromRGBO(153, 163, 196, 1),
              decoration: TextDecoration.none),
          fillColor: Colors.white,
          //labelText: 'Email',
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          errorBorder: InputBorder.none),
    ),
  );
}

Widget ingresoPassword() {
  return Container(
    height: 6.2.h,
    width: 78.0.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      color: Colors.white,
    ),
    child: TextField(
      obscureText: true,
      style: TextStyle(
          fontSize: 20.0,
          color: Color.fromRGBO(33, 45, 82, 1),
          decoration: TextDecoration.none),
      focusNode: _passFocusNode,
      controller: _passEditingController,
      //keyboardActionIcon: TextInputAction.next,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 20.0),
          hintText: 'Password',
          hintStyle: TextStyle(
              color: Color.fromRGBO(153, 163, 196, 1),
              decoration: TextDecoration.none,
              fontSize: 16.0),
          fillColor: Colors.white,
          //labelText: 'Email',
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          errorBorder: InputBorder.none),
    ),
  );
}

Widget confirmarPassword() {
  return Container(
    height: 6.2.h,
    width: 78.0.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      color: Colors.white,
    ),
    child: TextField(
      obscureText: true,
      style: TextStyle(
          fontSize: 20.0,
          color: Color.fromRGBO(33, 45, 82, 1),
          decoration: TextDecoration.none),
      focusNode: _confirmPassFocusNode,
      controller: _confirmPassEditingController,
      //keyboardActionIcon: TextInputAction.next,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 20.0),
          hintText: 'Password',
          hintStyle: TextStyle(
              color: Color.fromRGBO(153, 163, 196, 1),
              decoration: TextDecoration.none,
              fontSize: 16.0),
          fillColor: Colors.white,
          //labelText: 'Email',
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          errorBorder: InputBorder.none),
    ),
  );
}

Widget searchApartament() {
  final TextEditingController _searchController = TextEditingController();
  return Container(
    height: 9.0.h,
    width: 86.0.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.white,
    ),
    child: TextField(
      style: TextStyle(
          color: Color.fromRGBO(33, 45, 82, 1),
          decoration: TextDecoration.none),
      //focusNode: _emailFocusNode,
      keyboardType: TextInputType.streetAddress,
      //keyboardActionIcon: TextInputAction.next,
      controller: _searchController,
      decoration: InputDecoration(
          suffixIcon: Padding(
            padding: EdgeInsets.only(top: 1.0.w, right: 1.0.w),
            child: Container(
              width: 7.6.h,
              height: 7.6.h,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(71, 148, 255, 1),
                  borderRadius: BorderRadius.circular(10.0)),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 4.0.h,
                ),
              ),
            ),
          ),
          contentPadding: EdgeInsets.only(left: 3.0.w, top: 3.0.h),
          hintText: 'Search your apartaments....',
          hintStyle: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 11.8.sp,
              color: Color.fromRGBO(153, 163, 196, 1),
              decoration: TextDecoration.none),
          fillColor: Colors.white,
          //labelText: 'Email',
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none),
    ),
  );
}
