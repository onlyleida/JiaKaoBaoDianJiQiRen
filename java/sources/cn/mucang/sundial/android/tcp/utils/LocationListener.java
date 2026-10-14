package cn.mucang.sundial.android.tcp.utils;

import android.location.Location;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.sundial.android.db.SundialLogDb;
import cn.mucang.sundial.android.db.entity.DebugLog;
import cn.mucang.sundial.android.eventbus.LiveBus;
import cn.mucang.sundial.android.eventbus.event.UpdateSpeedEvent;
import cn.mucang.sundial.android.location.DefaultLocationListener;

/* JADX INFO: loaded from: classes5.dex */
public class LocationListener implements DefaultLocationListener {
    public static LocationListener instance = new LocationListener();
    public Location lastLocation;
    private UpdateSpeedEvent updateSpeedEvent = new UpdateSpeedEvent();

    private LocationListener() {
    }

    public static LocationListener getInstance() {
        return instance;
    }

    @Override // cn.mucang.sundial.android.location.DefaultLocationListener
    public void onLocationChanged(Location location) {
        Location location2 = this.lastLocation;
        if (location2 != null && location.getLatitude() == location2.getLatitude() && location.getLongitude() == location2.getLongitude()) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.lastLocation = location;
        if (MucangConfig.v()) {
            float fDistanceTo = location2 != null ? location.distanceTo(location2) / 1000.0f : -1.0f;
            float speed = location.getSpeed() * 3.6f;
            DebugLog debugLog = new DebugLog();
            debugLog.setType(2);
            debugLog.setCreateTime(jCurrentTimeMillis);
            debugLog.setGpsDistance(String.valueOf(fDistanceTo));
            debugLog.setGpsSpeed(String.valueOf(speed));
            debugLog.setLog1("provider=" + location.getProvider() + ",longitude:" + location.getLongitude() + ",latitude:" + location.getLatitude());
            SundialLogDb.getInstance().insert(debugLog);
        }
        LiveBus.post(this.updateSpeedEvent);
    }
}
