import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class MyImagePage extends StatefulWidget {
  @override
  _MyImagePageState createState() => _MyImagePageState();
}

class _MyImagePageState extends State<MyImagePage> {
  List<File> _images = [];

  @override
  void initState() {
    super.initState();
    _loadImages();
  }

  Future<void> _loadImages() async {
    final directory = await getApplicationDocumentsDirectory();
    final files = directory.listSync();

    setState(() {
      _images = files
          .where((file) => file.path.endsWith('.png'))
          .map((file) => File(file.path))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saved Images'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: _images
            .map((image) => InkWell(
                  child: Image.file(image),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => ImageDetailsPage(image))),
                ))
            .toList(),
      ),
    );
  }
}

class ImageDetailsPage extends StatelessWidget {
  final File image;

  const ImageDetailsPage(this.image);

  Future<void> _downloadImage(BuildContext context) async {
    final directory = await getExternalStorageDirectory();
    final timestamp = DateTime.now().millisecondsSinceEpoch;
    final imageName = 'image_$timestamp.png';
    final imagePath = '${directory?.path}/$imageName';
    await image.copy(imagePath);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Image saved to device')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Details'),
        actions: [
          IconButton(
            icon: Icon(Icons.download),
            onPressed: () => _downloadImage(context),
          ),
        ],
      ),
      body: Center(
        child: Image.file(image),
      ),
    );
  }
}
