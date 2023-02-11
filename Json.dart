
void main(){
  // final password = Password();
  // password.value = 'commmmmmmmmmm';
  // password.isValid();

  final annonymouseUser = Password.annonymous();
  print(annonymouseUser);
}

class Password{
  String value;

  Password({required this.value});

  Password.annonymous() : this(value: 'jjjjjjjjjjjjj');
  

  @override
  String toString(){
    return value;
  }
 
  void isValid(){
    bool check;
    if(value.length>8){
      check = true;
      print(check);
    }else{
      check = false;
      print(check);
    }
  }
}