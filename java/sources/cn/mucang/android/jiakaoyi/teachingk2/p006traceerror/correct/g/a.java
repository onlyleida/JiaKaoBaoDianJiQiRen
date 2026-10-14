package cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.g;

import cn.mucang.android.jiakaoyi.signal.pos.c;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.NormalVariable;

/* JADX INFO: loaded from: classes4.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final NormalVariable f8077a;
    public final String b;
    public final c c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f8078d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f8079e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final double f8080f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f8081g;

    public a(NormalVariable normalVariable, String str, c cVar, boolean z, boolean z2) {
        this.f8077a = normalVariable;
        this.b = str;
        this.c = cVar;
        this.f8078d = z;
        this.f8081g = z2;
        this.f8080f = Math.toDegrees(normalVariable.posOnLine.angleTo(normalVariable.forwardPoint));
    }

    public boolean a() {
        return this.f8079e;
    }

    public void b(boolean z) {
        this.f8079e = z;
    }
}
