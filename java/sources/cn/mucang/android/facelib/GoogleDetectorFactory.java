package cn.mucang.android.facelib;

import cn.mucang.jiakaoyi.uilib.login.face.FaceDetectorFactory;
import cn.mucang.jiakaoyi.uilib.login.face.IFaceDetector;
import cn.mucang.jiakaoyi.uilib.login.face.IMaskDetector;
import com.google.mlkit.vision.face.FaceDetection;
import com.google.mlkit.vision.face.FaceDetector;
import com.google.mlkit.vision.face.FaceDetectorOptions;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.j0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u001c\u0010\u0005\u001a\u00020\u00062\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00060\bH\u0016¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/facelib/GoogleDetectorFactory;", "Lcn/mucang/jiakaoyi/uilib/login/face/FaceDetectorFactory;", "()V", "getDetector", "Lcn/mucang/jiakaoyi/uilib/login/face/IFaceDetector;", "getMaskDetector", "", "callback", "Lkotlin/Function1;", "Lcn/mucang/jiakaoyi/uilib/login/face/IMaskDetector;", "Companion", "facelib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class GoogleDetectorFactory implements FaceDetectorFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f3007a = new Companion(null);
    private static Object b = new Object();
    private static FaceDetector c;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\b\u001a\u00020\tJ\b\u0010\n\u001a\u00020\tH\u0002R\u001a\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0083\u000e¢\u0006\b\n\u0000\u0012\u0004\b\u0005\u0010\u0002R\u0018\u0010\u0006\u001a\u00020\u00018\u0002@\u0002X\u0083\u000e¢\u0006\b\n\u0000\u0012\u0004\b\u0007\u0010\u0002¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/facelib/GoogleDetectorFactory$Companion;", "", "()V", "detector", "Lcom/google/mlkit/vision/face/FaceDetector;", "getDetector$annotations", "lock", "getLock$annotations", "destroy", "", "init", "facelib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.o oVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void c() {
            FaceDetectorOptions faceDetectorOptionsBuild = new FaceDetectorOptions.Builder().setLandmarkMode(2).build();
            r.d(faceDetectorOptionsBuild, "Builder()\n              …\n                .build()");
            GoogleDetectorFactory.c = FaceDetection.getClient(faceDetectorOptionsBuild);
            kotlinx.coroutines.g.b(j0.b(), null, null, new GoogleDetectorFactory$Companion$init$1(null), 3, null);
        }

        public final void b() {
            FaceDetector faceDetector = GoogleDetectorFactory.c;
            if (faceDetector != null) {
                faceDetector.close();
            }
            GoogleDetectorFactory.c = null;
        }
    }

    @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceDetectorFactory
    public void a(Function1<? super IMaskDetector, kotlin.v> callback) {
        r.e(callback, "callback");
        TfLitePool.f3042a.h(callback);
    }

    @Override // cn.mucang.jiakaoyi.uilib.login.face.FaceDetectorFactory
    public IFaceDetector b() {
        synchronized (b) {
            if (c == null) {
                f3007a.c();
            }
            kotlin.v vVar = kotlin.v.f15822a;
        }
        FaceDetector faceDetector = c;
        r.c(faceDetector);
        return new GoogleFaceDetector(faceDetector);
    }
}
