void main(){
  //The map method

  //The map method is very similar to forEach in that it loops through every element of the list.
  //It takes each element and passes it in as an argument to the anonymous function.
  const numbers = [1, 2, 3, 4, 5];
  final squares = numbers.map((number) => number * number);

  //map and forEach differ. Instead of just performing some action, map takes each resulting value and inserts it as an element in a new collection,
  print(squares);
  print(squares.toList());


  //****Filtering a collection using****** The where method
  final evens = squares.where((square) => square.isEven);
  print(evens);


  //Consolidating a collection
  //One way to combine all of the elements of a list into a single value is to use the****** reduce method
  const amounts = [199, 299, 299, 199, 499];
  //The first function parameter always contains the result of the previous function call,
  //while the second parameter contains the current element in the collection.
  final total = amounts.reduce((sum, element) => sum + element);
  print(total);


  //Using fold
  //If you try to call reduce on an empty list, you’ll get an error.
  //For that reason, using fold may be more reliable when a collection has a possibility of containing zero elements.


  const amounted = [199, 299, 299, 199, 499];
  //The first argument 0 is the starting value.
  //The second argument takes that 0, feeds it to sum, and keeps adding to it based on the value of each element in the list.
  final totals = amounted.fold(0, (sum, element) => sum + element);


  //Sorting a list
  //you can only call sort on a list. That’s because sets are by definition unordered, so it wouldn’t make sense to sort them.
  final desserts = ['cookies', 'pie', 'donuts', 'brownies'];
  // sort mutates the input list itself. This also means if you tried to sort a const list, you’d get an error.
  desserts.sort();
  print(desserts);

  //Reversing a list
  //You can use reversed to produce a list in reverse order.
  var dessertsReversed = desserts.reversed;
  print(dessertsReversed);

  //Performing a custom sort
  //Say you want to sort strings by length and not alphabetically; you could give sort an anonymous function like so:
  desserts.sort((d1, d2) => d1.length.compareTo(d2.length));
  //The compareTo method returns -1 if the first length is shorter
  //1 if it’s longer
  //and 0 if both lengths are the same.


  //Combining higher order methods
  //if you wanted to take only the desserts that have a name length greater than 5 and then convert those names to uppercase,
  const dinners = ['cake', 'pie', 'donuts', 'brownies'];
  final bigTallLaunch = dinners.where((dinner) => dinner.length > 5).map((dinner) => dinner.toUpperCase());
  print(bigTallLaunch);


  //Min Excersise
  final scores = [89, 77, 46, 93, 82, 67, 32, 88];
  scores.sort();
  print(scores);
  //in the reversed order
  var inReverse = scores.reversed;
  print(inReverse);

  //testing
  var test = 'Boss is uuu happy';
  final retrieved = test.contains('Boss');
  print(retrieved);
}