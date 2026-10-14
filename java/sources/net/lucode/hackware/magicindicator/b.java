package net.lucode.hackware.magicindicator;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes6.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SparseBooleanArray f16141a = new SparseBooleanArray();
    private SparseArray<Float> b = new SparseArray<>();
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f16142d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f16143e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f16144f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f16145g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f16146h;
    private a i;

    public interface a {
        void onDeselected(int i, int i2);

        void onEnter(int i, int i2, float f2, boolean z);

        void onLeave(int i, int i2, float f2, boolean z);

        void onSelected(int i, int i2);
    }

    private void a(int i) {
        a aVar = this.i;
        if (aVar != null) {
            aVar.onDeselected(i, this.c);
        }
        this.f16141a.put(i, true);
    }

    private void b(int i, float f2, boolean z, boolean z2) {
        if (this.f16146h || i == this.f16142d || this.f16145g == 1 || z2) {
            a aVar = this.i;
            if (aVar != null) {
                aVar.onEnter(i, this.c, f2, z);
            }
            this.b.put(i, Float.valueOf(1.0f - f2));
        }
    }

    private void c(int i, float f2, boolean z, boolean z2) {
        if (!this.f16146h && i != this.f16143e && this.f16145g != 1) {
            int i2 = this.f16142d;
            if (((i != i2 - 1 && i != i2 + 1) || this.b.get(i, Float.valueOf(BitmapDescriptorFactory.HUE_RED)).floatValue() == 1.0f) && !z2) {
                return;
            }
        }
        a aVar = this.i;
        if (aVar != null) {
            aVar.onLeave(i, this.c, f2, z);
        }
        this.b.put(i, Float.valueOf(f2));
    }

    private void d(int i) {
        a aVar = this.i;
        if (aVar != null) {
            aVar.onSelected(i, this.c);
        }
        this.f16141a.put(i, false);
    }

    public int e() {
        return this.f16142d;
    }

    public int f() {
        return this.f16145g;
    }

    public int g() {
        return this.c;
    }

    public void h(int i) {
        this.f16145g = i;
    }

    public void i(int i, float f2, int i2) {
        boolean z;
        float f3 = i + f2;
        float f4 = this.f16144f;
        boolean z2 = f4 <= f3;
        if (this.f16145g == 0) {
            for (int i3 = 0; i3 < this.c; i3++) {
                if (i3 != this.f16142d) {
                    if (!this.f16141a.get(i3)) {
                        a(i3);
                    }
                    if (this.b.get(i3, Float.valueOf(BitmapDescriptorFactory.HUE_RED)).floatValue() != 1.0f) {
                        c(i3, 1.0f, false, true);
                    }
                }
            }
            b(this.f16142d, 1.0f, false, true);
            d(this.f16142d);
        } else {
            if (f3 == f4) {
                return;
            }
            int i4 = i + 1;
            if (f2 == BitmapDescriptorFactory.HUE_RED && z2) {
                i4 = i - 1;
                z = false;
            } else {
                z = true;
            }
            for (int i5 = 0; i5 < this.c; i5++) {
                if (i5 != i && i5 != i4 && this.b.get(i5, Float.valueOf(BitmapDescriptorFactory.HUE_RED)).floatValue() != 1.0f) {
                    c(i5, 1.0f, z2, true);
                }
            }
            if (!z) {
                float f5 = 1.0f - f2;
                c(i4, f5, true, false);
                b(i, f5, true, false);
            } else if (z2) {
                c(i, f2, true, false);
                b(i4, f2, true, false);
            } else {
                float f6 = 1.0f - f2;
                c(i4, f6, false, false);
                b(i, f6, false, false);
            }
        }
        this.f16144f = f3;
    }

    public void j(int i) {
        this.f16143e = this.f16142d;
        this.f16142d = i;
        d(i);
        for (int i2 = 0; i2 < this.c; i2++) {
            if (i2 != this.f16142d && !this.f16141a.get(i2)) {
                a(i2);
            }
        }
    }

    public void k(a aVar) {
        this.i = aVar;
    }

    public void l(boolean z) {
        this.f16146h = z;
    }

    public void m(int i) {
        this.c = i;
        this.f16141a.clear();
        this.b.clear();
    }
}
