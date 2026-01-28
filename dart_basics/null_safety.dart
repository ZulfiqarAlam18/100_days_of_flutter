 main(){

 // String name = null; // Error: A value of type 'Null' can't be assigned to a variable of type 'String'.



  String name ;
  String? name2 ;

  name = "Zulfiqar";
  name2 = null;


 print(name); // value cannot be null
  print(name2);


// late vs ?
  late String address;

  // print(address); // Error: LateInitializationError: Field 'address' has not been initialized.

  address = "123 Main St";

  print(address); // Now it works fine.



  // difference btw these two 

  late String name1;
  String name_2;

  name1 = "Zulfiqar";
  name_2 = "Zulfiqar Alam";
  print(name1); // Error if name1 is not initialized
  print(name_2);


  // Make it opitonal 

  String? middleName ;

  print(middleName ?? "No middle name provided");


}