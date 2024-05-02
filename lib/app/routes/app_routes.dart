enum Routes {
  home('/'),
  whitePaper('/white-paper'),
  unknown('/unknown');

  const Routes(this.route);
  final String route;
}
