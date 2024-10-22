import 'dart:io';

void main() {
  bool runProgram = true;
  cars landrover1 = cars(
      id: 1, name: "Landrover", model: "Defender", year: 2007, color: "Blue");
  cars landrover2 = cars(
      id: 2, name: "Landrover", model: "Discovery", year: 2019, color: "Pink");
  cars polestar1 =
      cars(id: 3, name: "Polestar", model: "1", year: 2019, color: "Green");
  cars polestar2 =
      cars(id: 4, name: "Polestar", model: "2", year: 2022, color: "Black");
  cars mercedes = cars(
      id: 5, name: "Mercedes", model: "E350", year: 2021, color: "Silver");
  cars bmw =
      cars(id: 6, name: "Bmw", model: "320d", year: 2020, color: "White");

  carType electricCars = carType(
      // create a carType object
      id: 1,
      engine: "electric");
  carType dieselCars = carType(
    // create a carType object
    id: 2,
    engine: "diesel",
  );

  electricCars.carSelection = [
    // add 2cars to the carType object, Electric carType
    landrover1, polestar1, mercedes
  ];

  dieselCars.carSelection = [
    //add cars to the carType object, Diesel carType
    landrover2, polestar2, bmw
  ];

  while (runProgram) {
    printMenu();
    int choice =
        int.parse(stdin.readLineSync()!); // read input to choose search method

    switch (choice) {
      case 1:
        try {
          print("\nEnter year of car you want:");
          int yearToSearch = int.parse(stdin.readLineSync()!);
          List<cars> foundCars = searchCarsByYear(
              electricCars.carSelection + dieselCars.carSelection,
              yearToSearch);
          if (foundCars.isEmpty) {
            print("No cars found from year $yearToSearch".red);
            break;
          } else {
            print("\nCars found from year $yearToSearch:".green);
            for (var car in foundCars) {
              print(
                  "\nWe have this lovely ${car.color} ${car.name} ${car.model} from ${car.year} in stock".blue);
            }
          }
        } catch (e) {
          print("Invalid input");
          break;
        }

      case 2:
        try {
          print("\nEnter the name of the Electric Model you want to search for:".red);
          String carToSearch = stdin.readLineSync()!;
          carToSearch = firstLetterUpperCase(carToSearch);
          List<cars> foundCars = searchCarsByName(
              electricCars.carSelection,carToSearch);
          if (foundCars.isEmpty) {
            print("No Electric model was found by that name $carToSearch".red);
            break;
          } else {
            print("\nCars found Electric Model by the name $carToSearch:".green);
            for (var car in foundCars) {
              print(
                  "\nWe have this amazing ${car.color} ${car.name} ${car.model} from ${car.year} for sale".blue);
            }
          }
        } catch (e) {
          print("Invalid input, please try again");
          break;
        }
        break;

      case 3:
        try {
          print("\nEnter the name of the Diesel Model you want to search for:".red);
          String carToSearch = stdin.readLineSync()!;
          carToSearch = firstLetterUpperCase(carToSearch);
          List<cars> foundCars = searchCarsByName(
              dieselCars.carSelection,carToSearch);
          if (foundCars.isEmpty) {
            print("No Diesel model was found by that name $carToSearch".red);
            break;
          } else {
            print("\nCars found Diesel Model by the name $carToSearch:".green);
            for (var car in foundCars) {
              print(
                  "\nWe have this amazing ${car.color} ${car.name} ${car.model} from ${car.year} for sale".blue);
            }
          }
        } catch (e) {
          print("Invalid input, please try again");
          break;
        }
        break;

      case 4:
        print("Enter name of car you want:");
        try {
          print("\nEnter the name of the Car you want to search for:");
          String carToSearch = stdin.readLineSync()!;
          carToSearch = firstLetterUpperCase(carToSearch);
          List<cars> foundCars = searchCarsByName(
              electricCars.carSelection + dieselCars.carSelection, carToSearch);
          if (foundCars.isEmpty) {
            print("No cars found by the name $carToSearch".red);
            break;
          } else {
            print("\nCars found by the name $carToSearch:".green);
            for (var car in foundCars) {
              print(
                  "\nWe have this lovely ${car.color} ${car.name} ${car.model} from ${car.year} in stock".blue);
            }
          }
        } catch (e) {
          print("Invalid input, please try again");
          break;
        }
        break;

      case 5:
        print("THANK YOU FOR CHOOSING BUBBI! BYE BYE".red);
        runProgram = false;
        break;
    }
  }
}

class cars {
  int id;
  String name;
  String model;
  int year;
  String color;

  cars(
      {required this.id,
      required this.name,
      required this.model,
      required this.year,
      required this.color});

// String fullName() {
// return "${this.firstName}  ${this.lastName}";
// }
}

class carType {
  int id;
  String engine;
  List<cars> carSelection = [];

  carType({required this.id, required this.engine});
}

List<cars> searchCarsByYear(List<cars> carList, int searchYear) {
  return carList.where((car) => car.year == searchYear).toList();
}

List<cars> searchCarsByName(List<cars> carList, String searchName) {
  return carList.where((car) => car.name == searchName).toList();
}

void printMenu() {
  print("\n||| Bílasala BUBBA |||");
  print("____________________________________");
  print("||| PRESS (1) to search for a car by year");
  print("||| PRESS (2) to search electric cars");
  print("||| PRESS (3) to search Diesel cars");
  print("||| PRESS (4) to search for a car by NAME");
  print("||| PRESS (5) to EXIT Bubbi");
}

String firstLetterUpperCase(String input) { // Make all letter lowercase, then capitalize first letter
  input = input.toLowerCase();
  return input.substring(0, 1).toUpperCase() + input.substring(1);
}

String colorThis(String input) {
  const String red = '\x1B[31m';
  const String resetColor = '\x1B[0m';
  return "$red$input$resetColor";
}

extension colorString on String {
  String get red => '\x1B[31m$this\x1B[0m';
  String get green => '\x1B[32m$this\x1B[0m';
  String get blue => '\x1B[34m$this\x1B[0m';
  String get white => '\x1B[37m$this\x1B[0m';
  // Add more colors as needed
}


