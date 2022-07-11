import 'package:flutter/material.dart';

class UserSlot extends StatelessWidget {
  const UserSlot(
      {Key? key,
      this.slotDuration = .2,
      this.slotColour = Colors.purple,
      this.slotUser = 'Z'})
      : super(key: key);
  final double slotDuration; //duration in minutes
  final Color slotColour;
  final String slotUser;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        5,
        5,
        (MediaQuery.of(context).size.width * slotDuration) / 2,
        5,
      ),
      width: MediaQuery.of(context).size.width * slotDuration,
      color: slotColour,
      child: CircleAvatar(
        // foregroundColor: Colors.white,
        backgroundColor: Colors.amberAccent,
        child: Text(slotUser, style: const TextStyle(color: Colors.white)),
      ),
    );
  }
}
