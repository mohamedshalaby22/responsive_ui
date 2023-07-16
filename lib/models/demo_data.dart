import 'package:flutter/material.dart';

class Email {
  final String image, name, subject, time;
  final bool isAttachmentAvailable, isChecked;
  final Color tagColor;

  Email({
    required this.time,
    required this.isChecked,
    required this.image,
    required this.name,
    required this.subject,
    required this.isAttachmentAvailable,
    required this.tagColor,
  });
}

List<Email> demoData = [
  Email(
    time: "Now",
    isChecked: true,
    image: "assets/user_1.png",
    name: "Apple",
    subject: "iPhone 12 is here",
    isAttachmentAvailable: false,
    tagColor: Colors.transparent,
  ),
  Email(
    time: "15:32",
    isChecked: true,
    image: "assets/user_2.png",
    name: "Elvia Atkins",
    subject: "Inspiration for our new home",
    isAttachmentAvailable: true,
    tagColor: Colors.transparent,
  ),
  Email(
    time: "14:27",
    isChecked: true,
    image: "assets/user_3.png",
    name: "Marvin Kiehn",
    subject: "Business-focused empowering the world",
    isAttachmentAvailable: true,
    tagColor: Colors.transparent,
  ),
  Email(
    time: "10:43",
    isChecked: true,
    image: "assets/user_4.png",
    name: "Domenic Bosco",
    subject: "The fastest way to Design",
    isAttachmentAvailable: false,
    tagColor: const Color(0xFF23CF91),
  ),
  Email(
    time: "9:58",
    isChecked: true,
    image: "assets/user_5.png",
    name: "Elenor Bauch",
    subject: "New job opportunities",
    isAttachmentAvailable: false,
    tagColor: const Color(0xFF3A6FF7),
  ),
];
String emailDemoText =
    "Corporis illo provident. Sunt omnis neque et aperiam. Nemo ut dolorum fugit eum sed. Corporis illo provident. Sunt omnis neque et aperiam. Nemo ut dolorum fugit eum sed. Corporis illo provident. Sunt omnis neque et aperiam. Nemo ut dolorum fugit eum sed";
