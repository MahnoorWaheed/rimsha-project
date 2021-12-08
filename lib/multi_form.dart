import 'package:flutter/material.dart';
import 'package:xtremeskill/form.dart';
import 'package:xtremeskill/user.dart';

class MultiForm extends StatefulWidget {
  const MultiForm({Key? key}) : super(key: key);

  @override
  _MultiFormState createState() => _MultiFormState();
}

class _MultiFormState extends State<MultiForm> {
  List<User> users = [];
  List<UserForm> forms = [];

  @override
  Widget build(BuildContext context) {
    forms.clear();
    for (int i = 0; i < users.length; i++) {
      forms.add(UserForm(
        user: users[i],
        onDelete: () => onDelete(i),
        key: GlobalKey(),
      ));
    }
    return Scaffold(
        appBar: AppBar(
            title: Text('Service Details'),
            actions: [FlatButton(onPressed: onSave, child: Text('Save'))]),
        body: users.length <= 0
            ? Center(
                child: Text('Add form by tapping [+] button below'),
              )
            : ListView.builder(
                itemCount: users.length,
                itemBuilder: (_, i) => forms[i],
              ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            backgroundColor: Colors.lightBlue,
            onPressed: onAddForm));
  }

  void onDelete(int index) {
    setState(() {
      users.removeAt(index);
    });
  }

  void onAddForm() {
    setState(() {
      users.add(User());
    });
  }

  void onSave() {
    forms.forEach((form) => form.isValid());
  }
}
