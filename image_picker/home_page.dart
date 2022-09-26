import 'package:all_fields/display.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';
import 'package:get/get.dart';
import 'package:path/path.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  File? _image;
  Future getImage(ImageSource) async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource);
      if (image == null) {
        return;
      }
      //final temporaryImage = File(image.path);
      final permanentImage = File(image.path);
      setState(() {
        this._image = permanentImage;
      });
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  Future<File> saveFilePermanently(String imagePath) async {
    final directory = await getApplicationDocumentsDirectory();
    final name = basename(imagePath);
    final image = File('${directory.path}/$name');
    return File(imagePath).copy(image.path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Moin\'s Image Picker Tutorial'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            // Container(decoration: BoxDecoration( image: DecorationImage(image: FileImage(File(
            // _image!.path != null ? FileImage(File(_image!.path)): FileImage ),
            // ),
            // ),
            // ) ,),
            Container(
              height: 400,
              width: 400,
              child: Stack(children: <Widget>[
                Positioned(
                    top: 1,
                    right: 1,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          _image = null;
                        });
                      },
                      icon: CircleAvatar(
                        radius: 30,
                        child: Icon(Icons.close),
                      ),
                    )),
                _image != null
                    ? Image.file(
                        _image!,
                        fit: BoxFit.contain,
                      )
                    : Image.network(
                        "https://host.sonspring.com/domgallery/img/placeholder.gif",
                        height: 400,
                        width: 400,
                      ),
              ]),
            ),
            ElevatedButton.icon(
                onPressed: () {
                  getImage(ImageSource.gallery);
                },
                icon: Icon(Icons.image),
                label: Text('Gallery')),
            ElevatedButton.icon(
                onPressed: () {
                  getImage(ImageSource.camera);
                },
                icon: Icon(Icons.camera),
                label: Text('Camera')),
            ElevatedButton(
                onPressed: () {
                  Get.to(DisplayPage());
                },
                child: Text('SELECT IMAGE'))
          ],
        ),
      ),
    );
  }
}
