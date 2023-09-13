import 'dart:io';
import 'dart:math';

class Student {
  int id;
  String surname;
  String middleName;
  String firstName;
  int age;
  String group;
  double grade;
  String phone;
  String mail;
  String nickname;
   
  Student(this.id, this.surname, this.firstName, this.middleName, this.age,
      this.group, this.grade, this.phone, this.mail, this.nickname);
}
int id = 21;

class StudentList{
  List<Student> students = [];

  void start(){
      Student student1 = new Student(1, "Иванов", "Иван", "Иванович", 16, "Т50-1-20", 5, "79779779797", "mail1@mail.ry", "Ивань");
      Student student2 = new Student(2, "Петров", "Иван", "Иванович", 17, "Т50-1-20", 4.5, "79779679797", "mail2@mail.ry", "Ивунь");
      Student student3 = new Student(3, "Сидоров", "Иван", "Иванович", 15, "Т50-1-20", 3.7, "79776779797", "mail3@mail.ry", "Ивинь");
      Student student4 = new Student(4, "Гудков", "Иван", "Иванович", 18, "Т50-1-20", 5, "79779777797", "mail4@mail.ry", "Ивонь");
      Student student5 = new Student(5, "Ленов", "Иван", "Иванович", 16, "Т50-1-20", 5, "79779779897", "mail5@mail.ry", "Ивынь");
      Student student6 = new Student(6, "Комаров", "Иван", "Иванович", 18, "Т50-1-20", 5, "79779759797", "mail6@mail.ry", "Иваэнь");
      Student student7 = new Student(7, "Комиссаров", "Иван", "Иванович", 17, "Т50-1-20", 5, "79779579797", "mail7@mail.ry", "Иваюнь");
      Student student8 = new Student(8, "Курбатов", "Иван", "Иванович", 17, "Т50-1-20", 5, "79779779797", "mail8@mail.ry", "Ивань");
      Student student9 = new Student(9, "Иванко", "Иван", "Иванович", 16, "Т50-1-20", 5, "79779779717", "mail9@mail.ry", "Ивано");
      Student student10 = new Student(10, "Иванченко", "Иван", "Иванович", 16, "Т50-1-20", 5, "79779279797", "mail10@mail.ry", "Иваню");
      Student student11 = new Student(11, "Иваново", "Иван", "Иванович", 16, "Т50-1-20", 5, "79779779697", "mail11@mail.ry", "Иване");
      Student student12 = new Student(12, "Ивашечкин", "Иван", "Иванович", 17, "Т50-1-20", 5, "79779774797", "mail12@mail.ry", "Ива");
      Student student13 = new Student(13, "Иванечкин", "Иван", "Иванович", 15, "Т50-1-20", 5, "79779779707", "mail13@mail.ry", "Иваня");
      Student student14 = new Student(14, "Иванюк", "Иван", "Иванович", 18, "Т50-1-20", 5, "79779779707", "mail14@mail.ry", "Ив");
      Student student15 = new Student(15, "Сердюк", "Иван", "Иванович", 16, "Т50-1-20", 5, "79779779597", "mail15@mail.ry", "И");
      Student student16 = new Student(16, "Лещинский", "Иван", "Иванович", 17, "Т50-1-20", 5, "79779779797", "mail16@mail.ry", "анья");
      Student student17 = new Student(17, "Сидоров", "Пётр", "Иванович", 16, "Т50-1-20", 5, "79779779897", "mail17@mail.ry", "апвазп");
      Student student18 = new Student(18, "Иванов", "Алексей", "Иванович", 15, "Т50-1-20", 5, "79779779737", "mail18@mail.ry", "Тест");
      Student student19 = new Student(19, "Иванов", "Дмитрий", "Иванович", 16, "Т50-1-20", 5, "79779779717", "mail19@mail.ry", "Что-то");
      Student student20 = new Student(20, "Иванов", "Даниил", "Иванович", 18, "Т50-1-20", 5, "79779779737", "mail20@mail.ry", "Ещё");
    students.add(student1);
    students.add(student2); 
    students.add(student3);
    students.add(student4);
    students.add(student5);
    students.add(student6);
    students.add(student7);
    students.add(student8);
    students.add(student9);
    students.add(student10);
    students.add(student11);
    students.add(student12);
    students.add(student13);
    students.add(student14);
    students.add(student15);
    students.add(student16);
    students.add(student17);
    students.add(student18);
    students.add(student19);
    students.add(student20);
  }

  void addStudent(String surname, String firstName, String middleName, int age, String group, double grade, String phone, String mail, String nickname){
    Student student = new Student( id,surname, firstName, middleName, age, group, grade, phone, mail, nickname);
    students.add(student);
    id++;
  }

  void removeStudentById(int remid) {
    students.removeWhere((student) => student.id == id);
  }

  void getList(){
    for(var student in students){
      print(student.id.toString() + " " + student.surname +  " " + student.firstName + " " + student.middleName + " " + student.age.toString() + " " + student.group + " " + student.grade.toString() + " " + student.phone + " " + student.mail + " " + student.nickname);
    } 
}

  void getAverageGrade() {
    for (var student in students) {
      print("${student.grade}");
    }
  }

  void filtr(String group){
    for(var stud in students){
      if(stud.group == group){
        print(stud.surname + " " + stud.firstName + " " + stud.middleName);
      }
    }
  }

  Student getStudentWithHighestGrade(int choose) {
    students.sort((max, min) => 
        choose == "1" ?
          min.grade.compareTo(max.grade):
          max.grade.compareTo(min.grade));
          return students.first;
        } 


void updateStudentAttributeById(int thisid, int choose, String val) {
    var stud = students.firstWhere((student) => student.id == thisid);
    if (stud != null) {
      switch (choose) {
        case 1:
          stud.firstName = val;
          break;
        case 2:
          stud.surname = val;
          break;
        case 3:
          stud.middleName = val;
          break;
        case 4:
          int newAge = int.tryParse(val) ?? stud.age;
          stud.age = newAge;
          break;
        case 5:
          stud.group = val;
          break;
        case 6:
          double newGrade = double.tryParse(val) ?? stud.grade;
          stud.grade = newGrade;
          break;
        case 7:
          stud.phone = val;
          break;
        case 8:
          stud.mail = val;
          break;
        case 9:
          stud.nickname = val;
          break;
      }
    } else {
      print("Студент с id $id не найден.");
    }
}

}
void main() {
  StudentList stdList =  StudentList();
  stdList.start();
  while(true){
    stdList.getList();
    print("Выберите функцию: 1 - Добавить студента, 2 - Удаление по id, 3 - Вывести студента с высшим или низшим балом, 4 - Вывести список студентов определённой группы, 5 - Вывести средний бал всех студентов, 6 - Внести изменение");
    int choose = int.parse(stdin.readLineSync()!);
    switch(choose){
      case 1:
        print("Фамилия: ");
        String surname = stdin.readLineSync()!;
        print("Имя: ");
        String firstName = stdin.readLineSync()!;
        print("Отчество: ");
        String middleName = stdin.readLineSync()!;
        print("Возраст: ");
        int age = int.parse(stdin.readLineSync()!);
        print("Группа: ");
        String group = stdin.readLineSync()!;
        print("Средний бал: ");
        double grade = double.parse(stdin.readLineSync()!);
        print("Номер телефона: ");
        String phone = stdin.readLineSync()!;
        print("Почта: ");
        String mail = stdin.readLineSync()!;
        print("Никнейм: ");
        String nickname = stdin.readLineSync()!;
        stdList.addStudent(surname, firstName, middleName, age, group, grade, phone, mail, nickname); 
      break;

      case 2:
        stdList.getList();
        print("Введите id ");
        int remid = int.parse(stdin.readLineSync()!);
        stdList.removeStudentById(remid);
      break;

      case 3:
        print("1 - высший бал, 2 - низший бал: ");
        String choosee = stdin.readLineSync()!;
        print(stdList.getStudentWithHighestGrade(choose));
      break;

      case 4:
        print("Введите группу");
        String group = stdin.readLineSync()!;
        stdList.filtr(group);
      break;

      case 5:
        stdList.getAverageGrade();
      break;

      case 6:
        print("Введите id студента для изменения");
        int thisid = int.parse(stdin.readLineSync()!);
        print("Выберите, что хотите изменить:");
        int choose = int.parse(stdin.readLineSync()!);
        print("Введите изменение ");
        String val = stdin.readLineSync()!;
        stdList.updateStudentAttributeById(thisid, choose, val);
      break;
    }
  }
}