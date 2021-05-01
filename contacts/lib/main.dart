import 'package:contacts_hive/addcontact.dart';
import 'package:contacts_hive/mainPage.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

import 'model/contact.dart';
import 'model/relationships.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ContactAdapter());
  Hive.registerAdapter(RelationshipAdapter());
  await Hive.openBox<Contact>(contactsBoxName);
  runApp(MaterialApp(
     title: 'Contacts App',
     home: MyApp(),
  ));
}