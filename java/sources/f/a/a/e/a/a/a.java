package f.a.a.e.a.a;

import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.u;
import cn.mucang.android.core.config.n;
import cn.mucang.android.framework.core.R;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a extends n {
    protected f.a.a.e.a.c.b fragment;

    protected int getLayoutId() {
        return R.layout.ui_framework__activity_base;
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(getLayoutId());
    }

    @Override // androidx.appcompat.app.d, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        f.a.a.e.a.c.b bVar = this.fragment;
        if (bVar == null || !bVar.u(i, keyEvent)) {
            return super.onKeyDown(i, keyEvent);
        }
        return true;
    }

    @Override // androidx.fragment.app.d, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        f.a.a.e.a.c.b bVar = this.fragment;
        if (bVar != null) {
            bVar.v(intent);
        }
    }

    protected void replaceFragment(Fragment fragment) {
        replaceFragment(fragment, null, false);
    }

    protected void replaceFragment(Fragment fragment, Bundle bundle, boolean z) {
        if (isFinishing()) {
            return;
        }
        u uVarM = getSupportFragmentManager().m();
        if (bundle != null) {
            fragment.setArguments(bundle);
        }
        uVarM.r(R.id.ui_framework__fragment_container, fragment);
        if (z) {
            uVarM.g(null);
        }
        uVarM.j();
    }
}
