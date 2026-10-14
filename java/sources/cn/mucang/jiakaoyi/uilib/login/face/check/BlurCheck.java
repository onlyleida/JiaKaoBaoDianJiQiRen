package cn.mucang.jiakaoyi.uilib.login.face.check;

import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.DebounceUtil;
import cn.mucang.android.jiakaoyi.framework.utils.r0;
import cn.mucang.jiakaoyi.uilib.login.face.FaceCheckListener;
import cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter;
import cn.mucang.jiakaoyi.uilib.login.face.LandmarkEntity;
import cn.mucang.jiakaoyi.uilib.login.face.OpencvHelper;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mobile.auth.gatewayauth.Constant;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.r;
import org.opencv.core.Core;
import org.opencv.core.Mat;
import org.opencv.core.MatOfDouble;
import org.opencv.core.Rect;
import org.opencv.imgproc.Imgproc;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.login.face.t.f, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\u001dB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J&\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u0018J\u0006\u0010\u0019\u001a\u00020\u001aJ\u0018\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\nH\u0002R2\u0010\u0005\u001a&\u0012\f\u0012\n \b*\u0004\u0018\u00010\u00070\u0007 \b*\u0012\u0012\f\u0012\n \b*\u0004\u0018\u00010\u00070\u0007\u0018\u00010\u00060\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R2\u0010\r\u001a&\u0012\f\u0012\n \b*\u0004\u0018\u00010\u000e0\u000e \b*\u0012\u0012\f\u0012\n \b*\u0004\u0018\u00010\u000e0\u000e\u0018\u00010\u00060\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R2\u0010\u0011\u001a&\u0012\f\u0012\n \b*\u0004\u0018\u00010\u00070\u0007 \b*\u0012\u0012\f\u0012\n \b*\u0004\u0018\u00010\u00070\u0007\u0018\u00010\u00060\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/login/face/check/BlurCheck;", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcn/mucang/jiakaoyi/uilib/login/face/FaceCheckListener;", "(Lcn/mucang/jiakaoyi/uilib/login/face/FaceCheckListener;)V", "blurLimit", "Lcn/mucang/android/jiakaoyi/framework/utils/ValueCache;", "", "kotlin.jvm.PlatformType", "blurMat", "Lorg/opencv/core/Mat;", "blurStatistic", "Lcn/mucang/jiakaoyi/uilib/login/face/check/BlurCheck$Statistic;", "enableLimitBlur", "", "grayRect", "Lorg/opencv/core/Rect;", "nightBlurLimit", "nightBlurStatistic", "intercept", "isNight", "pos", "dst", "landmark", "Lcn/mucang/jiakaoyi/uilib/login/face/LandmarkEntity;", "release", "", "testSaveImg", "value", "Statistic", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class BlurCheck {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FaceCheckListener f9405a;
    private r0<Boolean> b;
    private Rect c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Mat f9406d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private r0<Integer> f9407e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private a f9408f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private r0<Integer> f9409g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private a f9410h;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.login.face.t.f$a */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u0015\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bR\u001a\u0010\b\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\n\"\u0004\b\u0017\u0010\f¨\u0006\u001c"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/login/face/check/BlurCheck$Statistic;", "", "blurLimit", "Lcn/mucang/android/jiakaoyi/framework/utils/ValueCache;", "", Constant.PROTOCOL_WEBVIEW_NAME, "", "(Lcn/mucang/android/jiakaoyi/framework/utils/ValueCache;Ljava/lang/String;)V", "blurCount", "getBlurCount", "()I", "setBlurCount", "(I)V", "blurCountMap", "", "getBlurCountMap", "()[I", "setBlurCountMap", "([I)V", "discardRat", "", "nonBlurCount", "getNonBlurCount", "setNonBlurCount", "statistic", "", "isBlur", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final r0<Integer> f9411a;
        private final String b;
        private int[] c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f9412d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f9413e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final float f9414f;

        public a(r0<Integer> blurLimit, String name) {
            r.e(blurLimit, "blurLimit");
            r.e(name, "name");
            this.f9411a = blurLimit;
            this.b = name;
            this.c = new int[101];
            this.f9414f = 0.2f;
        }

        /* JADX INFO: renamed from: a, reason: from getter */
        public final int[] getC() {
            return this.c;
        }

        public final void b(boolean z) {
            int i = this.f9412d;
            int i2 = this.f9413e;
            if (i + i2 > 15 && i / (i + i2) > this.f9414f) {
                if (!(this.c.length == 0)) {
                    f.g(this.b + ":模糊占比很高，降低阀值。blurCount：" + this.f9412d + "，nonBlurCount:" + this.f9413e);
                    int iB = kotlin.ranges.f.b(ArraysKt___ArraysKt.Z(this.c), 1);
                    int length = this.c.length + (-1);
                    if (length >= 0) {
                        int i3 = 0;
                        int i4 = 0;
                        while (true) {
                            int i5 = i3 + 1;
                            i4 += this.c[i3];
                            if (i4 / iB > this.f9414f) {
                                int i6 = i3 - 1;
                                this.f9411a.j(Integer.valueOf(i6));
                                this.f9412d = 0;
                                this.f9413e = 0;
                                this.c = new int[101];
                                f.g(this.b + ":重新计算的模糊新阀值：" + i6);
                                break;
                            }
                            if (i5 > length) {
                                break;
                            } else {
                                i3 = i5;
                            }
                        }
                    }
                }
            }
            if (this.f9412d + this.f9413e > 30) {
                this.f9412d = 0;
                this.f9413e = 0;
                this.c = new int[101];
            }
            if (z) {
                this.f9412d++;
            } else {
                this.f9413e++;
            }
        }
    }

    public BlurCheck(FaceCheckListener listener) {
        r.e(listener, "listener");
        this.f9405a = listener;
        this.b = r0.d("key_face_enable_limit_blur", Boolean.TRUE);
        this.c = new Rect();
        this.f9406d = new Mat();
        FaceLoginPresenter.a aVar = FaceLoginPresenter.B;
        r0<Integer> blurLimit = r0.f("key_face_limit_blur", aVar.a());
        this.f9407e = blurLimit;
        r.d(blurLimit, "blurLimit");
        this.f9408f = new a(blurLimit, "彩色");
        r0<Integer> nightBlurLimit = r0.f("key_face_limit_blur_night", (int) (aVar.a() * 0.6f));
        this.f9409g = nightBlurLimit;
        r.d(nightBlurLimit, "nightBlurLimit");
        this.f9410h = new a(nightBlurLimit, "红外灰色");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(BlurCheck this$0, int i) {
        r.e(this$0, "this$0");
        this$0.f9405a.d(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(boolean z) {
        f.g(r.m("照片模糊，丢弃, isNight:", Boolean.valueOf(z)));
    }

    private final void g(int i, Mat mat) {
    }

    public final boolean a(final boolean z, Rect pos, Mat dst, LandmarkEntity landmark) {
        boolean z2;
        r.e(pos, "pos");
        r.e(dst, "dst");
        r.e(landmark, "landmark");
        if (!this.b.b().booleanValue()) {
            return false;
        }
        this.c.x = ((int) landmark.getMouthLeft().x) - pos.x;
        this.c.width = (int) (landmark.getMouthRight().x - landmark.getMouthLeft().x);
        this.c.y = ((int) landmark.getNose().y) - pos.y;
        this.c.height = (int) (landmark.getMouthBottom().y - landmark.getNose().y);
        if (!OpencvHelper.f9399a.a(this.c, dst.width(), dst.height())) {
            return false;
        }
        Imgproc.cvtColor(dst.submat(this.c), this.f9406d, 6);
        MatOfDouble matOfDouble = new MatOfDouble();
        MatOfDouble matOfDouble2 = new MatOfDouble();
        Mat mat = this.f9406d;
        Imgproc.Laplacian(mat, mat, -1, 3, 1.0d, 0.0d, 4);
        Core.meanStdDev(this.f9406d, matOfDouble, matOfDouble2);
        final int i = (int) matOfDouble2.get(0, 0)[0];
        matOfDouble.release();
        matOfDouble2.release();
        u.c(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.login.face.t.b
            @Override // java.lang.Runnable
            public final void run() {
                BlurCheck.b(this.f9401a, i);
            }
        });
        if (z) {
            int[] c = this.f9410h.getC();
            int iE = kotlin.ranges.f.e(kotlin.ranges.f.b(i, 0), this.f9410h.getC().length - 1);
            c[iE] = c[iE] + 1;
            Integer numB = this.f9409g.b();
            r.d(numB, "nightBlurLimit.get()");
            z2 = i < numB.intValue();
            this.f9410h.b(z2);
        } else {
            int[] c2 = this.f9408f.getC();
            int iE2 = kotlin.ranges.f.e(kotlin.ranges.f.b(i, 0), this.f9408f.getC().length - 1);
            c2[iE2] = c2[iE2] + 1;
            Integer numB2 = this.f9407e.b();
            r.d(numB2, "blurLimit.get()");
            z2 = i < numB2.intValue();
            this.f9408f.b(z2);
        }
        t.h("www", "cacBlurVar:" + i + ", isNight:" + z);
        if (z2) {
            g(i, dst);
            DebounceUtil.f3633a.b("calBlur", 3000, new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.login.face.t.a
                @Override // java.lang.Runnable
                public final void run() {
                    BlurCheck.c(z);
                }
            });
        }
        return z2;
    }

    public final void f() {
        this.f9406d.release();
    }
}
