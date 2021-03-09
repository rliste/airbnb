import 'package:airbnb_rigel/src/views/detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:intl/intl.dart';

import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class CalendarData extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CalendarDataState();
  }
}

class _CalendarDataState extends State<CalendarData> {
  @override

  // DateTime selectedDate = DateTime.now(); //fecha entrada
  String _fechaEntrada;
  String _fechaSalida;
  String _diaEntrada;
  String _diaSalida;
  DateTime fechaEntradaDateTime;
  DateTime fechaSalidaDateTime;

  @override
  void initState() {
    _fechaEntrada = '';
    _diaEntrada = '';
    _diaSalida = '';
    _fechaSalida = '';
    _selectedDate = '';
    _dateCount = '';
    _range = '';
    _rangeCount = '';
    super.initState();
  }

  String _selectedDate;
  String _dateCount;
  String _range;
  String _rangeCount;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 241, 241, 1),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            height: 4.0.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50)),
              color: Color.fromRGBO(240, 241, 241, 1),
            ),
          ),
          Stack(children: [
            IconButton(
              alignment: Alignment.topLeft,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Detail()),
                );
              },
              padding: EdgeInsets.only(left: 6.0.w),
              icon: Icon(
                Icons.arrow_back_outlined,
                color: Color.fromRGBO(33, 45, 82, 1),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(right: 1.0.w),
                child: Text(
                  'Select dates',
                  style: TextStyle(
                    fontSize: 15.4.sp,
                    color: Color.fromRGBO(33, 45, 82, 1),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            )
          ]),
          SizedBox(height: 1.8.h),
          Center(
              child: Container(
            height: 42.0.h,
            width: 86.0.w,
            decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.5),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 1,
                      spreadRadius: 1,
                      color: Colors.grey.withOpacity(0.1),
                      offset: Offset(0, 1))
                ]),
            //CALENDARIO VA AQUI
            child: calendar(),
          )),
          SizedBox(height: 2.0.h),
          Container(
              width: 86.0.w,
              height: 20.0.h,
              decoration: BoxDecoration(
                  //color: Colors.red,
                  color: Color.fromRGBO(255, 255, 255, 0.5),
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 1,
                        spreadRadius: 1,
                        color: Colors.grey.withOpacity(0.1),
                        offset: Offset(0, 1)),
                  ]),
              child: Column(
                children: [
                  SizedBox(height: 2.0.h),
                  Center(
                      child: Text('Book a Room',
                          style: TextStyle(
                            fontSize: 14.0.sp,
                            color: Color.fromRGBO(33, 45, 82, 1),
                            fontWeight: FontWeight.w500,
                          ))),
                  Stack(
                    children: [
                      Positioned(
                          left: 4.0.w,
                          // padding: EdgeInsets.only(right: 50.0.w),
                          child: Container(
                            width: 40.0.w,
                            child: Column(children: [
                              SizedBox(
                                height: 2.0.h,
                              ),
                              Container(
                                width: 40.0.w,
                                child: Text(
                                  'CHECK IN',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(68, 74, 106, 1),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 8.0.sp),
                                ),
                              ),
                              SizedBox(
                                height: 1.0.h,
                              ),
                              Container(
                                width: 40.0.w,
                                child: Text(
                                  '$_fechaEntrada',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 14.0.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(33, 45, 82, 1)),
                                ),
                              ),
                              //crearFechaEntrada(context),
                              SizedBox(
                                height: 1.0.h,
                              ),
                              Container(
                                width: 40.0.w,
                                child: Text(
                                  '$_diaEntrada',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(68, 74, 106, 1),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 11.0.sp),
                                ),
                              )
                            ]),
                          )),
                      Center(
                        child: Container(
                            height: 14.0.h,
                            width: 6.0.h,
                            child: SvgPicture.asset(
                                'assets/images/calendario.svg',
                                fit: BoxFit.contain,
                                width: 6.0.h,
                                height: 6.0.h)),
                      ),
                      Positioned(
                          left: 54.0.w,
                          child: Container(
                            width: 28.0.w,
                            child: Column(children: [
                              SizedBox(
                                height: 2.0.h,
                              ),
                              Container(
                                width: 40.0.w,
                                child: Text(
                                  'CHECK OUT',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: Color.fromRGBO(68, 74, 106, 1),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 8.0.sp),
                                ),
                              ),
                              SizedBox(
                                height: 1.0.h,
                              ),
                              Container(
                                width: 40.0.w,
                                child: Text(
                                  '$_fechaSalida',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontSize: 14.0.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(33, 45, 82, 1)),
                                ),
                              ),

                              //crearFechaSalida(context),
                              SizedBox(
                                height: 1.0.h,
                              ),
                              Container(
                                width: 40.0.w,
                                child: Text(
                                  '$_diaSalida',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: Color.fromRGBO(68, 74, 106, 1),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 11.0.sp),
                                ),
                              ),
                            ]),
                          )),
                    ],
                  ),
                ],
              )),
          SizedBox(height: 2.0.h),
          Container(
              height: 10.0.h,
              width: 86.0.w,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.5),
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 1,
                        spreadRadius: 1,
                        color: Colors.grey.withOpacity(0.1),
                        offset: Offset(0, 1))
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Column(
                      children: [
                        SizedBox(height: 1.6.h),
                        Text('Room', style: TextStyle(fontSize: 11)),
                        SizedBox(height: 1.6.h),
                        Text('01', style: TextStyle(fontSize: 11))
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 2.0.h),
                    child: VerticalDivider(
                      endIndent: 2.0.h,
                      color: Color.fromRGBO(138, 150, 190, 0.2),
                      thickness: 1.6,
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        SizedBox(height: 1.6.h),
                        Text('Adult', style: TextStyle(fontSize: 11)),
                        SizedBox(height: 1.6.h),
                        Text('02', style: TextStyle(fontSize: 11))
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 2.0.h),
                    child: VerticalDivider(
                      endIndent: 2.0.h,
                      color: Color.fromRGBO(138, 150, 190, 0.2),
                      thickness: 1.6,
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        SizedBox(height: 1.6.h),
                        Text('Child', style: TextStyle(fontSize: 11)),
                        SizedBox(height: 1.6.h),
                        Text('0', style: TextStyle(fontSize: 11))
                      ],
                    ),
                  ),
                ],
              )),
          SizedBox(height: 4.0.h),
          Center(
            child: Container(
                height: 7.0.h,
                width: 86.0.w,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(71, 148, 255, 1),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: TextButton(
                  onPressed: () {},
                  child: Center(
                      child: Text('BOOK ROOM',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 11.0.sp,
                              color: Colors.white))),
                )),
          ),
        ],
      ),
    );
  }

  Widget calendar() {
    return Container(
        child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Stack(
        children: <Widget>[
          Container(
            child: SfDateRangePicker(
              initialSelectedRange: PickerDateRange(
                  DateTime.now().subtract(const Duration(days: 4)),
                  DateTime.now().add(const Duration(days: 3))),
              monthFormat: 'MMMM',
              initialSelectedDate: DateTime.now(),
              initialDisplayDate: DateTime.now(),
              todayHighlightColor: Colors.transparent,
              startRangeSelectionColor: Color.fromRGBO(71, 148, 255, 1),
              endRangeSelectionColor: Color.fromRGBO(71, 148, 255, 1),
              rangeSelectionColor: Color.fromRGBO(71, 148, 255, 0.2),
              enablePastDates: false,
              onSelectionChanged: _onSelectionChanged,
              selectionMode: DateRangePickerSelectionMode.range,
              rangeTextStyle: TextStyle(
                  color: Color.fromRGBO(33, 45, 82, 1),
                  fontWeight: FontWeight.w500,
                  fontSize: 11),
              selectionTextStyle:
                  TextStyle(fontWeight: FontWeight.w500, fontSize: 11),
              //Dias seleccionados datapicked

              headerStyle: DateRangePickerHeaderStyle(
                  //Cabecera
                  textAlign: TextAlign.center,
                  textStyle: TextStyle(
                    color: Color.fromRGBO(33, 45, 82, 1),
                  )),

              monthCellStyle: DateRangePickerMonthCellStyle(
                  //Celdas del calendario
                  disabledDatesTextStyle: TextStyle(
                      color: Color.fromRGBO(140, 152, 191, 1),
                      fontWeight: FontWeight.w500,
                      fontSize: 11),
                  textStyle: TextStyle(
                      color: Color.fromRGBO(33, 45, 82, 1),
                      fontWeight: FontWeight.w500,
                      fontSize: 11),
                  todayTextStyle: TextStyle(
                      color: Color.fromRGBO(140, 152, 191, 1),
                      fontWeight: FontWeight.w500,
                      fontSize: 11)),

              monthViewSettings: DateRangePickerMonthViewSettings(
                  //Settings celdas
                  viewHeaderStyle: DateRangePickerViewHeaderStyle(
                      textStyle: TextStyle(
                          color: Color.fromRGBO(140, 152, 191, 1),
                          fontWeight: FontWeight.w500,
                          fontSize: 11) // Colores dia semana+
                      ),
                  firstDayOfWeek: 1,
                  dayFormat: 'EEE',
                  enableSwipeSelection: false),
            ),
          )
        ],
      ),
    ));
  }

  // Funciones

  DateTime convertDateFromString(String strDate, DateTime todayDate) {
    DateTime todayDate = new DateFormat('MMM dd')
        .parse(strDate)
        .add(const Duration(days: 18628));

    print(todayDate);
    return todayDate;
  }

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      if (args.value is PickerDateRange) {
        _fechaEntrada =
            DateFormat('MMM dd').format(args.value.startDate).toString();
        convertDateFromString(_fechaEntrada, fechaEntradaDateTime);
        _fechaSalida = DateFormat('MMM dd')
            .format(args.value.endDate ?? args.value.startDate)
            .toString();
        convertDateFromString(_fechaSalida, fechaSalidaDateTime);
        _diaEntrada = DateFormat('EEEE')
            .format(args.value.startDate ?? args.value.startDate)
            .toString();
        _diaSalida = DateFormat('EEEE')
            .format(args.value.endDate ?? args.value.startDate)
            .toString();
      } else if (args.value is DateTime) {
        _selectedDate = args.value;
      } else if (args.value is List<DateTime>) {
        _dateCount = args.value.length.toString();
      } else {
        _rangeCount = args.value.length.toString();
      }
    });
  }
}
