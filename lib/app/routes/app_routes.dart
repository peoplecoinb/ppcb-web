enum Routes {
  home('/'),
  whitePaper('/white-paper'),
  roadMap('/road-map'),
  unknown('/unknown');

  const Routes(this.route);
  final String route;
}
