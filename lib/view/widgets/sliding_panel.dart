part of '../../view/discover_view.dart';

class _SlidingPanel extends StatelessWidget {
  _SlidingPanel();

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 4,
        sigmaY: 4,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
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
            const Spacer(),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(.6),
                borderRadius: BorderRadius.circular(30),
              ),
              child: PromptTextField(
                controller: controller,
                onChanged: (value) => controller.text = value,
              ),
            ),
            const Spacer(
              flex: 4,
            ),
            SizedBox(
              height: 64,
              child: AppButton(
                onPressed: () async {
                  await showDialog<void>(
                    context: context,
                    builder: (context) => _DialogField(
                      onPressed: () {
                        context.pushRoute(ResultRoute(controller: controller));
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
            const Spacer(
              flex: 5,
            ),
          ],
        ),
      ),
    );
  }
}
