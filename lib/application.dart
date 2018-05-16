import 'package:angular/angular.dart';
import 'src/todo_list/todo_list_component.dart';
import 'src/variable_comp.dart';
import 'src/bind_comp.dart';

@Component(
  selector: 'application',
  styleUrls: ['application.css'],
  templateUrl: 'application.html',
  directives: [
    TodoListComponent,
    VariableComp,
    BindComp,
  ],
)
class AppComponent {
}
