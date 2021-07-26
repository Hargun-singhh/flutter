class Flight {
  String? from, to, departure, travellers, category;

  Flight({this.from, this.to, this.departure, this.travellers, this.category});

  Map toMap() {
    return {
      "from": from,
      "to": to,
      "departure": departure,
      "travellers": travellers,
      "category": category,
    };
  }

  @override
  String toString() {
    return {
      "from": from,
      "to": to,
      "departure": departure,
      "travellers": travellers,
      "category": category,
    }.toString();
  }
}

class Round extends Flight {
  String? Return;
  Round({from, to, departure, travellers, category, this.Return})
      : super(
            from: from,
            to: to,
            departure: departure,
            travellers: travellers,
            category: category);

  @override
  String toString() {
    String Data = "ROUNDFLIGHT DETAILS =>: " + super.toString();
    String myData = "\nMORE DELTAILS: " +
        {
          "Return": Return,
        }.toString();

    return Data + myData;
  }
}

class Multi extends Flight {
  String? Return, New_T0, New_from;
  Multi(
      {from,
      to,
      departure,
      travellers,
      category,
      this.Return,
      this.New_T0,
      this.New_from})
      : super(
            from: from,
            to: to,
            departure: departure,
            travellers: travellers,
            category: category);

  @override
  String toString() {
    String Data = " MULTI FLIGHT DETAILS =>>: " + super.toString();
    String myData = "\nNEXT FLIGHT: " +
        {
          "Return": Return,
        }.toString();

    return Data + myData;
  }
}

void main() {
  Flight flight = Flight(
      from: "DELHI",
      to: "CHANDIGARH",
      departure: "27 JULY 2021",
      travellers: "3",
      category: "ECONOMY CLASS\n");
  print(
      "-------------------------ONE WAY---------------------------------------");
  print(flight);
  print(
      "-----------------------------------------------------------------------\n");

  Round round = Round(
      from: "DElHI",
      to: "AMRITSAR",
      departure: "28 JULY 2021",
      Return: "30 JULY 2021",
      travellers: "4",
      category: "BUSSNIES CLASS\n");
  print(
      "---------------------------ROUND TRIP------------------------------------");
  print(round);
  print(
      "-----------------------------------------------------------------------\n");
  Multi multi = Multi(
      from: "DElHI",
      to: "AMRITSAR",
      departure: "28 JULY 2021",
      Return: "30 JULY 2021",
      travellers: "4",
      category: "BUSSNIES CLASS",
      New_from: "BANGALORE",
      New_T0: "CHANDIGARH\n");
  print(
      "----------------------------MULTI TRIP-----------------------------------");
  print(multi);
  print(
      "-----------------------------------------------------------------------\n");
}

/*
OUTPUT =>>


-------------------------ONE WAY---------------------------------------
{from: DELHI, to: CHANDIGARH, departure: 27 JULY 2021, travellers: 3, category: ECONOMY CLASS
}
-----------------------------------------------------------------------

---------------------------ROUND TRIP------------------------------------
ROUNDFLIGHT DETAILS =>: {from: DElHI, to: AMRITSAR, departure: 28 JULY 2021, travellers: 4, category: BUSSNIES CLASS
}
MORE DELTAILS: {Return: 30 JULY 2021}
-----------------------------------------------------------------------

----------------------------MULTI TRIP-----------------------------------
 MULTI FLIGHT DETAILS =>>: {from: DElHI, to: AMRITSAR, departure: 28 JULY 2021, travellers: 4, category: BUSSNIES CLASS}
NEXT FLIGHT: {Return: 30 JULY 2021}
-----------------------------------------------------------------------

*/