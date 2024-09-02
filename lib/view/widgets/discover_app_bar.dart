part of '../../view/discover_view.dart';

class _DiscoverAppBar extends StatelessWidget implements PreferredSizeWidget {
  _DiscoverAppBar();
  final List<SvgPicture> flags = [
    Assets.icons.flagUnitedKingdom.svg(),
    Assets.icons.flagSpain.svg(),
    Assets.icons.flagJapan.svg(),
    Assets.icons.flagPortugal.svg(),
    Assets.icons.flagTurkey.svg(),
  ];

  final List<String> languageCodes = [
    'en',
    'es',
    'ja',
    'pt',
    'tr',
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocaleCubit, Locale>(
      builder: (context, state) {
        return BlocBuilder<CurrentFlagCubit, int>(
          builder: (context, flagIndex) {
            return AppBar(
              centerTitle: true,
              leading: AppIconButton(
                icon: Assets.icons.language.svg(),
                onPressed: () {
                  context.read<CurrentFlagCubit>().toggleFlagIndex(languageCodes);
                  context.read<LocaleCubit>().changeLanguage(languageCodes[flagIndex]);
                },
              ),
              title: Row(
                children: [
                  AppIconButton(
                    icon: flags[flagIndex],
                    onPressed: () {
                      return;
                    },
                  ),
                  const Spacer(),
                  Text(
                    textAlign: TextAlign.center,
                    AppLocalizations.of(context).discoverTitleMessage,
                    style: context.appTextTheme.displayMedium?.copyWith(
                      color: ColorName.primaryLabel,
                      fontWeight: FontWeight.bold,
                      fontSize: 17.sp,
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                ],
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
