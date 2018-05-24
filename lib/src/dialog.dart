import 'package:angular/angular.dart';
import 'package:angular_components/auto_dismiss/auto_dismiss.dart';
import 'package:angular_components/focus/focus.dart';
import 'package:angular_components/laminate/components/modal/modal.dart';
import 'package:angular_components/laminate/overlay/module.dart';
import 'package:angular_components/material_button/material_button.dart';
import 'package:angular_components/material_dialog/material_dialog.dart';
import 'package:angular_components/material_icon/material_icon.dart';
import 'package:angular_components/material_tooltip/material_tooltip.dart';
//import 'package:angular_gallery_section/annotation/gallery_section_config.dart';

@Component(
  selector: 'dialog-comp',
  templateUrl: 'dialog.html',
  //template: 'PowerMax',
  //styleUrls: ['dialog.html'],
  directives: const [
    AutoDismissDirective,
    AutoFocusDirective,
    MaterialIconComponent,
    MaterialButtonComponent,
    MaterialTooltipDirective,
    MaterialDialogComponent,
    ModalComponent,
    NgFor,
    NgIf,
  ],
  providers: const [overlayBindings],
)
class DialogComp {
  bool showMaxHeightDialog = false;

  String myText = "n/a";

  DialogComp() {}

  final maxHeightDialogLines = <String>[];
  String dialogWithErrorErrorMessage;

  void addMaxHeightDialogLine() {
    maxHeightDialogLines.add('This is some text!');

  }

  void removeMaxHeightDialogLine() {
    maxHeightDialogLines.removeLast();
  }

  void toggleErrorMessage() {
    if (dialogWithErrorErrorMessage == null) {
      dialogWithErrorErrorMessage = 'Error message.';
    } else {
      dialogWithErrorErrorMessage = null;
    }
  }
}