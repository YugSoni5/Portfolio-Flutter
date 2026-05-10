import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  Future<void> submitDetails() async {
    final String name = nameController.text.trim();
    final String phone = phoneController.text.trim();

    if (name.isEmpty || phone.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please fill all details"),
        ),
      );
      return;
    }

    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'yug02soni@gmail.com',
      queryParameters: {
        'subject': 'New Contact Request',
        'body': 'Name: $name\nPhone: $phone',
      },
    );

    final bool launched = await launchUrl(emailUri);

    if (launched && mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Details are submitted"),
        ),
      );
    }
  }

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Contact Us",
          style: TextStyle(fontFamily: 'poppins'),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              const Text(
                "Enter your Name",
                style: TextStyle(
                  fontSize: 22.5,
                  fontFamily: 'poppins',
                ),
              ),

              TextField(
                controller: nameController,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 22),
              ),

              const SizedBox(height: 30),

              const Text(
                "Enter your Phone Number",
                style: TextStyle(
                  fontSize: 22.5,
                  fontFamily: 'poppins',
                ),
              ),

              TextField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 22),
              ),

              const SizedBox(height: 30),

              FilledButton(
                onPressed: submitDetails,
                style: ButtonStyle(
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                child: const Text(
                  "Submit It !!",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}