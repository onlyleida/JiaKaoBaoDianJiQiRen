package cn.mucang.android.ui.framework.mvp;

import android.view.View;
import cn.mucang.android.ui.framework.mvp.BaseModel;
import cn.mucang.android.ui.framework.mvp.b;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public abstract class a<V extends b, M extends BaseModel> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected V f8977a;

    /* JADX INFO: renamed from: cn.mucang.android.ui.framework.mvp.a$a, reason: collision with other inner class name */
    class ViewOnAttachStateChangeListenerC0152a implements View.OnAttachStateChangeListener {
        ViewOnAttachStateChangeListenerC0152a() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            a.this.d(view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            a.this.e(view);
        }
    }

    public a(V v) {
        this.f8977a = v;
        if (b()) {
            this.f8977a.getView().addOnAttachStateChangeListener(new ViewOnAttachStateChangeListenerC0152a());
        }
    }

    public abstract void a(M m);

    protected boolean b() {
        return false;
    }

    protected void d(View view) {
    }

    protected void e(View view) {
    }

    public void g() {
    }
}
