// Importing core libraries
class Task {
 int id;
 String name;
 String content;
 bool completed;
 DateTime? createAt;

  // Constructor, with syntactic sugar for assignment to members.
  Task(this.id,this.name, this.content,this.completed,this.createAt) {
    // Initialization code goes here.
  }
}