import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
        actions: [Text('Today')],
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
                height: 200,
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        SizedBox(width: 15),
                        Text('10'),
                        Text('11'),
                        Text('12'),
                        Text('13'),
                        Text('14'),
                        Text('15'),
                      ],
                    ),
                    const _services(serviceColor: Colors.blue),
                    const _services(
                      serviceColor: Colors.purple,
                      serviceName: 'Ex 2',
                      serviceDuration: .35,
                    ),
                    const _services(
                      serviceColor: Colors.orange,
                      serviceName: 'Ex 3',
                      serviceDuration: .67,
                    ),
                    const _services(
                      serviceColor: Colors.teal,
                      serviceName: 'Ex 4',
                      serviceDuration: .45,
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

class _services extends StatelessWidget {
  const _services({
    Key? key,
    this.serviceColor = Colors.teal,
    this.serviceName,
    this.serviceDuration = .85,
  }) : super(key: key);

  final Color serviceColor;
  final String? serviceName;
  final double serviceDuration;

  ///use datetime?

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(serviceName ?? 'Ex 1'),
        const SizedBox(width: 10),
        Container(
          width: MediaQuery.of(context).size.width * serviceDuration,
          height: 40,
          color: serviceColor,
        ),
      ],
    );
  }
}
