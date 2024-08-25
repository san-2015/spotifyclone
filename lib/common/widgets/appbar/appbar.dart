import 'package:flutter/material.dart';
import 'package:spotifyclone/common/helper/is_dark_mode.dart';

class BasicAppbar extends StatelessWidget implements PreferredSize {
  final Widget? title;
  final bool? centretitle;
  const BasicAppbar({super.key, this.title,this.centretitle});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      centerTitle: centretitle ?? false,
      elevation: 0,
      title: title ?? const Text(''),
      leading: IconButton(
        icon: Container(
          decoration: BoxDecoration(
              color: context.isDarkMode
                  ? Colors.white.withOpacity(0.03)
                  : Colors.black.withOpacity(0.04),
              shape: BoxShape.circle),
          child: Icon(
            Icons.arrow_back_ios,
            size: 15,
            color: context.isDarkMode ? Colors.white : Colors.black,
          ),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
