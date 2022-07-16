import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:projectnoodles/app/modules/home/widgets/service_slot.dart';
import 'package:projectnoodles/app/modules/home/widgets/user_slot.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Badge(
            badgeContent:
                const Text('3', style: TextStyle(color: Colors.white)),
            badgeColor: Colors.redAccent,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.blueGrey,
                shape: BoxShape.circle,
              ),
              child: const Center(child: Icon(Icons.person, size: 35)),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Center(
              child: Container(
                // color: Colors.red,
                width: MediaQuery.of(context).size.width * .95,
                height: controller.exhibits.length * 45,
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        //get hours from user class
                        FilteredTime(filteredTime: 10),
                        FilteredTime(filteredTime: 11),
                        FilteredTime(filteredTime: 12),
                        FilteredTime(filteredTime: 13),
                        FilteredTime(filteredTime: 14),
                        FilteredTime(filteredTime: 15),
                      ],
                    ),
                    Container(
                      // color: Colors.pink,
                      height: controller.exhibits.length * 40,
                      constraints: const BoxConstraints(minHeight: 10),
                      child: ListView.builder(
                          itemCount: controller.exhibits.length,
                          itemBuilder: (context, __) {
                            return SlotService(
                              serviceName: controller.exhibits[__].exhibitName,
                              activeMembers:
                                  controller.exhibits[__].exhibitMembers!,
                            );
                          }),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50),
            const Text('Floaties'),
            const SizedBox(height: 40),
            Container(
              // color: Colors.pink,

              width: 100, //controller.exhibits.length * 40,
              height: 40,
              child: CircleAvatar(
                // foregroundColor: Colors.white,
                backgroundColor:
                    controller.exhibits[0].exhibitMembers![0].memberColour,
                child: Text(
                  controller.exhibits[0].exhibitMembers![0].memberName!,
                  style: TextStyle(
                    color: Colors.black.withOpacity(.5),
                    fontWeight: FontWeight.w500,
                    height: 1.2222,
                  ),
                ),
              ),
              // ListView.builder(
              //     scrollDirection: Axis.horizontal,
              //     shrinkWrap: true,
              //     itemCount: controller.exhibits.length,
              //     itemBuilder: (context, __) {
              //       return SlotService(
              //         serviceName: controller.exhibits[__].exhibitName,
              //         activeMembers: controller.exhibits[__].exhibitMembers!,
              //       );
              //     }),
            )
          ],
        ),
      ),
    );
  }
}

class FilteredTime extends StatelessWidget {
  const FilteredTime({
    Key? key,
    this.filteredTime = 10,
  }) : super(key: key);
  final int filteredTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green.withOpacity(.4),
      width: MediaQuery.of(context).size.width * .1415,
      child: Center(
        child: Text(
          filteredTime.toString(),
          style: const TextStyle(
            color: Colors.black,
            height: 1.2222,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
