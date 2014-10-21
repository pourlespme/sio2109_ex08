library funct;

// Source: https://github.com/OlivierTremblay9/ex08 
 List association(List associationmembers) {  
     
    List answer = new List(); 
    Map sort = associationmembers.elementAt(0); 
    answer.add(sort); 
     
    for (int n = 1; n < associationmembers.length; n++) { 
      bool inserted = false; 
      sort = associationmembers.elementAt(n); 
      String lastName = sort["lastName"]; 
      String firstName = sort["firstName"]; 
      String liste = sort["liste"];
      
    for (int n = 0; n < answer.length; n++) { 
      Map select_values = answer.elementAt(n); 
      String select_key_last_name = select_values["lastName"]; 
      String select_key_First_name = select_values["firstName"]; 
      
     if (lastName.compareTo(select_key_last_name) < 0 && inserted == false) { 
        answer.insert(n, sort); 
       inserted = true; 
     } 
     else if (lastName.compareTo(select_key_last_name) == 0 && inserted == false) { 
      
       for (int o = n; o < answer.length; o++) { 
         select_values = answer.elementAt(n); 
         select_key_last_name = select_values["lastName"]; 
         select_key_First_name = select_values["firstName"];
          
         if (lastName.compareTo(select_key_last_name) == 0 && firstName.compareTo(select_key_First_name) < 0 && inserted == false) { 
          answer.insert(o, sort); 
          inserted = true; 
         } 
          
         else if (lastName.compareTo(select_key_last_name) != 0 && inserted == false) { 
           answer.insert(o, sort); 
           inserted = true; 
         } 
       } 
     } 
    } 
      if (inserted == false) { 
        answer.add(sort); 
      } 
    } 
    
    return answer; 
  } 
  
  
  List beginwith(List members, String letter) { 
     
    List returnList = new List(); 
     
    for (int i = 1; i < members.length; i++) { 
      Map sort = members.elementAt(i); 
      String lastName = sort["lastName"]; 
      if(lastName.substring(0, 1) == letter) { 
        returnList.add(sort); 
      } 
    } 
     
    return returnList; 
  }
  
  var liste = [
                {"name": "IS", "description": "Information Systems"},
                {"name": "CS", "description": "Computer Science"},
                ];
  
  var members = [ 
           {"name": "IS", "firstName": "Bernard", "lastName": "Prince", "email": "bprince@pourlespme.com\n"}, 
           {"name": "CS", "firstName": "Dzenan", "lastName": "Ridjanovic", "email": "Ridjanovic\n"}, 
           {"name": "CS", "firstName": "Samuel", "lastName": "Tremblay", "email": "satrem@gmail.com"}, 
           {"name": "IS", "firstName": "Léa", "lastName": "Tremblay", "email": "letrem@gmail.com"}, 
           {"name": "CS", "firstName": "David", "lastName": "Julien", "email": "dajul@gmail.com"}, 
           {"name": "IS", "firstName": "Eliane", "lastName": "Tremblay", "email": "eltrem@gmail.com"}, 
           {"name": "CS", "firstName": "Julie", "lastName": "Simard", "email": "jusim@gmail.com"}, 
           {"name": "CS", "firstName": "Simon", "lastName": "Fournier", "email": "sifour@gmail.com"} 
      ]; 


  printRow(var row){
    for(var n in row){
    print(n);
    }
  }