void main(){
  //To define a set you have to be explicit on the type....  e.g
  final gimme = <int>{};
  //intersection
   final setA = {8, 2, 3, 1, 4};
    final setB = {1, 6, 5, 4};
    final intersection = setA.intersection(setB);
    print(intersection);

    //Unions
    final union = setA.union(setB);
    print(union);
}