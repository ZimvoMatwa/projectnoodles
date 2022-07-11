import 'package:flutter/material.dart';
import 'package:projectnoodles/app/modules/home/widgets/user_slot.dart';

class SlotService extends StatelessWidget {
  const SlotService({
    Key? key,
    this.serviceColor = Colors.teal,
    this.serviceName,
  }) : super(key: key);

  final Color serviceColor;
  final String? serviceName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            serviceName ?? 'Exhibit 1',
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(width: 10),
        Container(
          width: MediaQuery.of(context).size.width * .85,
          height: 40,
          color: serviceColor,
          child: Row(
            children: const [
              UserSlot(
                slotColour: Colors.purple,
                slotDuration: .3,
                slotUser: 'S',
              ),
              UserSlot(
                slotColour: Colors.lightBlue,
                slotDuration: .3,
                slotUser: 'A',
              ),
              UserSlot(
                slotColour: Colors.orange,
                slotDuration: .2,
                slotUser: 'B',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
