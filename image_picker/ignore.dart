// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'dart:io';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:app_settings/app_settings.dart';
// import 'package:get/get.dart';

// class LandingPage extends StatefulWidget {
//   const LandingPage({super.key});

//   @override
//   State<LandingPage> createState() => _ImagLandingState();
// }

// class _ImagLandingState extends State<LandingPage> {
//   XFile? image;
//   Future buildShowImageSourceDialog(BuildContext context) {
//     if (Platform.isAndroid) {
//       return showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             title: Text(
//               "Pick image from?",
//               style: Theme.of(context).textTheme.subtitle1,
//             ),
//             actions: <Widget>[
//               TextButton(
//                 child: const Text("CAMERA"),
//                 onPressed: () {
//                   getImageFromCamera();
//                   Navigator.pop(context);
//                 },
//               ),
//               TextButton(
//                 child: const Text("GALLERY"),
//                 onPressed: () {
//                   getImageFromGallery();
//                   Navigator.of(context).pop();
//                 },
//               ),
//               TextButton(
//                 child: const Text("CLOSE"),
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//               ),
//             ],
//           );
//         },
//       );
//     } else {
//       return showCupertinoModalPopup<void>(
//         context: context,
//         builder: (BuildContext context) => CupertinoActionSheet(
//           title: Text(
//             "Pick image from?",
//             style: Theme.of(context).textTheme.subtitle1,
//           ),
//           actions: <CupertinoActionSheetAction>[
//             CupertinoActionSheetAction(
//               child: const Text('CAMERA'),
//               onPressed: () {
//                 getImageFromCamera();
//                 Navigator.pop(context);
//               },
//             ),
//             CupertinoActionSheetAction(
//               child: const Text('GALLERY'),
//               onPressed: () {
//                 getImageFromGallery();
//                 Navigator.pop(context);
//               },
//             )
//           ],
//           cancelButton: CupertinoActionSheetAction(
//             child: const Text('Cancel'),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             isDestructiveAction: true,
//           ),
//         ),
//       );
//     }
//   }

//   Future getImageFromGallery() async {
//     XFile? image2 = await ImagePicker()
//         .pickImage(source: ImageSource.gallery, imageQuality: 60);
//     if (image2 != null) {
//       setState(() {
//         image = image2;
//       });
//     }
//   }

//   Future getImageFromCamera() async {
//     XFile? image1 = await ImagePicker()
//         .pickImage(source: ImageSource.camera, imageQuality: 60);
//     if (image1 != null) {
//       setState(() {
//         image = image1;
//       });
//     }
//   }

//   File getFile() {
//     return File(image!.path);
//   }

//   ImageProvider getImage() {
//     return FileImage(File(image!.path));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(' Moin\'s Image Picker'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text('Upload an image'),
//             if (image == null)
//               InkWell(
//                 borderRadius: BorderRadius.circular(10),
//                 onTap: () async {
//                   var photoPermission =
//                       await Permission.photos.request().isGranted;
//                   var cameraPermission =
//                       await Permission.camera.request().isGranted;
//                   if (cameraPermission && photoPermission) {
//                     buildShowImageSourceDialog(context);
//                   } else {
//                     Get.snackbar(
//                       'Alert',
//                       'Please enable us to access the camera and gallery.',
//                       mainButton: TextButton(
//                         onPressed: () async {
//                           await AppSettings.openAppSettings();
//                         },
//                         child: const Text('Enable'),
//                       ),
//                     );
//                   }
//                 },
//                 child: Container(
//                   margin: const EdgeInsets.all(5),
//                   alignment: Alignment.center,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(10),
//                     border: Border.all(
//                       width: 0.5,
//                       color: Colors.grey.withOpacity(0.5),
//                     ),
//                   ),
//                   height: 50,
//                   width: 50,
//                   child: Icon(
//                     Icons.add_a_photo,
//                     size: 30,
//                     color: Colors.deepPurple,
//                   ),
//                 ),
//               )
//             else
//               Container(
//                 margin: const EdgeInsets.all(5),
//                 alignment: Alignment.center,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(10),
//                   border: Border.all(
//                       width: 0.5, color: Colors.grey.withOpacity(0.5)),
//                   // image: DecorationImage(image: FileImage(url), fit: BoxFit.cover)),
//                   image: DecorationImage(image: getImage(), fit: BoxFit.cover),
//                 ),
//                 height: 50,
//                 width: 50,
//                 child: Stack(
//                   children: <Widget>[
//                     Positioned(
//                       top: -12,
//                       right: -13,
//                       child: IconButton(
//                         icon: CircleAvatar(
//                             radius: 12.0,
//                             backgroundColor: Theme.of(context).primaryColor,
//                             child: const Icon(
//                               Icons.close,
//                               color: Colors.white,
//                               size: 10,
//                             )),
//                         onPressed: () {
//                           setState(() {
//                             image = null;
//                           });
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }
