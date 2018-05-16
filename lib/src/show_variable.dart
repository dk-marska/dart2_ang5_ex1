import 'package:angular/angular.dart';

@Component(
  selector: 'show-variable',
  template: ''
      '<p>'
      '{{textOne}}'
      '<br>'
      '{{textTwo}}'
      '<br>'
      '{{textThree()}}'
      '</p>',
  //templateUrl: 'todo_list_component.html',
  //styleUrls: [''],
)
class ShowVariable {
  final String textOne = "This is text one.";

  String get textTwo => "This is text two.";

  String textThree() {
    return "This is text three.";
  }
}
