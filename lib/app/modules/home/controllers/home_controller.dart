import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final List<MemberBooking> _activeMember = [
    MemberBooking(
      memberName: 'Z',
      memberHours: .2,
      memberColour: Colors.purple,
    ),
    MemberBooking(
      memberName: 'S',
      memberHours: .3,
      memberColour: Colors.lightBlue,
    ),
    MemberBooking(
      memberName: 'A',
      memberHours: .35,
      memberColour: Colors.orange,
    ),
  ];

  final List<NoodlesExhibit> _exhibits = [
    NoodlesExhibit(
      exhibitName: 'Ex 1',
      exhibitMembers: <MemberBooking>[
        MemberBooking(
          memberName: 'Z',
          memberHours: .2,
          memberColour: Colors.purple,
        ),
        MemberBooking(
          memberName: 'S',
          memberHours: .3,
          memberColour: Colors.lightBlue,
        ),
        MemberBooking(
          memberName: 'A',
          memberHours: .35,
          memberColour: Colors.orange,
        ),
      ],
      exhibitDuration: 1,
    ),
    NoodlesExhibit(
      exhibitName: 'Ex 1',
      exhibitMembers: <MemberBooking>[
        MemberBooking(
          memberName: 'Z',
          memberHours: .15,
          memberColour: Colors.lightBlue,
        ),
        MemberBooking(
          memberName: 'S',
          memberHours: .35,
          memberColour: Colors.orange,
        ),
        MemberBooking(
          memberName: 'A',
          memberHours: .27,
          memberColour: Colors.blueGrey,
        ),
      ],
      exhibitDuration: 1,
    ),
    NoodlesExhibit(
      exhibitName: 'Ex 3',
      exhibitMembers: <MemberBooking>[
        MemberBooking(
          memberName: 'Z',
          memberHours: .4,
          memberColour: Colors.green,
        ),
        MemberBooking(
          memberName: 'S',
          memberHours: .1,
          memberColour: Colors.pink,
        ),
        MemberBooking(
          memberName: 'A',
          memberHours: .12,
          memberColour: Colors.yellow,
        ),
      ],
      exhibitDuration: 1,
    ),
  ];

  List<MemberBooking> get activeMember => _activeMember;
  List<NoodlesExhibit> get exhibits => _exhibits;
}

class MemberBooking {
  final double? memberHours;
  final String? memberName;
  final Color? memberColour;
  final String? exhibit;
  MemberBooking({
    this.memberName,
    this.memberHours,
    this.memberColour,
    this.exhibit,
  });
}

class NoodlesExhibit {
  final String? exhibitName;
  final List<MemberBooking>? exhibitMembers;
  final double? exhibitDuration;

  NoodlesExhibit({this.exhibitName, this.exhibitMembers, this.exhibitDuration});
}
