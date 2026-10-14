package f.a.a.e.a.c;

import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import cn.mucang.android.core.config.q;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b extends q {
    protected View b;
    protected boolean c;

    public String getStatName() {
        return getClass().getName();
    }

    @Override // cn.mucang.android.core.config.q, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        View view = this.b;
        if (view != null) {
            t(view, bundle);
            this.c = true;
        }
    }

    @Override // cn.mucang.android.core.config.q, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        View viewInflate = layoutInflater.inflate(s(), viewGroup, false);
        this.b = viewInflate;
        return viewInflate;
    }

    protected <T extends View> T r(int i) {
        return (T) this.b.findViewById(i);
    }

    protected abstract int s();

    protected abstract void t(View view, Bundle bundle);

    public boolean u(int i, KeyEvent keyEvent) {
        return false;
    }

    public void v(Intent intent) {
    }
}
