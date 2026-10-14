package cn.mucang.android.facelib;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.HandlerThread;
import cn.mucang.android.core.config.MucangConfig;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.facelib.v, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\r\u001a\u00020\u000e2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000e0\u0010J\u001a\u0010\u0011\u001a\u00020\u000e2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000e0\u0010J\u000e\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0014J\u001e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u00162\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bJ\u0006\u0010\u001c\u001a\u00020\u000eR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcn/mucang/android/facelib/TfLitePool;", "", "()V", "detector", "Lcn/mucang/android/facelib/tflite/SimilarityClassifier;", "detectorHandler", "Landroid/os/Handler;", "detectorThread", "Landroid/os/HandlerThread;", "maskDetector", "Lcn/mucang/android/facelib/TfLiteMaskDetector;", "maskDetectorHandler", "maskDetectorThread", "getDetector", "", "callBack", "Lkotlin/Function1;", "getMaskDetector", "postMaskThread", "task", "Ljava/lang/Runnable;", "recognizeFace", "", "Lcn/mucang/android/facelib/tflite/SimilarityClassifier$Recognition;", "bitmap", "Landroid/graphics/Bitmap;", "getExtra", "", "release", "facelib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TfLitePool {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TfLitePool f3042a = new TfLitePool();
    private static cn.mucang.android.facelib.y.e b;
    private static TfLiteMaskDetector c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static HandlerThread f3043d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Handler f3044e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static HandlerThread f3045f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static Handler f3046g;

    /* JADX INFO: renamed from: cn.mucang.android.facelib.v$a */
    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"cn/mucang/android/facelib/TfLitePool$getDetector$runnable$1", "Ljava/lang/Runnable;", "run", "", "facelib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Function1<cn.mucang.android.facelib.y.e, kotlin.v> f3047a;
        final /* synthetic */ Ref$IntRef b;
        final /* synthetic */ Ref$BooleanRef c;

        /* JADX WARN: Multi-variable type inference failed */
        a(Function1<? super cn.mucang.android.facelib.y.e, kotlin.v> function1, Ref$IntRef ref$IntRef, Ref$BooleanRef ref$BooleanRef) {
            this.f3047a = function1;
            this.b = ref$IntRef;
            this.c = ref$BooleanRef;
        }

        @Override // java.lang.Runnable
        public void run() {
            Object objM139constructorimpl;
            if (TfLitePool.b == null) {
                TfLitePool tfLitePool = TfLitePool.f3042a;
                Ref$BooleanRef ref$BooleanRef = this.c;
                try {
                    Result.Companion companion = Result.INSTANCE;
                    cn.mucang.android.facelib.x.a.a("初始化Tensorflow");
                    objM139constructorimpl = Result.m139constructorimpl(cn.mucang.android.facelib.y.f.b(MucangConfig.getContext().getAssets(), "mobile_face_net.tflite", 112, ref$BooleanRef.element, false));
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
                }
                Ref$BooleanRef ref$BooleanRef2 = this.c;
                Ref$IntRef ref$IntRef = this.b;
                Throwable thM142exceptionOrNullimpl = Result.m142exceptionOrNullimpl(objM139constructorimpl);
                if (thM142exceptionOrNullimpl != null) {
                    ref$BooleanRef2.element = false;
                    thM142exceptionOrNullimpl.printStackTrace();
                    cn.mucang.android.facelib.x.a.a("Tensorflow初始化失败, index:" + ref$IntRef.element + (char) 65306 + ((Object) thM142exceptionOrNullimpl.getLocalizedMessage()));
                }
                if (Result.m146isSuccessimpl(objM139constructorimpl)) {
                    cn.mucang.android.facelib.x.a.a("Tensorflow初始化成功");
                }
                if (Result.m145isFailureimpl(objM139constructorimpl)) {
                    objM139constructorimpl = null;
                }
                TfLitePool.b = (cn.mucang.android.facelib.y.e) objM139constructorimpl;
            }
            if (TfLitePool.b != null) {
                Function1<cn.mucang.android.facelib.y.e, kotlin.v> function1 = this.f3047a;
                cn.mucang.android.facelib.y.e eVar = TfLitePool.b;
                r.c(eVar);
                function1.invoke(eVar);
                return;
            }
            Ref$IntRef ref$IntRef2 = this.b;
            int i = ref$IntRef2.element;
            if (i > 0) {
                ref$IntRef2.element = i - 1;
                Handler handler = TfLitePool.f3044e;
                if (handler == null) {
                    return;
                }
                handler.post(this);
            }
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.facelib.v$b */
    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"cn/mucang/android/facelib/TfLitePool$getMaskDetector$runnable$1", "Ljava/lang/Runnable;", "run", "", "facelib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Function1<TfLiteMaskDetector, kotlin.v> f3048a;
        final /* synthetic */ Ref$IntRef b;
        final /* synthetic */ Ref$BooleanRef c;

        /* JADX WARN: Multi-variable type inference failed */
        b(Function1<? super TfLiteMaskDetector, kotlin.v> function1, Ref$IntRef ref$IntRef, Ref$BooleanRef ref$BooleanRef) {
            this.f3048a = function1;
            this.b = ref$IntRef;
            this.c = ref$BooleanRef;
        }

        @Override // java.lang.Runnable
        public void run() {
            Object objM139constructorimpl;
            if (TfLitePool.c == null) {
                TfLitePool tfLitePool = TfLitePool.f3042a;
                Ref$BooleanRef ref$BooleanRef = this.c;
                try {
                    Result.Companion companion = Result.INSTANCE;
                    TfLiteMaskDetector tfLiteMaskDetector = new TfLiteMaskDetector();
                    tfLiteMaskDetector.d(ref$BooleanRef.element);
                    objM139constructorimpl = Result.m139constructorimpl(tfLiteMaskDetector);
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
                }
                Ref$BooleanRef ref$BooleanRef2 = this.c;
                Ref$IntRef ref$IntRef = this.b;
                Throwable thM142exceptionOrNullimpl = Result.m142exceptionOrNullimpl(objM139constructorimpl);
                if (thM142exceptionOrNullimpl != null) {
                    ref$BooleanRef2.element = false;
                    thM142exceptionOrNullimpl.printStackTrace();
                    cn.mucang.android.facelib.x.a.a("Tensorflow(口罩)初始化失败, index:" + ref$IntRef.element + (char) 65306 + ((Object) thM142exceptionOrNullimpl.getLocalizedMessage()));
                }
                if (Result.m146isSuccessimpl(objM139constructorimpl)) {
                    cn.mucang.android.facelib.x.a.a("Tensorflow(口罩)初始化成功");
                }
                if (Result.m145isFailureimpl(objM139constructorimpl)) {
                    objM139constructorimpl = null;
                }
                TfLitePool.c = (TfLiteMaskDetector) objM139constructorimpl;
            }
            if (TfLitePool.c != null) {
                Function1<TfLiteMaskDetector, kotlin.v> function1 = this.f3048a;
                TfLiteMaskDetector tfLiteMaskDetector2 = TfLitePool.c;
                r.c(tfLiteMaskDetector2);
                function1.invoke(tfLiteMaskDetector2);
                return;
            }
            Ref$IntRef ref$IntRef2 = this.b;
            int i = ref$IntRef2.element;
            if (i > 0) {
                ref$IntRef2.element = i - 1;
                Handler handler = TfLitePool.f3046g;
                if (handler == null) {
                    return;
                }
                handler.post(this);
            }
        }
    }

    private TfLitePool() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(CountDownLatch countDownLatch, AtomicReference result, Bitmap bitmap, boolean z) {
        r.e(countDownLatch, "$countDownLatch");
        r.e(result, "$result");
        r.e(bitmap, "$bitmap");
        synchronized (f3042a) {
            cn.mucang.android.facelib.y.e eVar = b;
            result.set(eVar == null ? null : eVar.a(bitmap, z));
            kotlin.v vVar = kotlin.v.f15822a;
        }
        countDownLatch.countDown();
    }

    public final void g(Function1<? super cn.mucang.android.facelib.y.e, kotlin.v> callBack) {
        r.e(callBack, "callBack");
        if (f3043d == null) {
            synchronized (this) {
                if (f3043d == null) {
                    HandlerThread handlerThread = new HandlerThread("TfLitePoolDetector");
                    f3043d = handlerThread;
                    r.c(handlerThread);
                    handlerThread.start();
                    HandlerThread handlerThread2 = f3043d;
                    r.c(handlerThread2);
                    f3044e = new Handler(handlerThread2.getLooper());
                }
                kotlin.v vVar = kotlin.v.f15822a;
            }
        }
        cn.mucang.android.facelib.y.e eVar = b;
        if (eVar != null) {
            r.c(eVar);
            callBack.invoke(eVar);
            return;
        }
        Ref$IntRef ref$IntRef = new Ref$IntRef();
        ref$IntRef.element = 3;
        Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        ref$BooleanRef.element = true;
        a aVar = new a(callBack, ref$IntRef, ref$BooleanRef);
        Handler handler = f3044e;
        if (handler == null) {
            return;
        }
        handler.post(aVar);
    }

    public final void h(Function1<? super TfLiteMaskDetector, kotlin.v> callBack) {
        r.e(callBack, "callBack");
        if (f3045f == null) {
            synchronized (this) {
                if (f3045f == null) {
                    HandlerThread handlerThread = new HandlerThread("TfLitePoolDetector");
                    f3045f = handlerThread;
                    r.c(handlerThread);
                    handlerThread.start();
                    HandlerThread handlerThread2 = f3045f;
                    r.c(handlerThread2);
                    f3046g = new Handler(handlerThread2.getLooper());
                }
                kotlin.v vVar = kotlin.v.f15822a;
            }
        }
        TfLiteMaskDetector tfLiteMaskDetector = c;
        if (tfLiteMaskDetector != null) {
            r.c(tfLiteMaskDetector);
            callBack.invoke(tfLiteMaskDetector);
            return;
        }
        Ref$IntRef ref$IntRef = new Ref$IntRef();
        ref$IntRef.element = 3;
        Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        ref$BooleanRef.element = true;
        b bVar = new b(callBack, ref$IntRef, ref$BooleanRef);
        Handler handler = f3046g;
        if (handler == null) {
            return;
        }
        handler.post(bVar);
    }

    public final void j(Runnable task) {
        r.e(task, "task");
        Handler handler = f3046g;
        if (handler == null) {
            return;
        }
        handler.post(task);
    }

    public final List<cn.mucang.android.facelib.y.e.a> k(final Bitmap bitmap, final boolean z) throws InterruptedException {
        r.e(bitmap, "bitmap");
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final AtomicReference atomicReference = new AtomicReference();
        Handler handler = f3044e;
        if (handler != null) {
            handler.post(new Runnable() { // from class: cn.mucang.android.facelib.n
                @Override // java.lang.Runnable
                public final void run() {
                    TfLitePool.l(countDownLatch, atomicReference, bitmap, z);
                }
            });
        }
        countDownLatch.await(500L, TimeUnit.MILLISECONDS);
        return (List) atomicReference.get();
    }

    public final void m() {
        TfLiteMaskDetector tfLiteMaskDetector = c;
        if (tfLiteMaskDetector != null) {
            tfLiteMaskDetector.g();
        }
        c = null;
        cn.mucang.android.facelib.y.e eVar = b;
        if (eVar != null) {
            eVar.close();
        }
        b = null;
        HandlerThread handlerThread = f3043d;
        if (handlerThread != null) {
            handlerThread.quit();
        }
        f3043d = null;
        Handler handler = f3044e;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        f3044e = null;
        HandlerThread handlerThread2 = f3045f;
        if (handlerThread2 != null) {
            handlerThread2.quit();
        }
        f3045f = null;
        Handler handler2 = f3046g;
        if (handler2 != null) {
            handler2.removeCallbacksAndMessages(null);
        }
        f3046g = null;
    }
}
