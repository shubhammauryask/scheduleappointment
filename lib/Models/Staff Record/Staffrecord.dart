import 'package:flutter/material.dart';

class StaffRecordModel{
  final String Name;
  final String Profession;
  final String PhNo;
  final bool SuperAdmin;
  final bool Admin;
  final bool Guest;
  StaffRecordModel({
   required this.Name,
   required this.PhNo,
    required this.Profession,
   required this.SuperAdmin,
   required this.Admin,
    required this.Guest
});
}