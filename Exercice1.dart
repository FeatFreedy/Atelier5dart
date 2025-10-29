void main () {
  try {
    var res = 12 ~/ 0;
    print (res);
  } catch (e) {
    print ("Division impossible $e");
  }
}