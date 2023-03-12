class DeliveryModel {
  final String address;
  String time;
  final String name;
  final String phone;

  DeliveryModel({required this.address, required this.time, required this.name, required this.phone});

  static DeliveryModel data = DeliveryModel(
    address:
    "A-302, Aisshwarya Excellency, FCI Godown Rd, Dooravani Nagar, Bengaluru",
    time: "02:00 PM - 03:00 PM",
    name: "Nikhil Kirve",
    phone: "4444011733",
  );
}