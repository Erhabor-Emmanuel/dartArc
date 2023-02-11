class MySingleton{
  MySingleton._();
  static final MySingleton instance = MySingleton._();

  //You would access the singleton like so:
  final mySingleton = MySingleton.instance;
}