import 'package:crafty_bay/features/product/create_review/create_review_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateReviewScreen extends GetView<CreateReviewScreenController> {
  const CreateReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: BackButton(),
        title: Text('Create Review'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          spacing: 15,
          children: [
            TextField(decoration: InputDecoration(hintText: 'First Name')),
            TextField(decoration: InputDecoration(hintText: 'Last Name')),
            TextField(
              maxLines: 7,
              decoration: InputDecoration(hintText: 'Write Review'),
            ),

            SizedBox(
              width: double.maxFinite,
              child: FilledButton(
                onPressed: controller.onSubmit,
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
