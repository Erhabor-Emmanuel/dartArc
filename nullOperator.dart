//1---------If-null operator (??)
String? message; 
final text = message ?? 'Error';
//Using the ?? operator in this example is equivalent to the following:
void main(){
  String? message; 
  String text;
if (message == null) { 
  text = 'Error';
   } else { 
    text = message; 
    }

 //2------Null-aware assignment operator (??=)
double? fontSize;
fontSize ??= 20.0;
//---------Null-aware index operator (?[])

}

