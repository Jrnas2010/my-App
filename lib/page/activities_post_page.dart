import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_app/component/my_button.dart';
import 'package:my_app/component/pick_image.dart';
import 'package:my_app/page/activities_page.dart';



class AddActivitiesPage extends StatefulWidget {
  const AddActivitiesPage({super.key});

  @override
  State<AddActivitiesPage> createState() => _AddActivitiesPageState();
}

class _AddActivitiesPageState extends State<AddActivitiesPage> {

  Uint8List? image;
  TextEditingController ActivitiesTitleController = TextEditingController();
  TextEditingController ActivitiesDescriptionController = TextEditingController();

  void getImage () async {
    Uint8List img = await pickImage(ImageSource.gallery);
    setState(() {
      image = img;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Add New Activity'),
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                    builder: (context) => const ActivitiesPage()));
              }
          ),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Center(
            child: SingleChildScrollView(
              child: Column(

                children: [
                  const SizedBox(height: 15,),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    height: 200,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: IconButton(
                      icon: const Icon(Icons.add_a_photo_outlined),
                      iconSize: 100,
                      onPressed: getImage,
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        TextField(
                          controller: ActivitiesTitleController,
                          decoration: InputDecoration(
                              hintText: "Add Title",
                              labelText: "Title",
                              labelStyle: const TextStyle(
                                fontSize: 15,
                                color: Colors.black12,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )
                          ),
                        ),

                        const SizedBox(height: 15,),

                        TextField(
                          controller: ActivitiesDescriptionController,
                          minLines: 1,
                          maxLines: 500,
                          decoration: InputDecoration(
                              hintText: "Write Arabic Descriptions",
                              labelText: "Descriptions",
                              labelStyle: const TextStyle(
                                fontSize: 15,
                                color: Colors.black12,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )
                          ),
                        ),

                        const SizedBox(height: 15,),

                        const SizedBox(height: 15,),

                        TextField(
                          controller: ActivitiesDescriptionController,
                          minLines: 1,
                          maxLines: 500,
                          decoration: InputDecoration(
                              hintText: "Write English Descriptions",
                              labelText: "Descriptions",
                              labelStyle: const TextStyle(
                                fontSize: 15,
                                color: Colors.black12,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )
                          ),
                        ),


                        MyButton(text: "Publish",
                            press: (){

                            })
                      ],
                    ),
                  )
                ],
              ),
            )
        )
    );
  }

}
