package cn.mucang.android.jiakaoyi.teachingk2.trace.correct;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UnityLineModel;
import cn.mucang.android.jiakaoyi.unity.c.d;
import com.google.android.exoplayer2.SimpleExoPlayer;

/* JADX INFO: loaded from: classes4.dex */
public class a {
    private UnityLineModel b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Runnable f8056d = new RunnableC0137a();
    private int c = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long[] f8055a = {SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS, 500, SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS, 500, 1000, 500, 1000, 500};

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.trace.b.a$a, reason: collision with other inner class name */
    class RunnableC0137a implements Runnable {
        RunnableC0137a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            UnityLineModel unityLineModel = a.this.b;
            if (unityLineModel == null) {
                u.e(a.this.f8056d);
                return;
            }
            int length = a.this.c % a.this.f8055a.length;
            u.d(a.this.f8056d, a.this.f8055a[length]);
            unityLineModel.open = length % 2 == 0;
            d.e(unityLineModel);
            a.d(a.this);
        }
    }

    static /* synthetic */ int d(a aVar) {
        int i = aVar.c;
        aVar.c = i + 1;
        return i;
    }

    public void f(UnityLineModel unityLineModel) {
        u.e(this.f8056d);
        this.c = 0;
        this.b = unityLineModel;
        if (unityLineModel != null) {
            u.c(this.f8056d);
        }
    }
}
