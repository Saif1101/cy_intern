import 'package:flutter/material.dart';

class ClanMemberTile extends StatelessWidget {
  final String name;
  final String designation; 
  const ClanMemberTile({ Key? key, required this.name, required this.designation }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/avatar.png'),
      ),
      title: Text(
        name, 
        style: Theme.of(context).textTheme.headline4
      ),
      subtitle: Text(
        designation, 
        maxLines: 3,
        style: Theme.of(context).textTheme.bodyText2
      ),
    );
  }
}