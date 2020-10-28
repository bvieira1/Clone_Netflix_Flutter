import 'package:flutter/material.dart';
import 'package:flutterFlix/widgets/widgets.dart';

import '../assets.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffset;

  const CustomAppBar({Key key, this.scrollOffset = 0.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 24.0,
        ),
        color: Colors.black
            .withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
        child: Responsive(
          mobile: _CustomAppBarMobile(),
          desktop: _CustomAppBarDesktop(),
        ));
  }
}

class _CustomAppBarMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(Assets.netflixLogo1),
          const SizedBox(
            width: 12.0,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _AppBarButtom(
                  title: 'Início',
                  onTap: () => print('Início'),
                ),
                _AppBarButtom(
                  title: 'Séries',
                  onTap: () => print('Séries'),
                ),
                _AppBarButtom(
                  title: 'Filmes',
                  onTap: () => print('Filmes'),
                ),
                _AppBarButtom(
                  title: 'Minha lista',
                  onTap: () => print('Minha lista'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _CustomAppBarDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(Assets.netflixLogo0),
          const SizedBox(
            width: 12.0,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _AppBarButtom(
                  title: 'Séries',
                  onTap: () => print('Séries'),
                ),
                _AppBarButtom(
                  title: 'Filmes',
                  onTap: () => print('Filmes'),
                ),
                _AppBarButtom(
                  title: 'Minha lista',
                  onTap: () => print('Minha lista'),
                )
              ],
            ),
          ),
          const Spacer(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(Icons.search),
                  iconSize: 28.0,
                  color: Colors.white,
                  onPressed: () => print('Buscar'),
                ),
                _AppBarButtom(
                  title: 'INFANTIL',
                  onTap: () => print('INFANTIL'),
                ),
                _AppBarButtom(
                  title: 'DVD',
                  onTap: () => print('DVD'),
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(Icons.card_giftcard),
                  iconSize: 28.0,
                  color: Colors.white,
                  onPressed: () => print('Presente'),
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(Icons.notifications),
                  iconSize: 28.0,
                  color: Colors.white,
                  onPressed: () => print('Notificações'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _AppBarButtom extends StatelessWidget {
  final String title;
  final Function onTap;

  const _AppBarButtom({Key key, this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w600),
      ),
    );
  }
}
