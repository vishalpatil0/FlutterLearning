class Task {
  final String? taskName;
  bool? isDone = false;

  Task({this.taskName, this.isDone});

  void toggle() {
    if (isDone != null) {
      isDone = !isDone!;
    } else {
      isDone = true;
    }
  }
}
