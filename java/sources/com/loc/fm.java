package com.loc;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.amap.api.location.AMapLocation;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class fm {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static fm f12911f;
    private static long i;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private File f12913d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f12914e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Context f12915g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f12916h;
    private LinkedHashMap<String, Long> c = new LinkedHashMap<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f12912a = "";
    String b = null;

    private fm(Context context) {
        this.f12914e = null;
        Context applicationContext = context.getApplicationContext();
        this.f12915g = applicationContext;
        String path = applicationContext.getFilesDir().getPath();
        if (this.f12914e == null) {
            this.f12914e = fp.m(this.f12915g);
        }
        try {
            this.f12913d = new File(path, "reportRecorder");
        } catch (Throwable th) {
            ea.a(th);
        }
        c();
    }

    public static synchronized fm a(Context context) {
        if (f12911f == null) {
            f12911f = new fm(context);
        }
        return f12911f;
    }

    private boolean b(Context context) {
        if (this.b == null) {
            this.b = fo.a(context, "pref", "lastavedate", "0");
        }
        if (this.b.equals(this.f12912a)) {
            return false;
        }
        SharedPreferences.Editor editorA = fo.a(context, "pref");
        fo.a(editorA, "lastavedate", this.f12912a);
        fo.a(editorA);
        this.b = this.f12912a;
        return true;
    }

    private synchronized void c() {
        LinkedHashMap<String, Long> linkedHashMap = this.c;
        if (linkedHashMap == null || linkedHashMap.size() <= 0) {
            try {
                this.f12912a = new SimpleDateFormat("yyyyMMdd").format(new Date(System.currentTimeMillis()));
                Iterator<String> it = fp.a(this.f12913d).iterator();
                while (it.hasNext()) {
                    try {
                        try {
                            String[] strArrSplit = new String(ex.b(o.b(it.next()), this.f12914e), "UTF-8").split(",");
                            if (strArrSplit != null && strArrSplit.length > 1) {
                                this.c.put(strArrSplit[0], Long.valueOf(Long.parseLong(strArrSplit[1])));
                            }
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                    } catch (UnsupportedEncodingException e2) {
                        e2.printStackTrace();
                    }
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
    }

    private void d() {
        try {
            StringBuilder sb = new StringBuilder();
            for (Map.Entry<String, Long> entry : this.c.entrySet()) {
                try {
                    sb.append(o.b(ex.a((entry.getKey() + "," + entry.getValue()).getBytes("UTF-8"), this.f12914e)) + "\n");
                } catch (UnsupportedEncodingException e2) {
                    e2.printStackTrace();
                }
            }
            String string = sb.toString();
            if (TextUtils.isEmpty(string)) {
                return;
            }
            fp.a(this.f12913d, string);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final synchronized void a() {
        if (this.f12916h) {
            d();
            this.f12916h = false;
        }
    }

    public final synchronized void a(AMapLocation aMapLocation) {
        try {
            if ((!this.c.containsKey(this.f12912a) && this.c.size() >= 8) || (this.c.containsKey(this.f12912a) && this.c.size() >= 9)) {
                ArrayList arrayList = new ArrayList();
                Iterator<Map.Entry<String, Long>> it = this.c.entrySet().iterator();
                while (it.hasNext()) {
                    try {
                        arrayList.add(it.next().getKey());
                        if (arrayList.size() == this.c.size() - 7) {
                            break;
                        }
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    this.c.remove((String) it2.next());
                }
            }
            if (aMapLocation.getErrorCode() != 0) {
                return;
            }
            if (aMapLocation.getLocationType() != 6 && aMapLocation.getLocationType() != 5) {
                if (this.c.containsKey(this.f12912a)) {
                    long jLongValue = this.c.get(this.f12912a).longValue() + 1;
                    i = jLongValue;
                    this.c.put(this.f12912a, Long.valueOf(jLongValue));
                } else {
                    this.c.put(this.f12912a, 1L);
                    i = 1L;
                }
                long j = i;
                if (j != 0 && j % 100 == 0) {
                    a();
                }
                this.f12916h = true;
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public final synchronized void b() {
        try {
            if (b(this.f12915g)) {
                for (Map.Entry<String, Long> entry : this.c.entrySet()) {
                    try {
                        if (!this.f12912a.equals(entry.getKey())) {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("param_long_first", entry.getKey());
                            jSONObject.put("param_long_second", entry.getValue());
                            fn.a(this.f12915g, "O023", jSONObject);
                        }
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }
}
