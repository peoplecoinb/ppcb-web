enum Routes {
  home('/'),
  whitePaper('/white-paper'),
  roadMap('/road-map'),
  fund('/fund'),
  team('/team'),
  preSale('/pre-sale'),
  more('/more'),
  unknown('/unknown');

  const Routes(this.route);
  final String route;
}
