import 'package:angular/angular.dart';
import 'package:angular_components/material_icon/material_icon.dart';
import 'package:angular_components/material_input/material_input.dart';
import 'package:angular_components/material_button/material_fab.dart';
import 'package:angular_components/material_checkbox/material_checkbox.dart';
import 'package:angular_components/angular_components.dart';

@Component(
  selector: 'event1-comp', template: ''
    '<p>'
    '<material-fab mini raised '
      '(trigger)="eventAdd()" '
      //'[disabled]="newTodo.isEmpty"> '
    '>'
    '<material-icon icon="add"></material-icon>'
    '</material-fab>'
    '<material-button #click1 name="click4" (trigger)="eventClick1()">Click 1</material-button>'
    '<material-button #click2 raised (trigger)="eventClick2(click1)">Click 2</material-button>'
    '<material-button #click3 raised dense (trigger)="eventClick3()">Click 3</material-button>'
    '</p>',
  directives: [
    MaterialCheckboxComponent,
    MaterialFabComponent,
    MaterialIconComponent,
    MaterialButtonComponent,
    materialInputDirectives,
    NgFor,
    NgIf,
  ],
  //templateUrl: 'todo_list_component.html',
  styleUrls: ['event1_comp.css'],
  //scss
)
class Event1Comp {
  @ViewChild('click1') MaterialButtonComponent vcClick1;

  String inputTwo = "inputTwo";

  void eventAdd() {
    print("Event: 'eventAdd()'.");
  }

  void eventClick1() {
    print("Event: 'eventClick1()'.");
  }

  void eventClick2(MaterialButtonComponent object) {
    print("Event: 'eventClick2()'.");
    print(" - '"+ object.toString() +"'.");

    object.disabled = true;
  }

  void eventClick3() {
    print("Event: 'eventClick3()'.");

    vcClick1.disabled = false;
  }
}