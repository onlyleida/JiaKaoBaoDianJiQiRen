package f.a.a.p011d;

import android.app.Activity;
import android.os.Bundle;
import cn.mucang.android.core.utils.i;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b extends Activity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected long f14526a;
    protected String b;

    public abstract void a(int i, Throwable th);

    protected abstract void b(Bundle bundle);

    protected void c() {
        if (isFinishing()) {
            i.c().e(this.f14526a);
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        overridePendingTransition(0, 0);
        if (bundle == null) {
            try {
                if (getIntent() != null) {
                    bundle = getIntent().getExtras();
                }
            } catch (Exception unused) {
                a(-2, new IllegalArgumentException("fail to initSelf"));
                finish();
                return;
            }
        }
        if (bundle == null) {
            a(-2, new NullPointerException("fail to initSelf"));
            finish();
        } else {
            this.f14526a = bundle.getLong("BaseAssistActivity.listenerId", -1L);
            this.b = bundle.getString("BaseAssistActivity.appId", "");
            b(bundle);
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        c();
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putLong("BaseAssistActivity.listenerId", this.f14526a);
        bundle.putString("BaseAssistActivity.appId", this.b);
    }
}
