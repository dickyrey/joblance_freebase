import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:joblance_firebase/src/domain/entities/profile.dart';

class ProfileModel extends Equatable {
  const ProfileModel({
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

  factory ProfileModel.fromDocument(DocumentSnapshot document) {
    return ProfileModel(
      id: document['id'] as String,
      email: document['email'] as String,
      fullName: document['full_name'] as String,
      image: document['image'] as String,
      phoneNumber: document['phone_number'] as String,
      position: document['position'] as String,
      company: document['company'] as String,
      location: document['location'] as String,
      about: document['about'] as String,
      address: document['address'] as String,
      birthday: document['birthday'] as Timestamp,
      createdAt: document['created_at'] as Timestamp,
    );
  }

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

  Profile toEntity() => Profile(
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

  Map<String, dynamic> toMap({String? uid, String? imageFile}) {
    return {
      'id': uid == '' ? '' : uid,
      'email': email == '' ? '' : email,
      'full_name': fullName == '' ? '' : fullName,
      'image': imageFile ?? (image == '' ? '' : image),
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
