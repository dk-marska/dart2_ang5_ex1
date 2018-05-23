import 'package:angular/angular.dart';
import 'package:angular_components/material_button/material_button.dart';
import 'dart:html';

@Component(
  selector: 'inner-content-comp',
  directives: [
    coreDirectives,
    MaterialButtonComponent,
  ],
  template: ''
      '<p>'
      '{{textOne}}'
      '<br>'
      '<material-button #click1 raised>Click 1</material-button>'
      '<br>'
      '<ng-content></ng-content>'
      '</p>',
)
class InnerContentComp implements OnInit {
  final String textOne = "This is my code content.";

  @ContentChild('ref1')
  Object innerRef;

  InnerContentComp() {}

  @override
  void ngOnInit() {
    print(innerRef.toString());

    if (innerRef != null) {
      print(innerRef.runtimeType);

      print((innerRef as ElementRef).nativeElement.runtimeType.toString());
      DivElement ref2 = (innerRef as ElementRef).nativeElement;
      ref2.innerHtml += " <- added dynamically ->";
    }
  }
}
