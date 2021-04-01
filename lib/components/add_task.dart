import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  final Function addTask;

  AddTask(this.addTask);

  @override
  Widget build(BuildContext context) {
    String taskInput;

    return SingleChildScrollView(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom
      ),
      child: Container(
        color: Color(0xff757575),
        child: Container(
          padding: EdgeInsets.only(
              left: 60.0,
              top: 30.0,
              right: 60.0,
              bottom: 20.0
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              topLeft: Radius.circular(20.0),
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text('Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30.0,
                ),
              ),
              TextField(
                textAlign: TextAlign.center,
                autofocus: true,
                onChanged: (value) {
                  taskInput = value;
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              FlatButton(
                color: Colors.lightBlueAccent,
                textColor: Colors.white,
                onPressed: () {
                  addTask(taskInput);
                },
                child: Text('Add',
                  style: TextStyle(
                    fontSize: 16.0
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
