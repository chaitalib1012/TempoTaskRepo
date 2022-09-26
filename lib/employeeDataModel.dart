

class EmployeeDataModel{
  int? id;
  String? imageUrl;
  String? Fname;
  String? Lname;
  String? Email;
  String? ContactNo;
  int? age;
  String? DOB;
  double? Salary;
  String? address;

EmployeeDataModel(
  {
  this.id,
  this.imageUrl, 
  this.Fname, 
  this.Lname,
  this.Email,
  this.ContactNo,
  this.age,
  this.DOB,
  this.Salary,
  this.address
});

EmployeeDataModel.fromJson(Map<String, dynamic> json)
{
  id = json['id'];
  imageUrl= json['imageUrl'];
  Fname= json['firstName'];
  Lname= json['lastName'];
  Email= json['email'];
  ContactNo= json['contactNumber'];
  age= json['age'];
  DOB= json['dob'];
  Salary= json['salary'];
  address= json['address'];
}

}


