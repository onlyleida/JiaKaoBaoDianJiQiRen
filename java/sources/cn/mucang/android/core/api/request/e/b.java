package cn.mucang.android.core.api.request.e;

import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.h;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.framework.core.R;
import com.google.common.net.HttpHeaders;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f2409a;
    private List<MucangNameValuePair> b;
    private byte[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f2410d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f2411e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private File f2412f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List<a> f2413g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f2414h;

    public b(byte[] bArr, List<a> list) {
        this(bArr, list, false);
    }

    public static b b(byte[] bArr) throws Exception {
        if (bArr == null || bArr.length == 0) {
            throw new InternalException(n0.c(R.string.core__http_post_body_error_tips));
        }
        return new b(bArr, cn.mucang.android.core.api.request.f.a.b("application/octet-stream"));
    }

    public static b c(byte[] bArr, String str) throws Exception {
        if (bArr == null || bArr.length == 0) {
            throw new InternalException(n0.c(R.string.core__http_post_body_error_tips));
        }
        if (str == null) {
            str = "application/octet-stream";
        }
        return new b(bArr, cn.mucang.android.core.api.request.f.a.b(str));
    }

    private static b d(String str, byte[] bArr) throws Exception {
        if (bArr == null || bArr.length == 0) {
            throw new InternalException(n0.c(R.string.core__http_post_body_error_tips));
        }
        if (str == null || str.isEmpty()) {
            throw new InternalException(n0.c(R.string.core__http_post_header_error_tips));
        }
        List<a> listB = cn.mucang.android.core.api.request.f.a.b(str);
        listB.add(new a(HttpHeaders.CONTENT_ENCODING, "tnpn2", false));
        return new b(bArr, listB, true);
    }

    public static b e(byte[] bArr) throws Exception {
        return d("application/octet-stream", bArr);
    }

    public static b f(byte[] bArr) throws Exception {
        if (bArr == null || bArr.length == 0) {
            throw new InternalException(n0.c(R.string.core__http_post_body_error_tips));
        }
        return new b(h.a(bArr), cn.mucang.android.core.api.request.f.a.b("application/x-gzip"));
    }

    public static b g(byte[] bArr, String str, String str2) throws InternalException {
        if (bArr == null || bArr.length == 0 || n0.e(str) || n0.e(str2)) {
            throw new InternalException(n0.c(R.string.core__http_post_file_error_tips));
        }
        return new b(bArr, str, str2, cn.mucang.android.core.api.request.f.a.b("multipart/form-data"));
    }

    public static b h(File file) throws InternalException {
        if (file == null || !file.exists()) {
            throw new InternalException(n0.c(R.string.core__http_post_file_error_tips));
        }
        return new b(file, cn.mucang.android.core.api.request.f.a.b("application/octet-stream"));
    }

    public static b i(List<MucangNameValuePair> list) throws Exception {
        return j(list, false);
    }

    private static b j(List<MucangNameValuePair> list, boolean z) throws Exception {
        if (g.b(list)) {
            throw new InternalException(n0.c(R.string.core__http_post_body_error_tips));
        }
        if (!z) {
            return new b(list, cn.mucang.android.core.api.request.f.a.b("application/x-www-form-urlencoded"));
        }
        b bVarD = d("application/x-www-form-urlencoded", cn.mucang.android.core.api.request.f.a.e(list));
        bVarD.b = list;
        return bVarD;
    }

    public static b k(List<MucangNameValuePair> list) throws Exception {
        return j(list, true);
    }

    public static b l(String str) throws Exception {
        if (n0.e(str)) {
            throw new InternalException(n0.c(R.string.core__http_post_body_error_tips));
        }
        return new b(str.getBytes("UTF-8"), cn.mucang.android.core.api.request.f.a.b("application/x-www-form-urlencoded"));
    }

    public void a(List<MucangNameValuePair> list) {
        if (this.f2409a != 1 || g.b(list)) {
            return;
        }
        if (this.b == null) {
            this.b = new ArrayList();
        }
        this.b.addAll(list);
        if (this.f2414h) {
            this.c = cn.mucang.android.core.api.request.f.a.c(cn.mucang.android.core.api.request.f.a.e(this.b));
        } else {
            this.c = cn.mucang.android.core.api.request.f.a.e(this.b);
        }
    }

    public byte[] m() {
        return this.c;
    }

    public File n() {
        return this.f2412f;
    }

    public String o() {
        return this.f2411e;
    }

    public List<a> p() {
        return this.f2413g;
    }

    public String q() {
        return this.f2410d;
    }

    public boolean r() {
        return "multipart/form-data".equalsIgnoreCase(cn.mucang.android.core.api.request.f.a.d(this.f2413g));
    }

    public boolean s() {
        return this.f2409a == 2;
    }

    public b(byte[] bArr, List<a> list, boolean z) {
        this.f2414h = false;
        if (z) {
            this.c = cn.mucang.android.core.api.request.f.a.c(bArr);
        } else {
            this.c = bArr;
        }
        this.f2414h = z;
        this.f2413g = list;
        this.f2412f = null;
        this.f2409a = 1;
    }

    public b(byte[] bArr, String str, String str2, List<a> list) {
        this(bArr, list, false);
        this.f2410d = str;
        this.f2411e = str2;
    }

    public b(File file, List<a> list) {
        this.f2414h = false;
        this.c = null;
        this.f2412f = file;
        this.f2413g = list;
        this.f2409a = 2;
    }

    public b(List<MucangNameValuePair> list, List<a> list2) {
        this(list, list2, false);
    }

    public b(List<MucangNameValuePair> list, List<a> list2, boolean z) {
        this(cn.mucang.android.core.api.request.f.a.e(list), list2, z);
        this.b = list;
        this.f2413g = list2;
        this.f2412f = null;
        this.f2409a = 1;
    }
}
