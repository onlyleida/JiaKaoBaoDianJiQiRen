package cn.mucang.android.jiakaoyi.teachingk2.safe.ui.signal;

import android.graphics.Color;
import android.graphics.RectF;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes4.dex */
public class b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int[] f7881e = {Color.parseColor("#FD8588"), Color.parseColor("#FCDF8C"), Color.parseColor("#58EED1")};
    private int b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f7882a = true;
    public int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public RectF f7883d = new RectF();

    private void c() {
        int i = this.b;
        if (i >= 0 && i <= 50) {
            this.c = f7881e[0];
            return;
        }
        if (i > 50 && i <= 100) {
            this.c = f7881e[1];
        } else if (i <= 100 || i > 150) {
            this.c = 0;
        } else {
            this.c = f7881e[2];
        }
    }

    public float a() {
        return Math.max(BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, ((((this.b * 1.0f) / 150.0f) * 3.0f) / 4.0f) + 0.25f));
    }

    public void b(int i) {
        if (i < 0 || i > 500) {
            this.f7882a = false;
            return;
        }
        this.f7882a = true;
        this.b = i;
        c();
    }
}
