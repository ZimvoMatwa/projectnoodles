import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:projectnoodles/app/modules/home/controllers/home_controller.dart';
import 'package:projectnoodles/app/modules/home/widgets/service_slot.dart';
import 'package:projectnoodles/app/routes/app_pages.dart';

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
      body: Stack(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          Container(
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
          const SizedBox(height: 50),
          const Text('Floaties'),
          const SizedBox(height: 10),
          SizedBox(
            width: controller.floaties.length * 50,
            height: 40,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: controller.floaties.length,
                itemBuilder: (context, __) {
                  return Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: CircleAvatar(
                      backgroundColor: controller.floaties[__].memberColour,
                      child: Text(
                        controller.floaties[__].memberName!,
                        style: TextStyle(
                          color: Colors.black.withOpacity(.5),
                          fontWeight: FontWeight.w500,
                          height: 1.2222,
                        ),
                      ),
                    ),
                  );
                }),
          ),
          Obx(() {
            return controller.pressed
                ? Positioned(
                    bottom: MediaQuery.of(context).size.height * .1,
                    left: MediaQuery.of(context).size.width * .1,
                    child: Dialog(
                      insetAnimationCurve: Curves.easeIn,
                      insetAnimationDuration: const Duration(milliseconds: 300),
                      child: Column(
                        children: [
                          const SizedBox(height: 20),
                          TextButton(
                              style: ButtonStyle(
                                minimumSize: MaterialStateProperty.all(
                                  const Size(300, 40),
                                ),
                              ),
                              onPressed: () {},
                              child: Text('Add Members')),
                          // const SizedBox(height: 20),
                          TextButton(
                              style: ButtonStyle(
                                minimumSize: MaterialStateProperty.all(
                                  const Size(300, 40),
                                ),
                              ),
                              onPressed: () {},
                              child: Text('Book Member')),
                          // const SizedBox(height: 20),
                          TextButton(
                              style: ButtonStyle(
                                minimumSize: MaterialStateProperty.all(
                                    const Size(300, 40)),
                              ),
                              onPressed: () {
                                Get.back();
                                Get.toNamed(Routes.ADD_SERVICES);
                              },
                              child: Text('Add Services')),
                          SizedBox(
                              height: MediaQuery.of(context).size.height * .3),
                        ],
                      ),
                    ),
                  )
                : Container();
          }),

          /// to make the stack take full height
          const Align(
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.pressed = !controller.pressed;
        },
        backgroundColor: Colors.blueGrey,
        child: Obx(() => Icon(controller.pressed ? Icons.remove : Icons.add)),
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
