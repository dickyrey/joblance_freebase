import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:image_picker/image_picker.dart';
import 'package:joblance_firebase/src/common/colors.dart';
import 'package:joblance_firebase/src/common/const.dart';
import 'package:joblance_firebase/src/common/screens.dart';
import 'package:joblance_firebase/src/domain/entities/client.dart';
import 'package:joblance_firebase/src/presentation/bloc/client/client_form/client_form_bloc.dart';
import 'package:joblance_firebase/src/presentation/cubit/theme_cubit.dart';
import 'package:joblance_firebase/src/presentation/widgets/custom_dialog.dart';
import 'package:joblance_firebase/src/presentation/widgets/custom_elevated_button.dart';
import 'package:joblance_firebase/src/presentation/widgets/custom_text_form_field.dart';
import 'package:joblance_firebase/src/utilities/toast.dart';
import 'package:octo_image/octo_image.dart';

class ProfileFormPage extends StatefulWidget {
  const ProfileFormPage({Key? key, required this.client}) : super(key: key);
  final Client client;

  @override
  State<ProfileFormPage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<ProfileFormPage> {
  late TextEditingController _usernameController;
  late TextEditingController _positionController;
  late TextEditingController _addressController;
  late TextEditingController _emailController;
  late TextEditingController _phoneController;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    final state = context.read<ClientFormBloc>().state;
    _usernameController = TextEditingController(text: state.name);
    _positionController = TextEditingController(text: state.position);
    _addressController = TextEditingController(text: state.address);
    _emailController = TextEditingController(text: state.email);
    _phoneController = TextEditingController(text: state.phone);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final themeCubit = context.read<ThemeCubit>().state;

    return Scaffold(
      body: BlocBuilder<ClientFormBloc, ClientFormState>(
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
                          margin:
                              const EdgeInsets.symmetric(horizontal: Const.margin),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(Const.radius),
                          ),
                          child: Column(
                            children: [
                              _buildProfile(
                                context,
                                imageUrl: widget.client.image,
                                imageFile: state.imageFile,
                              ),
                              Divider(
                                thickness: 2,
                                color: theme.backgroundColor,
                              ),
                              _buildForm(
                                context,
                                birthdate: state.birthdate,
                                formKey: _formKey,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: Const.space25),
                        CustomElevatedButton(
                          onTap: () {
                            FocusScope.of(context).requestFocus(FocusNode());
                            showToast(
                              msg: AppLocalizations.of(context)!.changes_saved,
                            );
                            context
                                .read<ClientFormBloc>()
                                .add(const ClientFormEvent.saveChanges());
                            Navigator.pop(context);
                          },
                          label: AppLocalizations.of(context)!.save_changes,
                          margin:
                              const EdgeInsets.symmetric(horizontal: Const.margin),
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
                            context.read<ClientFormBloc>().add(
                                  const ClientFormEvent.pickImage(
                                    ImageSource.camera,
                                  ),
                                );
                          },
                          onGalleryTap: () {
                            Navigator.pop(context);
                            context.read<ClientFormBloc>().add(
                                  const ClientFormEvent.pickImage(
                                    ImageSource.gallery,
                                  ),
                                );
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
    required String birthdate,
    required Key formKey,
  }) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(Const.space12),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.main_info,
              style: theme.textTheme.headline3,
            ),
            const SizedBox(height: Const.space15),
            Text(
              AppLocalizations.of(context)!.username,
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
                hintText: AppLocalizations.of(context)!.enter_your_username,
                onChanged: (v) {
                  context
                      .read<ClientFormBloc>()
                      .add(ClientFormEvent.nameOnChanged(v));
                },
              ),
            ),
            const SizedBox(height: Const.space12),
            Text(
              AppLocalizations.of(context)!.position,
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
                hintText: AppLocalizations.of(context)!.position,
                onChanged: (v) {
                  context
                      .read<ClientFormBloc>()
                      .add(ClientFormEvent.positionOnChanged(v));
                },
              ),
            ),
            const SizedBox(height: Const.space12),
            Text(
              AppLocalizations.of(context)!.location,
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
                hintText: AppLocalizations.of(context)!.location,
                onChanged: (v) {
                  context
                      .read<ClientFormBloc>()
                      .add(ClientFormEvent.addressOnChanged(v));
                },
              ),
            ),
            const SizedBox(height: Const.space12),
            Text(
              AppLocalizations.of(context)!.birthday_date,
              style: theme.textTheme.subtitle1,
            ),
            const SizedBox(height: Const.space8),
            InkWell(
              onTap: () => context
                  .read<ClientFormBloc>()
                  .add(ClientFormEvent.birthdayOnChanged(context)),
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
                      birthdate,
                      style: theme.textTheme.bodyText1,
                    ),
                    const Icon(IconlyLight.calendar)
                  ],
                ),
              ),
            ),
            const SizedBox(height: Const.space25),
            Text(
              AppLocalizations.of(context)!.contact_info,
              style: theme.textTheme.headline3,
            ),
            const SizedBox(height: Const.space15),
            Text(
              AppLocalizations.of(context)!.email_address,
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
                hintText: AppLocalizations.of(context)!.email_address,
              ),
            ),
            const SizedBox(height: Const.space12),
            Text(
              AppLocalizations.of(context)!.mobile_number,
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
                hintText: AppLocalizations.of(context)!.mobile_number,
                onChanged: (v) {
                  context
                      .read<ClientFormBloc>()
                      .add(ClientFormEvent.phoneOnChanged(v));
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
              onTap: () => Navigator.pop(context),
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
              AppLocalizations.of(context)!.edit_profile,
              style: theme.textTheme.headline3,
            ),
          ],
        ),
      ),
    );
  }
}
