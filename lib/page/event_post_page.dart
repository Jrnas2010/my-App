

import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_app/JSON/event_table.dart';
import 'package:my_app/SQLite/event_posts_database_myapp.dart';
import 'package:my_app/component/my_button.dart';
import 'package:my_app/component/my_text_field.dart';
import 'package:my_app/component/pick_image.dart';
import 'package:my_app/page/event_page.dart';



class AddEventPage extends StatefulWidget {
  final Events? events;
  const AddEventPage({
    Key? key,
    this.events,
}) : super(key:key);

  @override
  State<AddEventPage> createState() => _AddEventPageState();
}

class _AddEventPageState extends State<AddEventPage> {

  Uint8List? image;
TextEditingController postTitleController = TextEditingController();
TextEditingController arabicDescriptionController = TextEditingController();
TextEditingController englishDescriptionController = TextEditingController();


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
        title: const Text( Events == null
                ? 'Add New EVENT'
                : 'Edit Event'
        ),
        centerTitle: true,
        leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                      builder: (context) => const EventPage()));
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
                  MyTextField(
                    controller: postTitleController,
                    hintText: 'Add title',
                    icon: Icons.title_outlined,
                    obscureText: false,

                    ),

                  const SizedBox(height: 15,),

                  TextFormField(
                    controller: arabicDescriptionController,
                    minLines: 1,
                    maxLines: 500,
                    decoration: InputDecoration(
                    hintText: "Write Arabic Descriptions",
                    labelText: "Arabic Descriptions",
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



                  TextFormField(
                    controller: englishDescriptionController,
                    minLines: 1,
                    maxLines: 500,
                    decoration: InputDecoration(
                        hintText: "Write English Descriptions",
                        labelText: "English Descriptions",
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


                  MyButton(text: "Add",

                press: () async{
                       final postTitle = postTitleController.value.text;
                       final arabicDescription = arabicDescriptionController.value.text;
                       final englishDescription = englishDescriptionController.value.text;

                        if (postTitle.isEmpty || arabicDescription.isEmpty || englishDescription.isEmpty){
                          return;
                         }
                         final Events model = Events(
                          postTitle: postTitle,
                          arabicdescription: arabicDescription,
                          englishdescription: englishDescription,
                          postImage: 'image',
                          timestamp: DateTime.now(),
                          //likes: null,
                          //views: null,

                        );

                        if(Events == null){
                          await EventPostDatabase.updateEventPost(model);
                       }

                     },
                  )
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
