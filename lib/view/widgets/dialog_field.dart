part of '../master_view.dart';

class _DialogField extends StatelessWidget {
  const _DialogField({
    // ignore: unused_element
    super.key,
    this.onPressed,
  });

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        AppLocalizations.of(context).successDialogTitle,
        style: TextStyle(
          color: ColorName.primaryLabel,
          fontWeight: FontWeight.bold,
          fontSize: 17.sp,
        ),
      ),
      content: Text(
        AppLocalizations.of(context).successDialogContent,
        style: TextStyle(
          color: ColorName.primaryLabel,
          fontSize: 15.sp,
        ),
      ),
      backgroundColor: ColorName.secondaryBackground,
      actions: [
        AppButton(
          onPressed: onPressed,
          messages: AppLocalizations.of(context).showButtonTitle,
          backgroundColor: ColorName.primaryBlue,
          foregroundColor: ColorName.primaryLabel,
        ),
      ],
    );
  }
}
