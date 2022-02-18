import 'dart:math';
import '../models/task.dart';
import 'package:faker/faker.dart';

var listeTasks = List<Task>.generate(15, (i) => createTask(i));


Task createTask(int i){
  var dateNow = DateTime.now();
  var faker = Faker();
  var random = Random();
  return Task(i,faker.person.name(),faker.lorem.sentence(),random.nextBool(),dateNow);
}