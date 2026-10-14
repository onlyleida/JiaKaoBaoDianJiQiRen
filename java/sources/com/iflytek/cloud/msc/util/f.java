package com.iflytek.cloud.msc.util;

import android.content.Context;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.iflytek.cloud.util.FileDownloadListener;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static f f12358a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f12360e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private b f12361f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f12362g = "download_uri";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f12363h = "file_path";
    private final String i = "file_md5";
    protected Object j = new Object();
    private com.iflytek.cloud.msc.util.l.a k = new a();
    private HashMap<Long, com.iflytek.cloud.b.a> b = new HashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private HashMap<Long, String> f12359d = new HashMap<>();
    private HashMap<Long, FileDownloadListener> c = new HashMap<>();

    class a implements com.iflytek.cloud.msc.util.l.a {
        a() {
        }
    }

    private f(Context context) {
        this.f12361f = null;
        this.f12360e = context;
        this.f12361f = b.a(this.f12360e);
    }

    public static f a(Context context) {
        if (f12358a == null) {
            f12358a = new f(context);
        }
        return f12358a;
    }

    public int a(String str, String str2, String str3, FileDownloadListener fileDownloadListener) {
        long jA = a(str, str2, str3);
        if (this.b.size() > 0 && jA != 0) {
            this.c.put(Long.valueOf(jA), fileDownloadListener);
            return -1;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (fileDownloadListener != null) {
            this.c.put(Long.valueOf(jCurrentTimeMillis), fileDownloadListener);
        }
        com.iflytek.cloud.b.a aVar = new com.iflytek.cloud.b.a();
        aVar.b("download_uri", str);
        aVar.b("file_path", str2);
        aVar.b("file_md5", str3);
        this.b.put(Long.valueOf(jCurrentTimeMillis), aVar);
        DebugLog.LogD("tempFile:" + this.f12361f.a(str, (String) null));
        return 0;
    }

    private long a(String str, String str2, String str3) {
        synchronized (this.j) {
            for (Map.Entry<Long, com.iflytek.cloud.b.a> entry : this.b.entrySet()) {
                long jLongValue = entry.getKey().longValue();
                com.iflytek.cloud.b.a value = entry.getValue();
                if (value.a("download_uri").equals(str) && value.a("file_path").equals(str2) && value.a("file_md5").equals(str3)) {
                    return jLongValue;
                }
            }
            return 0L;
        }
    }
}
