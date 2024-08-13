part of '../../view/discover_view.dart';

class _SlidingPanel extends StatelessWidget {
  const _SlidingPanel();

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 4,
        sigmaY: 4,
      ),
      child: Container(
        padding: AppPadding.pagePadding / 1.5,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(.6),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Spacer(),
                Flexible(
                  child: Text(
                    AppLocalizations.of(context).promptTitle,
                    style: context.appTextTheme.displayMedium?.copyWith(
                      color: ColorName.primaryLabel,
                      fontWeight: FontWeight.bold,
                      fontSize: 17.sp,
                    ),
                  ),
                ),
                const Spacer(),
                AppIconButton(
                  icon: Assets.icons.close.svg(),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(.6),
                borderRadius: BorderRadius.circular(30),
              ),
              child: const PromptField(),
            ),
            SafeArea(
              child: SizedBox(
                height: 64,
                child: AppButton(
                  onPressed: () async {
                    await showDialog<void>(
                      context: context,
                      builder: (context) => _DialogField(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    );
                  },
                  backgroundColor: ColorName.primaryBlue,
                  foregroundColor: ColorName.primaryLabel,
                  messages: context.l10n.generateButtonTitle,
                  icon: Assets.icons.wand.svg(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
