import 'dart:io';
import 'dart:math';

void main() {

  List <List<dynamic>> questions = [
  ["Body reaction to an injury","Consultation","Complication" ,"Inflammation", "Infection", 3],
  ["Living microorganism that can cause infections","Bacterium","Virus","Parasite","Pathogen", 1],
  ["Sudden and intense episode of a medical disorder","Relapse","Crisis","Inflammation","Symptom", 2],
  ["Identification of a disease by a doctor","Diagnosis","Prescription","Consultation","Treatment",1],
  ["Feeling of sickness or discomfort without a clear cause","Fatigue","Nausea","Infection","Crisis",2]
  ];

  int score = 0;
  //for delay
  int temp = DateTime.now().millisecondsSinceEpoch;

  print("-----------------Welcome to the quiz game-----------------");
  while(DateTime.now().millisecondsSinceEpoch < 500 + temp) {};
  print("Each correct answer is 10 points");
  while(DateTime.now().millisecondsSinceEpoch < 1500 + temp) {};
  print("Give the name of each scientific word for the following:");  
  while(DateTime.now().millisecondsSinceEpoch < 2500 + temp) {};
  print("Let's start:");
  while(DateTime.now().millisecondsSinceEpoch < 3200 + temp) {};

  

  //shuffle questions 
  questions.shuffle(Random());


  for (var i = 0; i < questions.length; i++) {
    print(questions[i][0]);
    print("1. ${questions[i][1]}");
    print("2. ${questions[i][2]}");
    print("3. ${questions[i][3]}");
    print("4. ${questions[i][4]}");

    print("Enter your answer: ");
    //user input
    var answer = int.tryParse(stdin.readLineSync()!); //to  handle exception


    if (answer == questions[i][5]) {
      score += 10;
      print("Correct!");
      
    } else {
      print("Incorrect!");
    }
    //track the score
    print("current score : $score");
  }

  print("------Game over!------");
  print("Final score : $score");
 
}