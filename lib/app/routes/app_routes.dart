enum Routes {
  home('/'),
  whitePaper('/white-paper'),
  roadMap('/road-map'),
  fund('/fund'),
  team('/team'),
  unknown('/unknown');

  const Routes(this.route);
  final String route;
}
