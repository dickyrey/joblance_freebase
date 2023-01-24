import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:joblance_firebase/src/common/colors.dart';
import 'package:joblance_firebase/src/common/const.dart';
import 'package:joblance_firebase/src/common/enums.dart';
import 'package:joblance_firebase/src/common/screens.dart';
import 'package:joblance_firebase/src/domain/entities/profile.dart';
import 'package:joblance_firebase/src/presentation/bloc/profile/profile_form/profile_form_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/profile/profile_watcher/profile_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/cubit/theme_cubit.dart';
import 'package:joblance_firebase/src/presentation/widgets/custom_dialog.dart';
import 'package:joblance_firebase/src/presentation/widgets/custom_elevated_button.dart';
import 'package:joblance_firebase/src/presentation/widgets/custom_text_form_field.dart';
import 'package:joblance_firebase/src/utilities/toast.dart';
import 'package:octo_image/octo_image.dart';

class ProfileFormPage extends StatefulWidget {
  const ProfileFormPage({Key? key, required this.profile}) : super(key: key);
  final Profile profile;

  @override
  State<ProfileFormPage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<ProfileFormPage> {
  late TextEditingController _usernameController;
  late TextEditingController _positionController;
  late TextEditingController _addressController;
  late TextEditingController _emailController;
  late TextEditingController _phoneController;
  String _birthday = '';

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    final state = context.read<ProfileFormBloc>().state;
    _usernameController = TextEditingController(text: state.fullName);
    _positionController = TextEditingController(text: state.position);
    _addressController = TextEditingController(text: state.address);
    _emailController = TextEditingController(text: state.email);
    _phoneController = TextEditingController(text: state.phoneNumber);
    _birthday = DateFormat('MMM dd, yyyy').format(
      widget.profile.birthday.toDate(),
    );
  }

  Future<void> selectDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        _birthday = DateFormat('MMM dd, yyyy').format(picked);
        context.read<ProfileFormBloc>().add(
              ProfileFormEvent.birthdayOnChanged(Timestamp.fromDate(picked)),
            );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;
    final themeCubit = context.read<ThemeCubit>().state;

    return Scaffold(
      body: BlocConsumer<ProfileFormBloc, ProfileFormState>(
        listener: (context, state) {
          if (state.state == RequestState.error) {
            showToast(msg: 'Error while updating profile');
          } else if (state.state == RequestState.loaded) {
            context
                .read<ProfileWatcherBloc>()
                .add(const ProfileWatcherEvent.fetchProfile());
            showToast(msg: lang.changes_saved);
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return SafeArea(
            child: Column(
              children: [
                _buildAppBar(context),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Card(
                          elevation: 0,
                          color: (themeCubit is ThemeDark)
                              ? ColorDark.card
                              : ColorLight.catSkillWhite,
                          margin: const EdgeInsets.symmetric(
                            horizontal: Const.margin,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(Const.radius),
                          ),
                          child: Column(
                            children: [
                              _buildProfile(
                                context,
                                imageUrl: widget.profile.image,
                                imageFile: state.imageFile,
                              ),
                              Divider(
                                thickness: 2,
                                color: theme.backgroundColor,
                              ),
                              _buildForm(
                                context,
                                birthday: _birthday,
                                formKey: _formKey,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: Const.space25),
                        CustomElevatedButton(
                          onTap: () {
                            FocusScope.of(context).requestFocus(FocusNode());
                            context.read<ProfileFormBloc>().add(
                                  ProfileFormEvent.saveChangesPressed(
                                    widget.profile,
                                  ),
                                );
                          },
                          label: lang.save_changes,
                          margin: const EdgeInsets.symmetric(
                            horizontal: Const.margin,
                          ),
                          isLoading: state.isSubmitting ? true : false,
                        ),
                        const SizedBox(height: Const.space25),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: Const.space25),
              ],
            ),
          );
        },
      ),
    );
  }

  Padding _buildProfile(
    BuildContext context, {
    required String imageUrl,
    required File? imageFile,
  }) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(Const.space12),
      child: SizedBox(
        width: Screens.width(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 110,
              height: 110,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(Const.radius),
                    child: (imageFile != null)
                        ? Image.file(
                            imageFile,
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          )
                        : OctoImage(
                            width: 100,
                            height: 100,
                            image: CachedNetworkImageProvider(
                              imageUrl,
                            ),
                            fit: BoxFit.cover,
                          ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: InkWell(
                      onTap: () {
                        showPickImageDialog(
                          context,
                          onCameraTap: () {
                            Navigator.pop(context);
                            // TODO(dickyrey): Image
                            // context.read<ProfileFormBloc>().add(
                            //       const ProfileFormEvent.pickImage(
                            //         ImageSource.camera,
                            //       ),
                            // );
                          },
                          onGalleryTap: () {
                            // TODO(dickyrey): Image
                            // Navigator.pop(context);
                            // context.read<ProfileFormBloc>().add(
                            //       const ProfileFormEvent.pickImage(
                            //         ImageSource.gallery,
                            //       ),
                            //     );
                          },
                        );
                      },
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: theme.cardColor,
                        child: CircleAvatar(
                          radius: 23,
                          backgroundColor: theme.primaryColor,
                          child: const Icon(
                            IconlyLight.camera,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _buildForm(
    BuildContext context, {
    required String birthday,
    required Key formKey,
  }) {
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.all(Const.space12),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              lang.main_info,
              style: theme.textTheme.headline3,
            ),
            const SizedBox(height: Const.space15),
            Text(
              lang.username,
              style: theme.textTheme.subtitle1,
            ),
            const SizedBox(height: Const.space8),
            DecoratedBox(
              decoration: BoxDecoration(
                color: theme.backgroundColor,
                borderRadius: BorderRadius.circular(Const.radius),
              ),
              child: CustomTextFormField(
                controller: _usernameController,
                hintText: lang.enter_your_username,
                onChanged: (v) {
                  context
                      .read<ProfileFormBloc>()
                      .add(ProfileFormEvent.fullNameOnChanged(v));
                },
              ),
            ),
            const SizedBox(height: Const.space12),
            Text(
              lang.position,
              style: theme.textTheme.subtitle1,
            ),
            const SizedBox(height: Const.space8),
            DecoratedBox(
              decoration: BoxDecoration(
                color: theme.backgroundColor,
                borderRadius: BorderRadius.circular(Const.radius),
              ),
              child: CustomTextFormField(
                controller: _positionController,
                hintText: lang.position,
                onChanged: (v) {
                  context
                      .read<ProfileFormBloc>()
                      .add(ProfileFormEvent.positionOnChanged(v));
                },
              ),
            ),
            const SizedBox(height: Const.space12),
            Text(
              lang.address,
              style: theme.textTheme.subtitle1,
            ),
            const SizedBox(height: Const.space8),
            DecoratedBox(
              decoration: BoxDecoration(
                color: theme.backgroundColor,
                borderRadius: BorderRadius.circular(Const.radius),
              ),
              child: CustomTextFormField(
                controller: _addressController,
                hintText: lang.address,
                onChanged: (v) {
                  context
                      .read<ProfileFormBloc>()
                      .add(ProfileFormEvent.addressOnChanged(v));
                },
              ),
            ),
            const SizedBox(height: Const.space12),
            Text(
              lang.birthday_date,
              style: theme.textTheme.subtitle1,
            ),
            const SizedBox(height: Const.space8),
            InkWell(
              onTap: () {
                selectDate(context);
              },
              borderRadius: BorderRadius.circular(Const.radius),
              child: Container(
                width: Screens.width(context),
                height: 45,
                padding: const EdgeInsets.symmetric(
                  horizontal: Const.space12,
                ),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: theme.backgroundColor,
                  borderRadius: BorderRadius.circular(Const.radius),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      birthday,
                      style: theme.textTheme.bodyText1,
                    ),
                    const Icon(IconlyLight.calendar)
                  ],
                ),
              ),
            ),
            const SizedBox(height: Const.space25),
            Text(
              lang.contact_info,
              style: theme.textTheme.headline3,
            ),
            const SizedBox(height: Const.space15),
            Text(
              lang.email_address,
              style: theme.textTheme.subtitle1,
            ),
            const SizedBox(height: Const.space8),
            DecoratedBox(
              decoration: BoxDecoration(
                color: theme.backgroundColor,
                borderRadius: BorderRadius.circular(Const.radius),
              ),
              child: CustomTextFormField(
                controller: _emailController,
                enabled: false,
                hintText: lang.email_address,
                suffixIcon: const Icon(
                  FeatherIcons.check,
                  color: ColorLight.success,
                ),
              ),
            ),
            const SizedBox(height: Const.space12),
            Text(
              lang.mobile_number,
              style: theme.textTheme.subtitle1,
            ),
            const SizedBox(height: Const.space8),
            DecoratedBox(
              decoration: BoxDecoration(
                color: theme.backgroundColor,
                borderRadius: BorderRadius.circular(Const.radius),
              ),
              child: CustomTextFormField(
                controller: _phoneController,
                hintText: lang.mobile_number,
                onChanged: (v) {
                  context
                      .read<ProfileFormBloc>()
                      .add(ProfileFormEvent.phoneNumberOnChanged(v));
                },
              ),
            ),
            const SizedBox(height: Const.space12),
          ],
        ),
      ),
    );
  }

  Padding _buildAppBar(BuildContext context) {
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;
    final themeCubit = context.read<ThemeCubit>().state;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Const.margin,
        vertical: Const.space25,
      ),
      child: SizedBox(
        height: 50,
        width: Screens.width(context),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
                context
                    .read<ProfileFormBloc>()
                    .add(const ProfileFormEvent.init());
              },
              child: Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: (themeCubit is ThemeDark)
                      ? ColorDark.card
                      : ColorLight.whiteSmoke,
                  borderRadius: BorderRadius.circular(Const.radius),
                ),
                child: const Icon(FeatherIcons.chevronLeft),
              ),
            ),
            const SizedBox(width: Const.space15),
            Text(
              lang.edit_profile,
              style: theme.textTheme.headline3,
            ),
          ],
        ),
      ),
    );
  }
}
