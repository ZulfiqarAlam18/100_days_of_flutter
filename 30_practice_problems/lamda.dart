
void main (){


  var list = [10,8,9,11,100];

  list.insert(1, 111);
  list.add(99);
  


  print('Unsorted list ${list}');


  list.sort((a, b) => a.compareTo(b),);


  list.sort( (x,y) => x.compareTo(y)  );
  

  print('Sorted list: ${list}');



}