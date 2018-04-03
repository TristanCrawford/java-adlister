public class DaoFactory {

    private static Ads adsDao;
    private static Config config;

    public static Ads getAdsDao() {
        if (adsDao == null) {
            config = new Config();
            adsDao = new MySQLAdsDao(config);
        }
        return adsDao;
    }
}
