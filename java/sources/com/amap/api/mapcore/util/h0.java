package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Bundle;
import com.amap.api.maps.AMap;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public class h0 extends n8 implements w0.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private w0 f10833a;
    private y0 b;
    private b1 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f10834d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Bundle f10835f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f10836g;

    public h0(b1 b1Var, Context context) {
        this.f10835f = new Bundle();
        this.f10836g = false;
        this.c = b1Var;
        this.f10834d = context;
    }

    private String d() {
        return r3.p0(this.f10834d);
    }

    private void e() throws IOException {
        w0 w0Var = new w0(new x0(this.c.getUrl(), d(), this.c.n(), 1, this.c.i()), this.c.getUrl(), this.f10834d, this.c);
        this.f10833a = w0Var;
        w0Var.c(this);
        b1 b1Var = this.c;
        this.b = new y0(b1Var, b1Var);
        if (this.f10836g) {
            return;
        }
        this.f10833a.a();
    }

    public void a() {
        this.f10836g = true;
        w0 w0Var = this.f10833a;
        if (w0Var != null) {
            w0Var.d();
        } else {
            cancelTask();
        }
        y0 y0Var = this.b;
        if (y0Var != null) {
            y0Var.b();
        }
    }

    public void b() {
        Bundle bundle = this.f10835f;
        if (bundle != null) {
            bundle.clear();
            this.f10835f = null;
        }
    }

    @Override // com.amap.api.mapcore.util.w0.a
    public void c() {
        y0 y0Var = this.b;
        if (y0Var != null) {
            y0Var.h();
        }
    }

    @Override // com.amap.api.mapcore.util.n8
    public void runTask() {
        if (this.c.l()) {
            this.c.e(ca.a.file_io_exception);
            return;
        }
        try {
            e();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public h0(b1 b1Var, Context context, AMap aMap) {
        this(b1Var, context);
    }
}
