enum Routes {
  home('/'),
  whitePaper('/white-paper'),
  airdrop('/airdrop'),
  become_ambassador('/become_ambassador'),
  unknown('/unknown');

  const Routes(this.route);
  final String route;
}
