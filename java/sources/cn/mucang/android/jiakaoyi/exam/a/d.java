package cn.mucang.android.jiakaoyi.exam.a;

import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Light f3215a;
    public final long b;
    public boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f3216d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f3217e;

    public d(Light light, long j) {
        this.f3215a = light;
        this.b = j;
    }

    public boolean a(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        if (eVar.d().j(this.f3215a)) {
            this.c = true;
            this.f3216d = 0L;
            this.f3217e = 0L;
        } else if (this.c) {
            if (this.f3216d == 0) {
                this.f3216d = eVar.d().L;
            }
            if (this.f3217e == 0 && eVar.d().L - this.f3216d > this.b) {
                this.f3217e = eVar.d().L;
            }
            t.a("dsh", "lightOnTime " + this.f3216d + " ; deductTime " + this.f3217e + "; diffTime " + (eVar.d().L - this.f3217e));
            if (this.f3217e > 0 && eVar.d().L - this.f3217e > 500) {
                return false;
            }
        }
        return true;
    }

    public void b() {
        this.c = false;
        this.f3216d = 0L;
        this.f3217e = 0L;
    }
}
