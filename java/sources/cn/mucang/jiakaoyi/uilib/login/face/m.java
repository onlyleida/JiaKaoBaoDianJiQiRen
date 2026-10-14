package cn.mucang.jiakaoyi.uilib.login.face;

import android.graphics.Bitmap;
import org.opencv.core.Mat;
import org.opencv.core.Rect;

/* JADX INFO: loaded from: classes5.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Mat f9386a;
    private Rect b;
    private float c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f9387d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f9388e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Bitmap f9389f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private LandmarkEntity f9390g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f9391h;

    public m(Mat mat, Rect rect, float f2, float f3, float f4, LandmarkEntity landmarkEntity) {
        this.f9386a = mat;
        this.b = rect;
        this.f9387d = f2;
        this.c = f3;
        this.f9388e = f4;
        this.f9390g = landmarkEntity;
    }

    public float a() {
        return this.f9387d;
    }

    public float b() {
        return this.c;
    }

    public float c() {
        return this.f9388e;
    }

    public Mat d() {
        return this.f9386a;
    }

    public LandmarkEntity e() {
        return this.f9390g;
    }

    public Bitmap f() {
        return this.f9389f;
    }

    public Rect g() {
        return this.b;
    }

    public boolean h() {
        return this.f9391h;
    }

    public void i(boolean z) {
        this.f9391h = z;
    }

    public void j(Bitmap bitmap) {
        this.f9389f = bitmap;
    }
}
