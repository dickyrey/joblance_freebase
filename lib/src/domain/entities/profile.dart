import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:joblance_firebase/src/data/models/profile_model.dart';

class Profile extends Equatable {
  const Profile({
    required this.id,
    required this.email,
    required this.fullName,
    required this.image,
    required this.phoneNumber,
    required this.position,
    required this.company,
    required this.location,
    required this.about,
    required this.address,
    required this.birthday,
    required this.createdAt,
  });
  ProfileModel toModel() => ProfileModel(
        id: id,
        email: email,
        fullName: fullName,
        image: image,
        phoneNumber: phoneNumber,
        position: position,
        company: company,
        location: location,
        about: about,
        address: address,
        birthday: birthday,
        createdAt: createdAt,
      );
  final String id;
  final String email;
  final String fullName;
  final String image;
  final String phoneNumber;
  final String position;
  final String company;
  final String location;
  final String about;
  final String address;
  final Timestamp birthday;
  final Timestamp createdAt;

  @override
  List<Object?> get props => [
        id,
        email,
        fullName,
        image,
        phoneNumber,
        position,
        company,
        location,
        about,
        address,
        birthday,
        createdAt,
      ];

  Map<String, dynamic> toMap() {
    return {
      'id': id == '' ? '' : id,
      'email': email == '' ? '' : email,
      'full_name': fullName == '' ? '' : fullName,
      'image': image == '' ? '' : image,
      'phone_number': phoneNumber == '' ? '' : phoneNumber,
      'position': position == '' ? '' : position,
      'company': company == '' ? '' : company,
      'location': location == '' ? '' : location,
      'about': about == '' ? '' : about,
      'address': address == '' ? '' : address,
      'birthday': birthday,
      'created_at': createdAt,
    };
  }
}
