import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  String filePath;
  AddPage({super.key, required this.filePath});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  String filePath = '';
  List<TextEditingController> controllers = [
    TextEditingController(),
    TextEditingController(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    filePath = widget.filePath;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(filePath),
        centerTitle: true,
      ),
      body: Form(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextFormField(
              controller: controllers[0],
              decoration: InputDecoration(
                  border: OutlineInputBorder(), label: Text('title')),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: TextFormField(
                controller: controllers[1],
                maxLines: 10,
                maxLength: 100,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), label: Text('contents')),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  var title = controllers[0];
                  print(title);
                  var contents = controllers[1];
                  print(contents);
                  Navigator.pop(context, 'ok');
                },
                child: Text('저장'))
          ],
        ),
      )),
    );
  }
}
