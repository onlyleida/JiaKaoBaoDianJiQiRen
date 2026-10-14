package cn.mucang.android.core.webview.tracker.http.model;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f2899a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f2900d;

    public a(String str, String str2, String str3, String str4) {
        this.f2899a = str;
        this.b = str2;
        this.c = str3;
        this.f2900d = str4;
    }

    public String a() {
        return this.f2899a;
    }

    public String b() {
        return this.c;
    }

    public String c() {
        return this.f2900d;
    }

    public String d() {
        return this.b;
    }

    public String toString() {
        return "url->" + this.b + "\nfromUrl->" + this.f2899a + "\ni->" + this.c + "\nr->" + this.f2900d;
    }
}
