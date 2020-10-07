import 'package:dartz/dartz.dart';

class ChooseRoutineController {
  List<Map<String, dynamic>> weekdays = [
    {'int': 0, 'title': 'Domingo', 'isSelected': false},
    {'int': 1, 'title': 'Segunda-feira', 'isSelected': false},
    {'int': 2, 'title': 'Terça-feira', 'isSelected': false},
    {'int': 3, 'title': 'Quarta-feira', 'isSelected': false},
    {'int': 4, 'title': 'Quinta-feira', 'isSelected': false},
    {'int': 5, 'title': 'Sexta-feira', 'isSelected': false},
    {'int': 6, 'title': 'Sábado', 'isSelected': false},
  ];

  Option<List<int>> convertToSelectedWeekdays() {
    final weekList = weekdays
        .where((map) => map['isSelected'] == true)
        .map((e) => e['int'] as int)
        .toList();
    if (weekList.length > 0) return some(weekList);
    return none();
  }
}
