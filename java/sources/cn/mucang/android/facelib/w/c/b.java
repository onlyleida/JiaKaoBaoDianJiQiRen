package cn.mucang.android.facelib.w.c;

import android.graphics.Bitmap;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.facelib.w.a.c;
import cn.mucang.jiakaoyi.uilib.login.face.m;

/* JADX INFO: loaded from: classes.dex */
public class b<FaceData, UserData> extends cn.mucang.android.facelib.w.a.a {
    private final cn.mucang.android.facelib.w.a.b<FaceData> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c<FaceData, UserData> f3054d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f3055e;

    public b(cn.mucang.android.facelib.w.a.b<FaceData> bVar, c<FaceData, UserData> cVar, long j) {
        this.c = bVar;
        this.f3054d = cVar;
        this.f3055e = j;
    }

    private void c(Bitmap bitmap, m mVar) {
        FaceData facedataA = this.c.a(bitmap);
        if (facedataA == null) {
            this.b = 0L;
        } else if (this.f3054d.c(facedataA, mVar)) {
            u.c(new Runnable() { // from class: cn.mucang.android.facelib.w.c.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.f3053a.b();
                }
            });
        } else {
            this.b = 0L;
        }
    }

    public void d(Bitmap bitmap, m mVar) {
        if (this.f3049a) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - this.b < this.f3055e) {
                return;
            }
            this.b = jCurrentTimeMillis;
            try {
                c(bitmap, mVar);
            } catch (Throwable unused) {
                this.b = 0L;
            }
        }
    }
}
