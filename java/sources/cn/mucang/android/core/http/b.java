package cn.mucang.android.core.http;

import java.io.InputStream;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f2535a;
    private InputStream b;
    private Map<String, List<String>> c;

    public b(long j, InputStream inputStream, int i, Map<String, List<String>> map) {
        this.f2535a = j;
        this.b = inputStream;
        this.c = map;
    }

    public long a() {
        return this.f2535a;
    }

    public Map<String, List<String>> b() {
        return this.c;
    }

    public InputStream c() {
        return this.b;
    }
}
