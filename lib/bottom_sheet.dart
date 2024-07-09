import 'package:flutter/material.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({super.key});

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  late TextEditingController nameTextController;
  late TextEditingController phoneNumberTextController;
  late TextEditingController emailTextController;

  late String conName;
  late String conPhone;
  late String conEmail;

  @override
  void initState() {
    nameTextController.addListener(() {
      setState(() {
        conName = nameTextController.text;
      });
    });
    phoneNumberTextController.addListener(() {
      setState(() {
        conPhone = phoneNumberTextController.text;
      });
    });
    emailTextController.addListener(() {
      setState(() {
        conEmail = emailTextController.text;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    nameTextController.dispose();
    phoneNumberTextController.dispose();
    emailTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(
          children: [
            TextField(
              controller: nameTextController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'Name',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: phoneNumberTextController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'Phone Number',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: emailTextController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'Email',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Update'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
