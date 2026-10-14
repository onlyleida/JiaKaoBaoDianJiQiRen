package cn.mucang.jiakaoyi.uilib.login.face.check;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener;
import cn.mucang.jiakaoyi.uilib.login.face.LandmarkEntity;
import cn.mucang.jiakaoyi.uilib.login.face.OpencvHelper;
import cn.mucang.jiakaoyi.uilib.login.face.i;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$DoubleRef;
import kotlin.jvm.internal.r;
import kotlin.v;
import org.opencv.core.Core;
import org.opencv.core.Mat;
import org.opencv.core.Rect;
import org.opencv.core.Scalar;
import org.opencv.imgproc.Imgproc;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.login.face.t.h, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007¢\u0006\u0002\u0010\nJ \u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J \u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J&\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020!2\u0006\u0010\u001b\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\u001eJ\u0006\u0010#\u001a\u00020\tR\u000e\u0010\u000b\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\b0\u0015j\b\u0012\u0004\u0012\u00020\b`\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u001d\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018¨\u0006$"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/login/face/check/LightCheck;", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcn/mucang/jiakaoyi/uilib/login/face/FaceCheckListener;", "limitPixel", "", "showBrightnessImg", "Lkotlin/Function1;", "Lorg/opencv/core/Mat;", "", "(Lcn/mucang/jiakaoyi/uilib/login/face/FaceCheckListener;ILkotlin/jvm/functions/Function1;)V", "gray", "grayRect", "Lorg/opencv/core/Rect;", "highLightLimitRate", "getLimitPixel", "()I", "getListener", "()Lcn/mucang/jiakaoyi/uilib/login/face/FaceCheckListener;", "lutLightMat", "matSplit", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "getShowBrightnessImg", "()Lkotlin/jvm/functions/Function1;", "getAveragePixel", "", "pos", "dst", "landmark", "Lcn/mucang/jiakaoyi/uilib/login/face/LandmarkEntity;", "highLightRate", "intercept", "", "isNight", "release", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LightCheck {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FaceCheckListener f9417a;
    private final int b;
    private final Function1<Mat, v> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Rect f9418d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ArrayList<Mat> f9419e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Mat f9420f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Mat f9421g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f9422h;

    /* JADX WARN: Multi-variable type inference failed */
    public LightCheck(FaceCheckListener listener, int i, Function1<? super Mat, v> showBrightnessImg) {
        r.e(listener, "listener");
        r.e(showBrightnessImg, "showBrightnessImg");
        this.f9417a = listener;
        this.b = i;
        this.c = showBrightnessImg;
        this.f9418d = new Rect();
        this.f9419e = new ArrayList<>();
        this.f9420f = new Mat(1, 256, 0);
        this.f9421g = new Mat();
        this.f9422h = 8;
        byte[] bArr = new byte[256];
        i iVar = new i(0.2d, 0.23d, 0.0d, 0.27d);
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            float f2 = 255;
            bArr[i2] = (byte) (iVar.b(i2 / f2) * f2);
            if (i3 > 255) {
                this.f9420f.put(0, 0, bArr);
                return;
            }
            i2 = i3;
        }
    }

    private final double a(Rect rect, Mat mat, LandmarkEntity landmarkEntity) {
        this.f9418d.x = ((int) landmarkEntity.getMouthLeft().x) - rect.x;
        this.f9418d.width = (int) (landmarkEntity.getMouthRight().x - landmarkEntity.getMouthLeft().x);
        this.f9418d.y = ((int) landmarkEntity.getNose().y) - rect.y;
        this.f9418d.height = (int) (landmarkEntity.getMouthBottom().y - landmarkEntity.getNose().y);
        if (!OpencvHelper.f9399a.a(this.f9418d, mat.width(), mat.height())) {
            return 0.0d;
        }
        Imgproc.cvtColor(mat.submat(this.f9418d), this.f9421g, 7);
        Scalar scalarMean = Core.mean(this.f9421g);
        if ((scalarMean == null ? null : scalarMean.val) != null) {
            double[] dArr = scalarMean.val;
            r.d(dArr, "scalar.`val`");
            if (!(dArr.length == 0)) {
                return scalarMean.val[0];
            }
        }
        return 0.0d;
    }

    private final int c(Rect rect, Mat mat, LandmarkEntity landmarkEntity) {
        float fMin = Math.min(landmarkEntity.getLeftCheek().x, Math.min(landmarkEntity.getLeftEar().x, landmarkEntity.getNose().x));
        float fMax = Math.max(landmarkEntity.getRightCheck().x, Math.max(landmarkEntity.getRightEar().x, landmarkEntity.getNose().x));
        Rect rect2 = this.f9418d;
        rect2.x = ((int) fMin) - rect.x;
        rect2.width = (int) (fMax - fMin);
        rect2.y = ((int) landmarkEntity.getEyeLeft().y) - rect.y;
        this.f9418d.height = ((int) (landmarkEntity.getMouthBottom().y - landmarkEntity.getEyeLeft().y)) + ((int) (landmarkEntity.getMouthRight().x - landmarkEntity.getMouthLeft().x));
        if (!OpencvHelper.f9399a.a(this.f9418d, mat.width(), mat.height())) {
            return 0;
        }
        Imgproc.cvtColor(mat.submat(this.f9418d), this.f9421g, 7);
        Mat mat2 = this.f9421g;
        Imgproc.threshold(mat2, mat2, 230.0d, 255.0d, 0);
        return (int) ((Core.sumElems(this.f9421g).val[0] / ((double) ((this.f9421g.width() * this.f9421g.height()) * 255))) * ((double) 100));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(LightCheck this$0, Ref$DoubleRef averagePixel) {
        r.e(this$0, "this$0");
        r.e(averagePixel, "$averagePixel");
        this$0.getF9417a().h((int) averagePixel.element);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(LightCheck this$0, int i) {
        r.e(this$0, "this$0");
        this$0.getF9417a().e(i);
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final FaceCheckListener getF9417a() {
        return this.f9417a;
    }

    public final boolean d(boolean z, Rect pos, Mat dst, LandmarkEntity landmark) {
        r.e(pos, "pos");
        r.e(dst, "dst");
        r.e(landmark, "landmark");
        final Ref$DoubleRef ref$DoubleRef = new Ref$DoubleRef();
        ref$DoubleRef.element = a(pos, dst, landmark);
        u.c(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.login.face.t.d
            @Override // java.lang.Runnable
            public final void run() {
                LightCheck.e(this.f9403a, ref$DoubleRef);
            }
        });
        if (ref$DoubleRef.element < this.b) {
            f.g("averagePixel: " + ref$DoubleRef.element + "  太黑了，舍弃");
            return true;
        }
        if (!z) {
            final int iC = c(pos, dst, landmark);
            u.c(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.login.face.t.e
                @Override // java.lang.Runnable
                public final void run() {
                    LightCheck.f(this.f9404a, iC);
                }
            });
            if (iC > this.f9422h) {
                f.g("highLightRate: " + iC + "  高光太多了");
                return true;
            }
        }
        if (ref$DoubleRef.element < 40.0d) {
            Imgproc.cvtColor(dst, dst, 83);
            Core.split(dst, this.f9419e);
            Core.LUT(this.f9419e.get(0), this.f9420f, this.f9419e.get(0));
            Core.merge(this.f9419e, dst);
            Imgproc.cvtColor(dst, dst, 85);
            this.c.invoke(dst);
        }
        return false;
    }

    public final void i() {
        this.f9419e.clear();
        this.f9420f.release();
        this.f9421g.release();
    }
}
