import 'package:ex08/fonctionsEx08.dart';
// Source: https://github.com/OlivierTremblay9/ex08 
void ex08_1(){ 
  
 var liste = [
               {"name": "IS", "description": "Systèmes d'information"},
               {"name": "CS", "description": "Science informatique"},
               ];
 
	var associationmembers = [ 
             {"name": "IS", "firstName": "Bernard", "lastName": "Prince", "email": "bprince@pourlespme.com\n"}, 
             {"name": "CS", "firstName": "Dzenan", "lastName": "Ridjanovic", "email": "Ridjanovic\n"}, 
             {"name": "CS", "firstName": "Samuel", "lastName": "Tremblay", "email": "satrem@gmail.com\n"}, 
             {"name": "IS", "firstName": "Léa", "lastName": "Tremblay", "email": "letrem@gmail.com\n"}, 
             {"name": "CS", "firstName": "David", "lastName": "Julien", "email": "dajul@gmail.com\n"}, 
             {"name": "IS", "firstName": "Eliane", "lastName": "Tremblay", "email": "eltrem@gmail.com\n"}, 
             {"name": "CS", "firstName": "Julie", "lastName": "Simard", "email": "jusim@gmail.com\n"}, 
             {"name": "CS", "firstName": "Simon", "lastName": "Fournier", "email": "sifour@gmail.com\n"}
             ];
  var result_part_1 = ('${association(associationmembers)}\n');
  var letter = "P";
  var result_part_2 = beginwith(associationmembers, ('${letter}'));
  
       
  
 
     
  print('1.a:	\n\n$result_part_1'); 
  
  
  print('1.b:  \n        Sélectionner les noms commençant par P: \n\n Descriptifs: $result_part_2 \n$liste') ;
  

}


void ex08_2(){ // No.2
  
  
  
  test(var firstName, var lastName, var members){
     for(var n in members){
        if(n['firstName'] == firstName && n['lastName'] == lastName)
        return true;
     }
     return false;
   }
  
   additions(var associationName, var firstName, var lastName, var email, var members){
       members.add({
                    'associationName': associationName,
                    'firstName': firstName,
                    'lastName': lastName,
                    'email': email, 
                  });

     firstNameSorting(var members){
      members.sort((x, y) => x['lastName'].compareTo(y['firstName']));
      print('\nAdd entity:\n');
      printRow(members); 
     }   
     firstNameSorting(members);   
   } 
     additions('CS', 'Boucher', 'Lortis', 'bolor@gmail.com', members); 
  
   removal(var firstName, var lastName, var email, var members){     
      for(var n = 0; n < members.length; n++){        
       if(members[n]['firstName'] == firstName && members[n]['lastName'] == lastName && members[n]['email'] == email){
         members.removeAt(n);
       }
      }
 
     firstNameSorting(var members){
      members.sort((x, y) => x['lastName'].compareTo(y['firstName']));
      print('\nRemove entity:\n'); 
      printRow(members); 
     }    
     firstNameSorting(members);
   } 
     removal('Roger', 'Bouchard', 'robou@gmail.com', members);
   
   update(var associationName, var firstName, var lastName, var email, var members){
      for(var n = 0; n < members.length; n++){
       if(members[n]['firstName'] == firstName && members[n]['lastName'] == lastName){
           members[n]['associationName'] = associationName;
           members[n]['firstName'] = firstName;
           members[n]['lastName'] = lastName;
           members[n]['email'] = email; 
       }
      }
     
     
     firstNameSorting(var members){
       members.sort((x, y) => x['lastName'].compareTo(y['firstName']));
       print('\nUpdate entity:\n'); 
       printRow(members);
     }
     firstNameSorting(members);
   }

   update('IS', 'Eliane', 'Tremblay', ['eltrem@gmail.com','eltrem@hotmail.com'], members);
  
  
  
}


void main() {
  ex08_1();  //This code was inspired by: https://github.com/leduy10/ex08.git
  ex08_2();  //This code was inspired by: https://github.com/alaincastonguay/ex08.git
      
}