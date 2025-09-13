/*
Q5 Create a class Course with attributes title and duration (default = 3 months). Create two
 courses: one with custom duration and one with the default. Print both.
 */

class Course {
  String title;
  String duration;

  Course(this.title, {this.duration = "3 months"});

  void printDetails() {
    print("Course: $title, Duration: $duration");
  }
}

void main() {
  Course course1 = Course("Flutter Development");

  Course course2 = Course("Data Science", duration: "6 months");

  course1.printDetails();
  course2.printDetails();
}
