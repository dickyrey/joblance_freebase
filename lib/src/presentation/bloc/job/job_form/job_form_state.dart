part of 'job_form_bloc.dart';

@freezed
class JobFormState with _$JobFormState {
  const factory JobFormState({
    required RequestState state,
    required String message,
    required bool isSubmitting,
    required List<Category> categories,
    required List<String> experienceLevelList,
    required Category? selectedCategory,
    required String position,
    required String experienceLevel,
    required String jobType,
    required String salary,
    required String description,
  }) = _JobFormState;

  factory JobFormState.initial() => const JobFormState(
        state: RequestState.empty,
        message: '',
        isSubmitting: false,
        categories: [],
        experienceLevelList: [
          'Beginner',
          'Intermediate',
          'Advance',
          'Expert',
        ],
        selectedCategory: null,
        position: '',
        experienceLevel: 'Beginner',
        jobType: 'Remote',
        salary: '',
        description: '',
      );
}
