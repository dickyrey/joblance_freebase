import 'package:equatable/equatable.dart';

class OnBoarding extends Equatable {
  const OnBoarding({
    required this.imagePath,
    required this.title,
    required this.subtitle,
  });

  final String imagePath;
  final String title;
  final String subtitle;
  
  @override
  List<Object?> get props => [imagePath, title, subtitle];
}
