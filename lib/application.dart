import 'package:angular/angular.dart';
import 'package:angular_components/material_button/material_button.dart';
import 'src/variable_comp.dart';
import 'src/bind_comp.dart';
import 'src/event1_comp.dart';
import 'src/inner_content.dart';
import 'src/dialog.dart';
import 'src/log_test.dart';

@Component(
  selector: 'application',
  styleUrls: ['application.css'],
  templateUrl: 'application.html',
  directives: [
    coreDirectives,
    VariableComp,
    BindComp,
    Event1Comp,
    InnerContentComp,
    DialogComp,
    LogComp,
    MaterialButtonComponent,
  ],
)
class AppComponent {
}
