import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTask extends StatelessWidget {

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
                  Provider.of<TaskData>(context).addTask(taskInput);
                  Navigator.pop(context);
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
