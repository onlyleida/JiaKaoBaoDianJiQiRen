package cn.mucang.android.core.identity.internal;

import android.content.Intent;
import android.net.Uri;
import android.os.Environment;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.encode.Digests;
import cn.mucang.android.core.identity.i;
import cn.mucang.android.core.utils.a0;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.j;
import cn.mucang.android.core.utils.j0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.z;
import cn.mucang.android.ui.framework.fetcher.ThreadPool;
import com.alibaba.fastjson.JSON;
import f.a.a.a.p010s.PrivacyAgreementSetting;
import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public class DeviceIdUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f2550a;
    private static final String b;
    private static final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f2551d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String[] f2552e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final ExecutorService f2553f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static volatile DeviceIdData f2554g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static volatile boolean f2555h;

    static class DeviceIdData implements Serializable {
        public String deviceId;
        public long time;

        DeviceIdData() {
        }

        static DeviceIdData parse(String str) {
            try {
                return (DeviceIdData) JSON.parseObject(str, DeviceIdData.class);
            } catch (Exception e2) {
                t.c("DeviceIdManager", e2);
                return null;
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            return Objects.equals(this.deviceId, ((DeviceIdData) obj).deviceId);
        }

        public int hashCode() {
            return Objects.hash(this.deviceId);
        }

        public String toString() {
            return JSON.toJSONString(this);
        }
    }

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f2556a;
        final /* synthetic */ DeviceIdData b;

        a(String str, DeviceIdData deviceIdData) {
            this.f2556a = str;
            this.b = deviceIdData;
        }

        @Override // java.lang.Runnable
        public void run() {
            j0.k("mcUniqueId.db", "mcUniqueId", this.f2556a);
            File externalStorageDirectory = Environment.getExternalStorageDirectory();
            boolean zP = false;
            for (String str : DeviceIdUtil.f2552e) {
                zP |= DeviceIdUtil.p(this.b, DeviceIdUtil.f(new File(externalStorageDirectory, str)));
            }
            if (zP) {
                Intent intent = new Intent("cn.mucang.action.core.uim");
                intent.addFlags(32);
                intent.setDataAndNormalize(Uri.parse("mucang://update-device-id.cn").buildUpon().appendQueryParameter("deviceId", this.f2556a).appendQueryParameter("permission", String.valueOf(DeviceIdUtil.l())).appendQueryParameter("from", MucangConfig.getContext().getPackageName()).build());
                MucangConfig.getContext().sendBroadcast(intent);
            }
        }
    }

    static {
        String str = "system/" + Digests.md5("mucangData");
        f2550a = str;
        String str2 = "storage/" + Digests.md5("mucangData");
        b = str2;
        String str3 = "tmp/" + Digests.md5("mucangData");
        c = str3;
        String str4 = "backups/" + Digests.md5("mucangData");
        f2551d = str4;
        f2552e = new String[]{str2, str, str3, str4};
        f2553f = Executors.newSingleThreadExecutor(new ThreadPool.a("deviceId"));
    }

    private static File e(File file) {
        try {
            file.mkdirs();
            return file;
        } catch (Exception e2) {
            t.c("DeviceIdManager", e2);
            return file;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static File f(File file) {
        if (!z.a("android.permission.WRITE_EXTERNAL_STORAGE")) {
            return null;
        }
        try {
            String strMd5 = Digests.md5(MucangConfig.r() + i.a());
            e(file);
            File file2 = new File(file, strMd5);
            file2.getParentFile().mkdirs();
            file2.createNewFile();
            new File(file2.getParentFile(), ".nomedia").createNewFile();
            return file2;
        } catch (Exception e2) {
            t.c("DeviceIdManager", e2);
            return null;
        }
    }

    private static DeviceIdData g() {
        try {
            ArrayList arrayList = new ArrayList();
            if (f2554g != null) {
                arrayList.add(f2554g);
            }
            DeviceIdData deviceIdDataM = m();
            if (deviceIdDataM == null) {
                deviceIdDataM = new DeviceIdData();
                deviceIdDataM.time = System.currentTimeMillis();
                deviceIdDataM.deviceId = i.a();
            }
            arrayList.add(deviceIdDataM);
            if (z.b("android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE")) {
                File externalStorageDirectory = Environment.getExternalStorageDirectory();
                for (String str : f2552e) {
                    File file = new File(externalStorageDirectory, str);
                    e(file);
                    List<DeviceIdData> listO = o(file);
                    if (g.d(listO)) {
                        arrayList.addAll(listO);
                    }
                }
            }
            DeviceIdData deviceIdDataH = h(arrayList);
            return deviceIdDataH != null ? deviceIdDataH : deviceIdDataM;
        } catch (Exception e2) {
            t.c("DeviceIdManager", e2);
            return null;
        }
    }

    private static DeviceIdData h(List<DeviceIdData> list) {
        DeviceIdData deviceIdData = null;
        if (g.b(list)) {
            return null;
        }
        for (DeviceIdData deviceIdData2 : list) {
            if (deviceIdData != null) {
                if (deviceIdData2 != null) {
                    long j = deviceIdData2.time;
                    if (j <= 0 || j >= deviceIdData.time) {
                    }
                }
            }
            deviceIdData = deviceIdData2;
        }
        return deviceIdData;
    }

    private static String i() {
        boolean zL = l();
        if (f2554g == null || (zL && !f2555h)) {
            synchronized (DeviceIdUtil.class) {
                if (f2554g == null || (zL && !f2555h)) {
                    s(g());
                    f2555h = zL || f2555h;
                }
            }
        }
        return f2554g.deviceId;
    }

    private static String j() {
        return DeviceIdProvider.a();
    }

    public static String k() {
        if (PrivacyAgreementSetting.d()) {
            return a0.e() ? i() : j();
        }
        PrivacyAgreementSetting.c("deviceId");
        return "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean l() {
        return z.a("android.permission.READ_EXTERNAL_STORAGE");
    }

    private static DeviceIdData m() {
        return DeviceIdData.parse(j0.f("mcUniqueId.db", "mcUniqueId", null));
    }

    private static DeviceIdData n(File file) {
        if (l() && file != null && file.exists() && file.length() < 2048) {
            try {
                return DeviceIdData.parse(new String(cn.mucang.android.core.encode.a.b(j.n(file)), "UTF-8"));
            } catch (Exception e2) {
                t.c("DeviceIdManager", e2);
            }
        }
        return null;
    }

    private static List<DeviceIdData> o(File file) {
        File[] fileArrListFiles;
        if (!l() || file == null || (fileArrListFiles = file.listFiles()) == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (File file2 : fileArrListFiles) {
            arrayList.add(n(file2));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean p(DeviceIdData deviceIdData, File file) {
        if (file != null && z.a("android.permission.WRITE_EXTERNAL_STORAGE")) {
            try {
                synchronized (DeviceIdUtil.class) {
                    DeviceIdData deviceIdDataN = n(file);
                    if (deviceIdDataN != null && deviceIdDataN.time <= deviceIdData.time) {
                    }
                    j.s(cn.mucang.android.core.encode.a.d(deviceIdData.toString().getBytes("UTF-8")), file);
                    return true;
                }
            } catch (Exception e2) {
                t.c("DeviceIdManager", e2);
            }
        }
        return false;
    }

    static void q(String str, boolean z) {
        try {
            DeviceIdData deviceIdData = DeviceIdData.parse(str);
            synchronized (DeviceIdUtil.class) {
                if (s(deviceIdData)) {
                    f2555h = f2555h || z;
                }
            }
        } catch (Exception e2) {
            t.c("DeviceIdManager", e2);
        }
    }

    private static void r(DeviceIdData deviceIdData) {
        if (a0.e()) {
            f2553f.submit(new a(deviceIdData.toString(), deviceIdData));
        }
    }

    private static synchronized boolean s(DeviceIdData deviceIdData) {
        if (deviceIdData != null) {
            if (f2554g == null || deviceIdData.time < f2554g.time) {
                f2554g = deviceIdData;
                r(deviceIdData);
                return true;
            }
        }
        return false;
    }
}
