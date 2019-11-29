

class Task{
  String title;
  String id;
  List<String> checklist;
  bool alert;
  
  Task.fromMap(Map<String, dynamic> data)
      : title = data["title"],
        id = data["Id"],
        checklist = data["checklist"],
        alert = data["alert"];

  toMap() => <String, dynamic>{
        "title" : title,
        "checkist" : checklist,
        "alert": true,
        
      };


}