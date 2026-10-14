package f.a.a.e.a.c;

import android.os.Bundle;
import android.view.ViewStub;
import cn.mucang.android.framework.core.R;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a extends b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ViewStub f14531d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f14532e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f14533f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f14534g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Bundle f14535h = null;

    /* JADX INFO: renamed from: f.a.a.e.a.c.a$a, reason: collision with other inner class name */
    class RunnableC0301a implements Runnable {
        RunnableC0301a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.isAdded()) {
                if (!a.this.f14533f && a.this.f14532e) {
                    a.this.f14533f = true;
                    a aVar = a.this;
                    aVar.G(aVar.f14535h);
                }
                if (a.this.f14534g) {
                    return;
                }
                a.this.E();
                if (a.this.f14532e) {
                    a.this.f14534g = true;
                    a.this.F();
                }
            }
        }
    }

    private void C() {
        if (this.f14533f) {
            return;
        }
        this.f14533f = true;
        G(this.f14535h);
    }

    protected boolean D() {
        return this.c && isAdded();
    }

    protected void E() {
    }

    protected abstract void F();

    protected void G(Bundle bundle) {
        ViewStub viewStub = (ViewStub) this.b.findViewById(R.id.view_stub);
        this.f14531d = viewStub;
        if (viewStub != null) {
            viewStub.inflate();
        }
    }

    protected void H() {
        if (D()) {
            E();
            if (this.f14532e) {
                this.f14534g = true;
                F();
            }
        }
    }

    public final void I(boolean z) {
        this.f14532e = z;
        if (z && !this.f14534g && this.c) {
            C();
            H();
        }
    }

    @Override // f.a.a.e.a.c.b, cn.mucang.android.core.config.q, androidx.fragment.app.Fragment
    public final void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.f14535h = bundle;
        if (bundle != null) {
            this.f14532e = bundle.getBoolean("allow-load");
        }
        if (D()) {
            this.b.post(new RunnableC0301a());
        }
    }

    @Override // cn.mucang.android.core.config.q, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("allow-load", this.f14532e);
    }
}
