import 'package:angular/angular.dart';
import 'src/todo_list/todo_list_component.dart';
import 'src/show_variable.dart';

@Component(
  selector: 'application',
  styleUrls: ['application.css'],
  templateUrl: 'application.html',
  directives: [
    TodoListComponent,
    ShowVariable
  ],
)
class AppComponent {
}
