package cn.mucang.android.facelib;

import android.graphics.Bitmap;
import android.util.Log;
import android.util.Size;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.jiakaoyi.uilib.login.face.IMaskDetector;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.facelib.u, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u000b\u001a\u00020\u0004H\u0016J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\rH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/facelib/TfLiteMaskDetector;", "Lcn/mucang/jiakaoyi/uilib/login/face/IMaskDetector;", "()V", "size", "Landroid/util/Size;", "tfLite", "Lcn/mucang/android/facelib/tflite/MaskClassifier;", "detect", "", "bitmap", "Landroid/graphics/Bitmap;", "getInputSize", "init", "", "enableGpu", "", "release", "facelib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TfLiteMaskDetector implements IMaskDetector {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private cn.mucang.android.facelib.y.c f3041a;
    private Size b;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(CountDownLatch countDownLatch, AtomicReference result, TfLiteMaskDetector this$0, Bitmap bitmap) {
        r.e(countDownLatch, "$countDownLatch");
        r.e(result, "$result");
        r.e(this$0, "this$0");
        r.e(bitmap, "$bitmap");
        synchronized (TfLitePool.f3042a) {
            cn.mucang.android.facelib.y.c cVar = this$0.f3041a;
            result.set(cVar == null ? null : cVar.a(bitmap));
            kotlin.v vVar = kotlin.v.f15822a;
        }
        countDownLatch.countDown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(cn.mucang.android.facelib.y.c cVar) {
        if (cVar == null) {
            return;
        }
        cVar.close();
    }

    @Override // cn.mucang.jiakaoyi.uilib.login.face.IMaskDetector
    public int a(final Bitmap bitmap) throws InterruptedException {
        r.e(bitmap, "bitmap");
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final AtomicReference atomicReference = new AtomicReference();
        TfLitePool.f3042a.j(new Runnable() { // from class: cn.mucang.android.facelib.m
            @Override // java.lang.Runnable
            public final void run() {
                TfLiteMaskDetector.c(countDownLatch, atomicReference, this, bitmap);
            }
        });
        countDownLatch.await(500L, TimeUnit.MILLISECONDS);
        List list = (List) atomicReference.get();
        cn.mucang.android.facelib.y.d dVar = null;
        Object next = null;
        if (list != null) {
            Iterator it = list.iterator();
            if (it.hasNext()) {
                next = it.next();
                if (it.hasNext()) {
                    float fA = ((cn.mucang.android.facelib.y.d) next).a();
                    do {
                        Object next2 = it.next();
                        float fA2 = ((cn.mucang.android.facelib.y.d) next2).a();
                        if (Float.compare(fA, fA2) < 0) {
                            next = next2;
                            fA = fA2;
                        }
                    } while (it.hasNext());
                }
            }
            dVar = (cn.mucang.android.facelib.y.d) next;
        }
        if (dVar == null) {
            return 0;
        }
        Log.i("www", "type:" + dVar.b() + "，cfc:" + dVar.a());
        if (dVar.a() >= 0.8d) {
            return dVar.b() == 0 ? 1 : 2;
        }
        return 0;
    }

    @Override // cn.mucang.jiakaoyi.uilib.login.face.IMaskDetector
    public Size b() {
        if (this.b == null) {
            this.b = new Size(200, 200);
        }
        Size size = this.b;
        r.c(size);
        return size;
    }

    public void d(boolean z) {
        this.f3041a = cn.mucang.android.facelib.y.b.b(MucangConfig.getContext(), "face_mask_detect_usetf.tflite", 200, z, false);
    }

    public void g() {
        final cn.mucang.android.facelib.y.c cVar = this.f3041a;
        this.f3041a = null;
        cn.mucang.android.core.utils.u.d(new Runnable() { // from class: cn.mucang.android.facelib.l
            @Override // java.lang.Runnable
            public final void run() {
                TfLiteMaskDetector.h(cVar);
            }
        }, 200L);
    }
}
