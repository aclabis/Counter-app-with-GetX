import 'package:counterapp/getx_vm.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
        title:const Text("Counter App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const Text("Tap to increment the value :"),
            Obx(
              () => Text(
                controller.count.toString(),
                style:const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increament();
        },
        child:const Icon(Icons.add),
      ),
    );
  }
}
