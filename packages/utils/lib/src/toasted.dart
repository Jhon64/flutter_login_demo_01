import 'package:fluttertoast/fluttertoast.dart';

class Toasted {
  String mensaje;
  bool? long;

  Toasted({required this.mensaje, this.long});

  show() {
    Fluttertoast.showToast(
        msg: mensaje,
        toastLength: long ?? false ? Toast.LENGTH_LONG : Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1);
  }
}