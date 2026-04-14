import 'package:flutter/material.dart';
void main() {
 runApp(const MyApp());
}
class MyApp extends StatelessWidget {
 const MyApp({super.key});
 @override
 Widget build(BuildContext context) {
 return const MaterialApp(
 home: MediaPage(),
 );
 }
}
class MediaPage extends StatelessWidget {
 const MediaPage({super.key});
 @override
 Widget build(BuildContext context) {
 final screenSize = MediaQuery.of(context).size;
 return Scaffold(
 appBar: AppBar(title: const Text("Image Handling")),
 body: Center(
 child: Column(
 mainAxisAlignment: MainAxisAlignment.center,
 children: [
 Image.network(
 "https://flutter.dev/assets/homepage/carousel/slide_1-bg-opaque-8e4c8fcdafaa3a32b4783dbd9e3f9a8a.png",
 width: screenSize.width * 0.8,
 height: screenSize.height * 0.3,
 fit: BoxFit.contain,
 ),
 const SizedBox(height: 20),
 const Text("Responsive Image Display"),
 ],
 ),
 ),
 );
 }
}