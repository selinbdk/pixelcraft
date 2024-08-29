part of '../../view/discover_view.dart';

class _DiscoverAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _DiscoverAppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: AppIconButton(
        icon: Assets.icons.language.svg(),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => const PermissionAlert(),
            barrierDismissible: false,
          );
        },
      ),
      title: Row(
        children: [
          AppIconButton(
            icon: Assets.icons.language.svg(),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => const PermissionAlert(),
                barrierDismissible: false,
              );
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
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
