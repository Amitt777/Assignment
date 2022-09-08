import 'package:flutter/material.dart';
import 'package:n_app/screen/note_detail.dart';

class NoteList extends StatefulWidget {
  const NoteList({Key? key}) : super(key: key);

  @override
  State<NoteList> createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
   List<String> myList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes'),
        centerTitle: true,
      ),
      body: getNoteListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          debugPrint('clicked');
          navigateoDetail();
        },
        tooltip: 'Add Note',
        child: Icon(Icons.add),
      ),
    );
  }

  ListView getNoteListView(){

    return ListView.builder(
      itemCount: myList.length,
        itemBuilder: (BuildContext context, int position){
        return Card(
          color: Colors.white,
          elevation: 3,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.yellow,
              child: Icon(Icons.keyboard_arrow_right),
            ),
            title: Text('title', style: TextStyle(fontSize: 20),),
            subtitle: Text('Description'),
            trailing: Icon(Icons.delete, color: Colors.grey,),
            onTap: (){
             // debugPrint('Tapped');
              myList.toString();
              navigateoDetail();
            },
          ),
        );
        }
    );
  }
  void navigateoDetail(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> NoteDetail()));
  }
}