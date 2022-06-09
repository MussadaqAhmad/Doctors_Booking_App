class CategoryModel {
  String image;
  String title;
  CategoryModel({required this.image, required this.title});
}

List<CategoryModel> CategoryList = [
  CategoryModel(image: "assets/Icons/kidneys.png", title: "Urologist"),
  CategoryModel(
      image: "assets/Icons/orthopedic.png", title: "Orthopedic Surgeon"),
  CategoryModel(image: "assets/Icons/throat.png", title: "ENT Specialist"),
  CategoryModel(image: "assets/Icons/sun.png", title: "Eye Specialist"),
  CategoryModel(image: "assets/Icons/skin.png", title: "Skin"),
  CategoryModel(image: "assets/Icons/dentistry.png", title: "Dentist"),
  CategoryModel(
      image: "assets/Icons/heart-attack.png", title: "Heart Specialist"),
  CategoryModel(
      image: "assets/Icons/doctor (1).png", title: "General Physcian"),
  CategoryModel(image: "assets/Icons/surgeon.png", title: "General Surgeon"),
  CategoryModel(image: "assets/Icons/kidneys.png", title: "Kidney"),
  CategoryModel(image: "assets/Icons/pregnancy.png", title: "Gynecologist"),
  CategoryModel(image: "assets/Icons/children.png", title: "Child Specialist"),
  CategoryModel(
      image: "assets/Icons/doctor (1).png", title: "Consultant Physician"),
  CategoryModel(image: "assets/Icons/mind.png", title: "Neurologist"),
  CategoryModel(image: "assets/Icons/mind.png", title: "Psyciatist"),
  CategoryModel(image: "assets/Icons/stomach.png", title: "Gastroenterologist"),
  CategoryModel(image: "assets/Icons/lungs.png", title: "Pulmonologist"),
  CategoryModel(
      image: "assets/Icons/glucosemeter.png", title: "Diabetes Specialist"),
  CategoryModel(image: "assets/Icons/listen.png", title: "Endrocrinologist"),
  CategoryModel(image: "assets/Icons/pain.png", title: "Pain Management"),
];
