class doctorModel {
  String image;
  String title;
  doctorModel({required this.image, required this.title});
}

List<doctorModel> DoctorList = [
  doctorModel(image: "assets/hospitals/Doc.jpg", title: "Dr. Nazli Hameed"),
  doctorModel(image: "assets/hospitals/Doc (2).png", title: "Dr. Komal Aftab"),
  doctorModel(image: "assets/hospitals/Doc3.jpg", title: "Dr. Nasir"),
  doctorModel(image: "assets/hospitals/Doc4.jpg", title: "Dr. Khalid"),
  doctorModel(image: "assets/hospitals/Doc5.png", title: "Dr. Parviaz"),
];
