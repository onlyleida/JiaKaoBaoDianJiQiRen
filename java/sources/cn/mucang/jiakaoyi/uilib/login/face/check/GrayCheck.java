package cn.mucang.jiakaoyi.uilib.login.face.check;

import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.DebounceUtil;
import cn.mucang.jiakaoyi.uilib.login.face.LandmarkEntity;
import cn.mucang.jiakaoyi.uilib.login.face.OpencvHelper;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.r;
import org.opencv.core.Core;
import org.opencv.core.CvType;
import org.opencv.core.Mat;
import org.opencv.core.Rect;
import org.opencv.core.Scalar;
import org.opencv.imgproc.Imgproc;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.login.face.t.g, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0012R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\u00040\bj\b\u0012\u0004\u0012\u00020\u0004`\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/login/face/check/GrayCheck;", "", "()V", "grayMat", "Lorg/opencv/core/Mat;", "grayRect", "Lorg/opencv/core/Rect;", "matSplit", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "temp", "intercept", "", "pos", "dst", "landmark", "Lcn/mucang/jiakaoyi/uilib/login/face/LandmarkEntity;", "release", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class GrayCheck {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList<Mat> f9415a = new ArrayList<>();
    private Mat b = new Mat();
    private Rect c = new Rect();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Mat f9416d = new Mat();

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(double d2) {
        f.g(r.m("灰度图", Integer.valueOf((int) d2)));
    }

    public final boolean a(Rect pos, Mat dst, LandmarkEntity landmark) {
        r.e(pos, "pos");
        r.e(dst, "dst");
        r.e(landmark, "landmark");
        this.c.x = ((int) landmark.getMouthLeft().x) - pos.x;
        this.c.width = (int) (landmark.getMouthRight().x - landmark.getMouthLeft().x);
        this.c.y = ((int) landmark.getNose().y) - pos.y;
        this.c.height = (int) (landmark.getMouthBottom().y - landmark.getNose().y);
        if (!OpencvHelper.f9399a.a(this.c, dst.width(), dst.height())) {
            return false;
        }
        Mat matSubmat = dst.submat(this.c);
        Imgproc.cvtColor(matSubmat, this.f9416d, 6);
        this.f9415a.clear();
        Mat mat = new Mat(matSubmat.size(), CvType.CV_8UC1);
        Core.multiply(mat, new Scalar(0.0d), mat);
        Core.split(matSubmat, this.f9415a);
        int size = this.f9415a.size();
        if (size > 0) {
            int i = 0;
            while (true) {
                int i2 = i + 1;
                Mat mat2 = this.f9415a.get(i);
                ArrayList<Mat> arrayList = this.f9415a;
                Core.absdiff(mat2, arrayList.get(i2 % arrayList.size()), this.b);
                Core.add(this.b, mat, mat);
                if (i2 >= size) {
                    break;
                }
                i = i2;
            }
        }
        double[] dArr = Core.mean(mat).val;
        r.d(dArr, "mean(grayscaleResult).`val`");
        Double dZ = ArraysKt___ArraysKt.z(dArr, 0);
        final double dDoubleValue = dZ != null ? dZ.doubleValue() : 0.0d;
        mat.release();
        if (dDoubleValue >= 10.0d) {
            return false;
        }
        DebounceUtil.f3633a.b("gsrValue", 3000, new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.login.face.t.c
            @Override // java.lang.Runnable
            public final void run() {
                GrayCheck.b(dDoubleValue);
            }
        });
        return true;
    }

    public final void d() {
        this.f9415a.clear();
        this.b.release();
        this.f9416d.release();
    }
}
