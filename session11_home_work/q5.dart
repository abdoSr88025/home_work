/*1 session_12
1. Notes App – Organize Your Notes
You are building a simple notes app where users can write and manage their notes.
- Each note should have a title, some content, and the date it was created.
- The app should allow creating new notes.
- The app should allow listing all notes.
- The app should allow searching for a note by its title
*/
import 'dart:io';

class Note {
  String title;
  String content;
  String date;

  Note(this.title, this.content) : date = DateTime.now().toString();

  void showNote() {
    print("\n Title: $title");
    print("Content : $content");
    print("Date : $date");
  }
}

class NotesApp {
  List<Note> notes = [];

  void addNote(String title, String content) {
    var note = Note(title, content);
    notes.add(note);
    print("Note has been added");
  }

  void listNotes() {
    if (notes.isEmpty) {
      print("No notes exists yet");
    } else {
      for (var note in notes) {
        note.showNote();
      }
    }
  }
}

void main() {
  var app = NotesApp();

  while (true) {
    print("1: Add note");
    print("2: Show notes ");
    print("3: Exit");
    stdout.write("Enter number to apply");
    var choice = stdin.readLineSync();

    if (choice == '1') {
      stdout.write(" Title : ");
      String? title = stdin.readLineSync();
      stdout.write(" Content : ");
      String? content = stdin.readLineSync();
      app.addNote(title ?? "", content ?? "");
    } else if (choice == '2') {
      app.listNotes();
    } else if (choice == '3') {
      print(" Exit");
      break;
    } else {
      print("Invalid Input");
    }
  }
}
