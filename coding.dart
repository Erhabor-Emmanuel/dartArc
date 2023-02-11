void main(){
    // print('happy');
    // calculate();

    final frac = Fraction(1, 7);

    final num = frac.numerator;
    print('$num');
}

// void calculate(){
//     var values = [1,2,3,4,5,6,7,8,9];

//     var newValues = <int>[];
//         for(var item in values){
//             int gotten = item * 5;
//             int numss = item;
//             newValues.add(gotten);
//         }
//         print('$newValues');
//     }

class Fraction {
int _numerator;
int _denominator;
Fraction(this._numerator, this._denominator);
// Getters are read-only
int get numerator => _numerator;
int get denominator {
return _denominator;
} 

factory Fraction.solve(){
  return Fraction(8, 9);
}

}