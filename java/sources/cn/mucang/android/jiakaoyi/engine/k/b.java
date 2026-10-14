package cn.mucang.android.jiakaoyi.engine.k;

import android.location.Location;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    public static double a(double d2, double d3, double d4, double d5) {
        return ((d2 * d4) + (d3 * d5)) / Math.sqrt(((d2 * d2) + (d3 * d3)) * ((d4 * d4) + (d5 * d5)));
    }

    public static Location b(List<Location> list) {
        float bearing = BitmapDescriptorFactory.HUE_RED;
        double latitude = 0.0d;
        double longitude = 0.0d;
        double altitude = 0.0d;
        float accuracy = BitmapDescriptorFactory.HUE_RED;
        float speed = BitmapDescriptorFactory.HUE_RED;
        for (Location location : list) {
            latitude += location.getLatitude();
            longitude += location.getLongitude();
            bearing += location.getBearing();
            accuracy += location.getAccuracy();
            altitude += location.getAltitude();
            speed += location.getSpeed();
        }
        Location location2 = new Location(list.get(0));
        int size = list.size();
        double d2 = size;
        location2.setLatitude(latitude / d2);
        location2.setLongitude(longitude / d2);
        float f2 = size;
        location2.setBearing(bearing / f2);
        location2.setAccuracy(accuracy / f2);
        location2.setAltitude(altitude / d2);
        location2.setSpeed(speed / f2);
        return location2;
    }
}
