package androidx.core.d;

import android.util.Base64;
import androidx.core.util.h;
import java.util.List;
import org.apache.commons.math3.geometry.VectorFormat;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f1067a;
    private final String b;
    private final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<List<byte[]>> f1068d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f1069e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f1070f;

    public d(String str, String str2, String str3, List<List<byte[]>> list) {
        h.f(str);
        this.f1067a = str;
        h.f(str2);
        this.b = str2;
        h.f(str3);
        this.c = str3;
        h.f(list);
        this.f1068d = list;
        this.f1069e = 0;
        this.f1070f = a(str, str2, str3);
    }

    private String a(String str, String str2, String str3) {
        return str + "-" + str2 + "-" + str3;
    }

    public List<List<byte[]>> b() {
        return this.f1068d;
    }

    public int c() {
        return this.f1069e;
    }

    String d() {
        return this.f1070f;
    }

    public String e() {
        return this.f1067a;
    }

    public String f() {
        return this.b;
    }

    public String g() {
        return this.c;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FontRequest {mProviderAuthority: " + this.f1067a + ", mProviderPackage: " + this.b + ", mQuery: " + this.c + ", mCertificates:");
        for (int i = 0; i < this.f1068d.size(); i++) {
            sb.append(" [");
            List<byte[]> list = this.f1068d.get(i);
            for (int i2 = 0; i2 < list.size(); i2++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString(list.get(i2), 0));
                sb.append("\"");
            }
            sb.append(" ]");
        }
        sb.append(VectorFormat.DEFAULT_SUFFIX);
        sb.append("mCertificatesArray: " + this.f1069e);
        return sb.toString();
    }
}
