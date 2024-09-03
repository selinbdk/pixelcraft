part of '../../view/master_view.dart';

class _MasterAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _MasterAppBar(
    this.title,
    this.languageCodes,
    this.flags,
  );

  final List<SvgPicture> flags;
  final List<String> languageCodes;
  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocaleCubit, Locale>(
      builder: (context, state) {
        return BlocBuilder<CurrentFlagCubit, int>(
          builder: (context, flagIndex) {
            return AppBar(
              centerTitle: true,
              leading: AppIconButton(
                icon: flags[flagIndex],
                onPressed: () {
                  context.read<CurrentFlagCubit>().toggleFlagIndex(languageCodes);
                  context.read<LocaleCubit>().changeLanguage(languageCodes[flagIndex]);
                },
              ),
              title: Text(
                textAlign: TextAlign.center,
                title,
                style: context.appTextTheme.displayMedium?.copyWith(
                  color: ColorName.primaryLabel,
                  fontWeight: FontWeight.bold,
                  fontSize: 17.sp,
                ),
              ),
              actions: [
                AppIconButton(
                  icon: Assets.icons.add.svg(),
                  onPressed: () async {
                    await showModalBottomSheet<void>(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      barrierColor: Colors.transparent,
                      enableDrag: false,
                      clipBehavior: Clip.hardEdge,
                      useSafeArea: true,
                      context: context,
                      builder: (context) => SizedBox(
                        height: 0.4.sh,
                        child: const _SlidingPanel(),
                      ),
                    );
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
