part of 'job_form_bloc.dart';

@freezed
class JobFormEvent with _$JobFormEvent {
  const factory JobFormEvent.fetchCategories() = _FetchCategories;

  const factory JobFormEvent.categoryOnChange(Category category) = _CategoryOnChange;
  const factory JobFormEvent.positionOnChanged(String position) = _PositionOnChanged;
  const factory JobFormEvent.experienceLevelOnChanged(String experienceLevel) = _ExperienceLevelOnChanged;
  const factory JobFormEvent.jobTypeOnChanged(String jobType) = _JobTypeOnChanged;
  const factory JobFormEvent.salaryOnChanged(String salary) = _SalaryOnChanged;
  const factory JobFormEvent.descriptionOnChanged(String description) = _DescriptionOnChanged;
}
