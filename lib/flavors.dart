enum Flavor {
  dev,
  uat,
  prod,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return 'App DEV';
      case Flavor.uat:
        return 'App UAT';
      case Flavor.prod:
        return 'App';
      default:
        return 'title';
    }
  }

  static String get baseUrl {
    switch (appFlavor) {
      case Flavor.dev:
        return "dev.xyz";
      case Flavor.uat:
        return "uat.xyz";
      case Flavor.prod:
        return "prod.xyz";
      default:
        return 'dev.xyz';
    }
  }

}
