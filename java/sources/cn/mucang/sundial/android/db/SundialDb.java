package cn.mucang.sundial.android.db;

import android.annotation.SuppressLint;
import android.telephony.TelephonyManager;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.db.b;
import cn.mucang.android.core.db.c;
import cn.mucang.android.core.db.e;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;
import cn.mucang.sundial.android.db.entity.DeviceInfo;
import cn.mucang.sundial.android.db.entity.DeviceParameter;
import cn.mucang.sundial.android.tcp.data.DataManager;
import cn.mucang.sundial.android.tcp.message.Parameter;
import cn.mucang.sundial.android.tcp.utils.DeviceUtils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class SundialDb {
    private static final int DB_VERSION = 5;
    private static SundialDb sInstance;
    private final cn.mucang.android.core.db.a db;

    @SuppressLint({"MissingPermission"})
    private SundialDb() {
        b bVar = new b();
        bVar.d("sundial.db");
        bVar.c("sql/sundial.sql");
        bVar.b(new c("sql/sundial_update_"));
        bVar.e(5);
        cn.mucang.android.core.db.a aVarA = bVar.a();
        this.db = aVarA;
        DeviceInfo deviceInfo = (DeviceInfo) aVarA.n(DeviceInfo.class, e.d("select * from t_device_info", new String[0]));
        String imei = DeviceUtils.getImei();
        if (deviceInfo == null) {
            deviceInfo = new DeviceInfo();
            deviceInfo.setManufacturer("木仓");
            deviceInfo.setDeviceModel("Y321");
            deviceInfo.setImei(imei);
            deviceInfo.setCarNo("");
            deviceInfo.setSerialNo("P777");
            String line1Number = ((TelephonyManager) MucangConfig.getContext().getSystemService("phone")).getLine1Number();
            deviceInfo.setDevicePhone(n0.e(line1Number) ? "" : line1Number);
            aVarA.u(deviceInfo);
        }
        if (n0.g(imei)) {
            deviceInfo.setImei(imei);
            aVarA.E(deviceInfo);
        } else {
            u.d(new Runnable() { // from class: cn.mucang.sundial.android.db.a
                @Override // java.lang.Runnable
                public final void run() {
                    SundialDb.a();
                }
            }, 100L);
        }
        List listY = aVarA.y(DeviceParameter.class, e.d("select * from t_device_parameter", new String[0]));
        HashSet hashSet = new HashSet();
        Iterator it = listY.iterator();
        while (it.hasNext()) {
            hashSet.add(Long.valueOf(((DeviceParameter) it.next()).getParameterId()));
        }
        List<DeviceParameter> defaultParams = getDefaultParams(deviceInfo);
        ArrayList arrayList = new ArrayList(hashSet.size());
        for (DeviceParameter deviceParameter : defaultParams) {
            if (hashSet.contains(Long.valueOf(deviceParameter.getParameterId()))) {
                arrayList.add(deviceParameter);
            }
        }
        defaultParams.removeAll(arrayList);
        this.db.v(defaultParams);
    }

    static /* synthetic */ void a() {
        DeviceInfo deviceInfo = DataManager.getInstance().getDeviceInfo();
        String imei = DeviceUtils.getImei();
        if (deviceInfo != null && n0.e(deviceInfo.getImei()) && n0.g(imei)) {
            deviceInfo.setImei(imei);
            DataManager.getInstance().updateDeviceInfo(deviceInfo);
        }
    }

    private List<DeviceParameter> getDefaultParams(DeviceInfo deviceInfo) {
        ArrayList arrayList = new ArrayList(64);
        arrayList.add(DeviceParameter.from(Parameter.create(1L, "30")));
        arrayList.add(DeviceParameter.from(Parameter.create(2L, "20")));
        arrayList.add(DeviceParameter.from(Parameter.create(3L, "2")));
        arrayList.add(DeviceParameter.from(Parameter.create(32L, "0")));
        arrayList.add(DeviceParameter.from(Parameter.create(41L, "30")));
        arrayList.add(DeviceParameter.from(Parameter.create(44L, "100")));
        return arrayList;
    }

    public static SundialDb getInstance() {
        if (sInstance == null) {
            sInstance = new SundialDb();
        }
        return sInstance;
    }

    public cn.mucang.android.core.db.a getDb() {
        return this.db;
    }
}
