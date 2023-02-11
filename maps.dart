void main(){
  final Map<String, int> emptyMap = {};

  //Another shorter way
  final anotherMap = <String, int>{};

  final inventory = { 
    'cakes': 20,
     'pies': 14,
    'donuts': 37,
     'cookies': 141,
      };

  final numberOfCakes = inventory['cakes'];
  print(numberOfCakes);

  //Add
  inventory['salad'] = 23;
  print(inventory);

  //Updating
  inventory['cake'] = 2;

  //Removing
  inventory.remove('donuts');

  //Checking for key or value existence
  print(inventory.containsKey('pies'));

  //There is a solution, though, for looping over a Map
  for(var item in inventory.keys){
    print(inventory[item]);
  }
  //Another way
  inventory.forEach((key, value) => print('$key -> $value'));
  //Another way
  for(final entry in inventory.entries){
    print('${entry.key} -> ${entry.value}');
  }


  //There are two ways to convert a list to a map
  //*********** First we use the Map.fromIterable

  List myList = [];
  myList.add(Student('11', 'marie'));
  myList.add(Student('12', 'john'));
  myList.add(Student('13', 'joshua'));
  myList.add(Student('14', 'joy'));

  var map1 = Map.fromIterable(myList, key:(e)=> e.id, value: (e)=> e.name);
  print('******* converting list to map ********');
  print(map1);



  //*********** Secondly we use the forEach method
  var map2 = {};
  myList.forEach((Student)=> map2[Student.id] = Student.name);
  print(map2);

  
  //********* Coverting map back to list
  //Now we do this using the forEach method
  var networkData= {
    1: "Strings",
    2: "int",
    3: "double"
  };
  myKeyList()=> networkData.entries.map((e) => e.key,).toList();
  myValueList()=> networkData.entries.map((e) => e.value,).toList();
  print('********** Converting Map back to List ***********');
  print(myKeyList());
  print(myValueList());
}

//There are two ways to convert a list to a map
  //*********** First we use the Map.fromIterable
  class Student{
    String id;
    String name;
    Student(this.id, this.name);
  }