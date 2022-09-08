import 'package:flutter/material.dart';
import 'package:n_app/screen/notelist.dart';

class NoteDetail extends StatefulWidget {

  const NoteDetail({Key? key}) : super(key: key);

  @override
  State<NoteDetail> createState() => _NoteDetailState();
}

class _NoteDetailState extends State<NoteDetail> {

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  String a = '';
  List<String> myList = [];

  @override
  void initState(){
    super.initState();
    myList.add('Item')  ;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Note'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
      ),
      body: Padding(
          padding: EdgeInsets.only(top: 15, left: 10, right: 10),
        child: ListView(
          children: [
            Padding(
                padding: EdgeInsets.only(top: 15, bottom: 15),
              child: TextField(
                controller: titleController,
                style: TextStyle(fontSize: 20),
                onChanged: (value){
                  debugPrint('Title Text field changed');
                },
                decoration: InputDecoration(
                  labelText: 'title',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              child: TextField(
                controller: descriptionController,
                style: TextStyle(fontSize: 20),
                onChanged: (value){
                  debugPrint('Description Text field changed');
                },
                decoration: InputDecoration(
                    labelText: 'description',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    )
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 15, bottom: 15),
              child: Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                        child: Text('Save',style: TextStyle(fontSize: 20),),
                        onPressed: (){
                          a.toString();
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> NoteList()));
                        },
                      )
                  ),
                  SizedBox(width: 5,),
                  Expanded(
                      child: ElevatedButton(
                        child: Text('Delete',style: TextStyle(fontSize: 20)),
                        onPressed: (){
                            Navigator.pop(context);
                        },
                      )
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
