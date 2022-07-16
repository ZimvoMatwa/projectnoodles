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
      padding: const EdgeInsets.symmetric(vertical: 5),
      width: MediaQuery.of(context).size.width * slotDuration,
      color: slotColour,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            // foregroundColor: Colors.white,
            backgroundColor: Colors.white30,
            child: Text(
              slotUser,
              style: TextStyle(
                color: Colors.black.withOpacity(.5),
                fontWeight: FontWeight.w500,
                height: 1.2222,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
