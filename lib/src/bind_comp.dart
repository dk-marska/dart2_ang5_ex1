import 'package:angular/angular.dart';
import 'package:angular_components/material_button/material_button.dart';

@Component(
  selector: 'bind-comp',
  template: ''
      '<p>'
      '<input value="inputOne">&nbsp;' // Static input, hardcoded HTML.
      '<input [value]="inputTwo">' // Getting data from variable.
      '<br>'
      '</p>'
  //templateUrl: 'todo_list_component.html',
  //styleUrls: [''],
)
class BindComp {
  String inputTwo = "inputTwo";

}