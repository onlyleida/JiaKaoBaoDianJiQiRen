package g.a.a.a;

import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import com.amap.api.maps.offlinemap.OfflineMapActivity;

/* JADX INFO: loaded from: classes5.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected OfflineMapActivity f14549a = null;

    public int a(float f2) {
        OfflineMapActivity offlineMapActivity = this.f14549a;
        return offlineMapActivity != null ? (int) ((f2 * (offlineMapActivity.getResources().getDisplayMetrics().densityDpi / 160.0f)) + 0.5f) : (int) f2;
    }

    public abstract void b();

    public void c(Bundle bundle) {
        this.f14549a.showScr();
    }

    public abstract void d(View view);

    public void e(OfflineMapActivity offlineMapActivity) {
        this.f14549a = offlineMapActivity;
    }

    public boolean f() {
        return true;
    }

    public abstract RelativeLayout g();

    public abstract void h();

    public void i() {
    }

    public void j() {
    }

    public void k() {
    }

    public void l() {
    }
}
