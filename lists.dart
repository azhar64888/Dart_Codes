/* Creating list */

List<int> numbers = [1, 2, 3];
var names = ["Ali", "Ahmed"];
List<String> emptyList = [];

void main(){
  print("Length of the list: ${numbers.length}");
  print("Is list empty: ${numbers.isEmpty}");
  print("Is list not empty: ${numbers.isNotEmpty}");
  print("element at index 0 of the list: ${numbers[0]}");
  print("First element of the list: ${numbers.first}");
  print("Last element of the list: ${numbers.last}");
  names.add("azhar");
  print(names);
  // names.add(10);  #list will accept only strings

  // Updating values
  numbers[1]=15;
  print(numbers);

  // Adding values
  numbers.addAll([5,12,34]);
  print(numbers);

  numbers.insert(2, 55);
  print(numbers);
  numbers.insertAll(2, [55,67,34]);
  print(numbers);

  print(numbers.length);

  // Removing Elements
  numbers.remove(34);
  print(numbers);

  numbers.removeAt(3);
  print(numbers);

  print(numbers.removeLast());
  numbers.removeWhere((e) => e > 10);
  print(numbers);

  // Searching 

  print(numbers.contains(5));

  print(numbers.indexOf(3));

  print(numbers.any((e) => e > 2));

  print(numbers.every((e) => e > 2));

  // forEach loop
  numbers.forEach((e){
    print(e);
  });

  // Map function
  var square=numbers.map((e) => e*e).toList();
  print(square);

  numbers.addAll([2,6,4,12]);
  print(numbers);
  // Filter & transform
  var evens=numbers.where((e) => e.isEven).toList();
  print(evens);

  var flat=[[1,2],[3,4]].expand((e) => e).toList();
  print(flat);

  // Sorting

  //Acsending
  numbers.sort();
  print(numbers);

  // Descending 
  numbers.sort((a, b) => b.compareTo(a));
  print(numbers);
  
}
