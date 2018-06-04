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
      '<material-button (click)="evnClick()" #click1 raised style="background-color: red;">Click 1</material-button>'
      '<br>'
      '<ng-content></ng-content>'
      '</p>',
)
class InnerContentComp implements OnInit {
  final String textOne = "This is my code content.";

  @ContentChild('ref1')
  Object innerRef;
  @ContentChild('click1')
  Object clk1Ref;

  InnerContentComp() {}

  void evnClick(){
    print("Evn");
    //DivElement ref2 = (innerRef as ElementRef).nativeElement;

    DivElement ref2 = (innerRef as ElementRef).nativeElement;
    print(ref2.toString());
    print(ref2.styleMap.toString());
    ref2.style.color = "yellow";
    print(ref2.style.cssText.toString());
    //ref2.styleMap.append("background-color", "grey");
  }

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
