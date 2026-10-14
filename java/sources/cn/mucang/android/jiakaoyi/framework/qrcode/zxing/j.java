package cn.mucang.android.jiakaoyi.framework.qrcode.zxing;

/* JADX INFO: loaded from: classes2.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Mode f3505a;
    private ErrorCorrectionLevel b;
    private m c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3506d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private d f3507e;

    public static boolean b(int i) {
        return i >= 0 && i < 8;
    }

    public d a() {
        return this.f3507e;
    }

    public void c(ErrorCorrectionLevel errorCorrectionLevel) {
        this.b = errorCorrectionLevel;
    }

    public void d(int i) {
        this.f3506d = i;
    }

    public void e(d dVar) {
        this.f3507e = dVar;
    }

    public void f(Mode mode) {
        this.f3505a = mode;
    }

    public void g(m mVar) {
        this.c = mVar;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(200);
        sb.append("<<\n");
        sb.append(" mode: ");
        sb.append(this.f3505a);
        sb.append("\n ecLevel: ");
        sb.append(this.b);
        sb.append("\n version: ");
        sb.append(this.c);
        sb.append("\n maskPattern: ");
        sb.append(this.f3506d);
        if (this.f3507e == null) {
            sb.append("\n matrix: null\n");
        } else {
            sb.append("\n matrix:\n");
            sb.append(this.f3507e);
        }
        sb.append(">>\n");
        return sb.toString();
    }
}
