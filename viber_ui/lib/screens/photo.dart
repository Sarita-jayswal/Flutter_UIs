import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ImageSelect extends StatefulWidget {
  const ImageSelect({Key? key}) : super(key: key);

  @override
  _ImageSelectState createState() => _ImageSelectState();
}

class _ImageSelectState extends State<ImageSelect> {
  File? _image;

  final _picker = ImagePicker();

  Future<void> _openImagePicker() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  Future<void> _openCameraPicker() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.camera);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Image Picker'),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(35),
            child: Column(children: [
              Center(
                child: ElevatedButton(
                  child: const Text('Select From Gallery'),
                  onPressed: _openImagePicker,
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: _openCameraPicker,
                  child: const Text("Select From Camera")),
              const SizedBox(height: 35),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                height: 300,
                color: Colors.grey[300],
                child: _image != null
                    ? Image.file(
                        _image!,
                        fit: BoxFit.fill,
                        height: 300,
                      )
                    : const Text('Please select an image'),
              )
            ]),
          ),
        ));
  }
}
