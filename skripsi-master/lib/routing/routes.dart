const RootRoute = "/";

const OverViewPageDisplayName = "Overview";
const OverViewPageRoute = "/overview";

const StatusViewPageDisplayName = "Make a Claim";
const StatusViewPageRoute = "/status";

const DetailViewPageDisplayName = "Detail";
const DetailViewPageRoute = "/detail";

const AuthenticationViewPageDisplayName = "Log out";
const AuthenticationViewPageRoute = "/auth";

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}

List<MenuItem> sideMenuItems = [
  MenuItem(OverViewPageDisplayName, OverViewPageRoute),
  MenuItem(StatusViewPageDisplayName, StatusViewPageRoute),
  MenuItem(DetailViewPageDisplayName, DetailViewPageRoute),
  MenuItem(AuthenticationViewPageDisplayName, AuthenticationViewPageRoute),
];
