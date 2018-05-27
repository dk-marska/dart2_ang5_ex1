import 'package:angular/angular.dart';
import 'package:logging/logging.dart';

@Component(
  selector: 'log-comp',
  template: ''
      '<p>Logger Test (see log)'
      '</p>',
  //templateUrl: 'todo_list_component.html',
  //styleUrls: [''],
)
class LogComp {
  Logger log1 = new Logger("a");
  Logger log2 = new Logger("a.b");
  Logger log3 = new Logger("MyLogger3");

  LogComp() {

    /*
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen((final LogRecord record) {
      print("${record.level.name}: ${record.time}: ${record.loggerName}: ${record.message}");
    });
    */
    hierarchicalLoggingEnabled = true;

    log1.level = Level.ALL;
    log1.onRecord.listen((final LogRecord record) {
      print("${record.level.name}: ${record.time}: ${record.loggerName}: ${record.message}");
    });


    log1.info("Log1 #1");
    print(log1.name);
    print(log1.parent.name);
    log2.info("Log2 #1");
    print(log2.name);
    print(log2.parent.name);

    log1.level = Level.WARNING;
    log1.info("Log1 #2");
    log2.warning("Log2 #2");

  }
}
