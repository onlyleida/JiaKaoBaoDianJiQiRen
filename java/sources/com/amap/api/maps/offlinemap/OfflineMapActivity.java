package com.amap.api.maps.offlinemap;

import android.content.res.Configuration;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import com.amap.api.mapcore.util.q4;
import com.amap.api.mapcore.util.r4;
import com.amap.api.mapcore.util.t4;
import g.a.a.a.a;
import g.a.a.a.b;

/* JADX INFO: loaded from: classes5.dex */
public class OfflineMapActivity extends a implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f11547a;
    private b b;
    private q4 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private q4[] f11548d = new q4[32];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f11549e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private r4 f11550f;

    private void a(q4 q4Var) {
        try {
            b bVar = this.b;
            if (bVar != null) {
                bVar.h();
                this.b = null;
            }
            b bVarC = c(q4Var);
            this.b = bVarC;
            if (bVarC != null) {
                this.c = q4Var;
                bVarC.e(this);
                this.b.c(this.c.b);
                this.b.b();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void b(q4 q4Var) {
        try {
            f11547a++;
            a(q4Var);
            int i = (this.f11549e + 1) % 32;
            this.f11549e = i;
            this.f11548d[i] = q4Var;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private b c(q4 q4Var) {
        try {
            if (q4Var.f11099a != 1) {
                return null;
            }
            if (this.f11550f == null) {
                this.f11550f = new r4();
            }
            return this.f11550f;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public void closeScr() {
        try {
            if (a((Bundle) null)) {
                return;
            }
            b bVar = this.b;
            if (bVar != null) {
                bVar.h();
            }
            finish();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        try {
            b bVar = this.b;
            if (bVar != null) {
                bVar.d(view);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        try {
            super.onConfigurationChanged(configuration);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        try {
            super.onCreate(bundle);
            getWindow().setSoftInputMode(32);
            getWindow().setFormat(-3);
            requestWindowFeature(1);
            t4.f(getApplicationContext());
            this.f11549e = -1;
            f11547a = 0;
            b(new q4(1, null));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        try {
            super.onDestroy();
            b bVar = this.b;
            if (bVar != null) {
                bVar.h();
                this.b = null;
            }
            this.c = null;
            this.f11548d = null;
            r4 r4Var = this.f11550f;
            if (r4Var != null) {
                r4Var.h();
                this.f11550f = null;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            try {
                b bVar = this.b;
                if (bVar != null && !bVar.f()) {
                    return true;
                }
                if (a((Bundle) null)) {
                    return false;
                }
                if (keyEvent == null) {
                    if (f11547a == 1) {
                        finish();
                    }
                    return false;
                }
                this.f11549e = -1;
                f11547a = 0;
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity
    protected void onPause() {
        try {
            super.onPause();
            b bVar = this.b;
            if (bVar != null) {
                bVar.l();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // g.a.a.a.a, android.app.Activity
    protected void onResume() {
        try {
            super.onResume();
            b bVar = this.b;
            if (bVar != null) {
                bVar.j();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        try {
            super.onStart();
            b bVar = this.b;
            if (bVar != null) {
                bVar.i();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        try {
            super.onStop();
            b bVar = this.b;
            if (bVar != null) {
                bVar.k();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void showScr() {
        try {
            setContentView(this.b.g());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void closeScr(Bundle bundle) {
        try {
            if (a(bundle)) {
                return;
            }
            b bVar = this.b;
            if (bVar != null) {
                bVar.h();
            }
            finish();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private boolean a(Bundle bundle) {
        try {
            int i = f11547a;
            if ((i != 1 || this.b == null) && i > 1) {
                f11547a = i - 1;
                int i2 = ((this.f11549e - 1) + 32) % 32;
                this.f11549e = i2;
                q4 q4Var = this.f11548d[i2];
                q4Var.b = bundle;
                a(q4Var);
                return true;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return false;
    }
}
