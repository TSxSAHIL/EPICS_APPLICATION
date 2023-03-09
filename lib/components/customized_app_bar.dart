import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../utils/config.dart';

class CustomizedAppBar extends StatefulWidget implements PreferredSizeWidget {
  CustomizedAppBar({ this.appTitle, this.route,this.icon,this.actions, super.key});

  @override
  Size get preferredSize => const Size.fromHeight(60);
  final String? appTitle;
  final String? route;
  final FaIcon? icon;
  final List<Widget>? actions;

  @override
  State<CustomizedAppBar> createState() => _CustomizedAppBarState();
}

class _CustomizedAppBarState extends State<CustomizedAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(widget.appTitle!, style: const TextStyle(fontSize: 20 , color: Colors.black),),
      leading: widget.icon != null
      ? Container(
        margin: const EdgeInsets.symmetric(horizontal: 10 , vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Config.primaryColor,
        ),
        child: IconButton(onPressed: (){
          if (widget.route!= null) {
            Navigator.of(context).pushNamed(widget.route!);
          }else{
            Navigator.of(context).pop();
          }
        }, icon: widget.icon!, iconSize: 16, color: Colors.white,),
      )
      : null,
      actions: widget.actions ?? null,

    );
  }
}