enum Routes {
  home('/'),
  whitePaper('/white-paper'),
  airdrop('/airdrop'),
  unknown('/unknown');

  const Routes(this.route);
  final String route;
}
