part of '../../view/discover_view.dart';

class _SlidingPanel extends StatelessWidget {
  const _SlidingPanel();

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    String? base64String;

    return BlocBuilder<GenerateImageCubit, GenerateImageState>(
      builder: (context, state) {
        if (state is GenerateImageLoading) {
          //* Future.delayed is used to solve setState() or markNeedsBuild() called during build Error
          Future.delayed(Duration.zero, () {
            showDialog(
              context: context,
              builder: (context) => const LoadingDialog(),
              barrierDismissible: false,
            );
          });
        } else if (state is GenerateImageFailure) {
          Future.delayed(Duration.zero,(){
            Navigator.pop(context);
            Navigator.pop(context);
            context.showErrorMessage(message: 'Something Went Wrong!');

          });
          
        } else if (state is GenerateImageSuccess) {
          base64String = state.imageList.base64;

          Future.delayed(Duration.zero, () {
            showDialog<void>(
              context: context,
              builder: (context) => _DialogField(
                onPressed: () {
                  appRouter.popUntilRoot();
                  context.pushRoute(
                    ResultRoute(
                      base64String: base64String ?? '',
                      controller: controller,
                    ),
                  );
                },
              ),
            );
          });
        }
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
                    maxLines: 5,
                  ),
                ),
                const Spacer(flex: 4),
                ValueListenableBuilder(
                  valueListenable: controller,
                  builder: (context, value, child) {
                    return _PanelButton(
                      controller: controller,
                      isEnabled: value.text.isNotEmpty,
                    );
                  },
                ),
                const Spacer(
                  flex: 5,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

//* Generate Button
class _PanelButton extends StatelessWidget {
  const _PanelButton({
    required this.controller,
    required this.isEnabled,
  });

  final TextEditingController controller;
  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: AppButton(
        onPressed: isEnabled
            ? () async {
                await context.read<GenerateImageCubit>().fetchData(prompt: controller.text);
              }
            : null,
        backgroundColor: ColorName.primaryBlue,
        foregroundColor: ColorName.primaryLabel,
        messages: context.l10n.generateButtonTitle,
        icon: Assets.icons.wand.svg(),
      ),
    );
  }
}
