part of '../../view/discover_view.dart';

class _BottomSheet extends StatelessWidget {
  const _BottomSheet();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: ColoredBox(
        color: ColorName.primaryBackground,
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 4,
                sigmaY: 4,
              ),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.white.withOpacity(0.15),
                      Colors.white.withOpacity(0.05),
                    ],
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(
                      child: Text(
                        AppLocalizations.of(context).promptTitle,
                        style: context.appTextTheme.displayMedium?.copyWith(
                          color: ColorName.primaryLabel,
                          fontWeight: FontWeight.bold,
                          fontSize: 17.sp,
                        ),
                      ),
                    ),
                    115.horizontalSpace,
                    AppIconButton(
                      icon: Assets.icons.close.svg(),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
                Padding(
                  padding: AppPadding.pagePadding,
                  child: const TextBoxWidget(),
                ),
                Padding(
                  padding: AppPadding.pagePadding,
                  child: AppButton(
                    onPressed: () {},
                    backgroundColor: ColorName.primaryBlue,
                    foregroundColor: ColorName.primaryLabel,
                    messages: context.l10n.generateButtonTitle,
                    icon: Assets.icons.wand.svg(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
