 void main(List<String> args) {

  //key and value can be of any data type.

  // var map1 = new Map();

  var map1 = {
    "vishal":12,
    "a":23,
    "joker":33,
    'go':34,
    3:"ame",
    "str":"String",
    4:444,
    "gg":true,
    true:false,
    false:true
  };

  map1[4] = "Temple";

  print(map1[3]);
  print(map1["vishal"]);
  print(map1["a"]);
  print(map1["joker"]);
  print(map1['go']);
  print(map1["go"]);
  print(map1["str"]);
  print(map1["gg"]);
  print(map1[4]);
  print(map1[true]);
  print(map1[false]);

  //map with fixed type
  Map<int, int> m = new Map();
  m.addEntries({2:3}.entries); 
  m[2] = 3;
}