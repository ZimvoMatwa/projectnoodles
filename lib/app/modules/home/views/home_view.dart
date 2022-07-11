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
                color: Colors.red,
                width: MediaQuery.of(context).size.width * .95,
                height: 200,
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FilteredTime(filteredTime: 10),
                        FilteredTime(filteredTime: 11),
                        FilteredTime(filteredTime: 12),
                        FilteredTime(filteredTime: 13),
                        FilteredTime(filteredTime: 14),
                        FilteredTime(filteredTime: 15),
                      ],
                    ),
                    const SlotService(),
                    const SlotService(
                      serviceName: 'Ex 2',
                    ),
                    const SlotService(
                      serviceName: 'Ex 3',
                    ),
                    const SlotService(
                      serviceName: 'Ex 4',
                    ),
                  ],
                ),
              ),
            ),
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
      color: Colors.green,
      width: MediaQuery.of(context).size.width * .14,
      child: Center(child: Text(filteredTime.toString())),
    );
  }
}
