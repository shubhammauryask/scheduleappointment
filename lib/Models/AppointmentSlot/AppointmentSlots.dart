import 'package:flutter/cupertino.dart';

class AppointmentSlotsModel{
  final String number;
  final String startTime;
  final String amorpmStart;
  final String endTime;
  final String amorpmEnd;

  AppointmentSlotsModel({
    required this.number,
    required this.startTime,
    required this.amorpmStart,
    required this.endTime,
    required this.amorpmEnd
});
}