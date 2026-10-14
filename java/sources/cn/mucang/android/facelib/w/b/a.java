package cn.mucang.android.facelib.w.b;

import android.graphics.Bitmap;
import cn.mucang.android.facelib.w.a.b;
import cn.mucang.android.facelib.w.a.c;
import cn.mucang.jiakaoyi.uilib.login.face.m;

/* JADX INFO: loaded from: classes.dex */
public class a<FaceData, UserData> extends cn.mucang.android.facelib.w.a.a {
    public final UserData c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b<FaceData> f3050d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final c<FaceData, UserData> f3051e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f3052f;

    public a(UserData userdata, b<FaceData> bVar, c<FaceData, UserData> cVar, long j) {
        this.c = userdata;
        this.f3050d = bVar;
        this.f3051e = cVar;
        this.f3052f = j;
    }

    private void c(Bitmap bitmap, m mVar) {
        FaceData facedataA = this.f3050d.a(bitmap);
        if (facedataA == null) {
            this.b = 0L;
            return;
        }
        if (!this.f3051e.b(facedataA, this.c, mVar)) {
            b();
        }
        this.b = System.currentTimeMillis();
    }

    public void d(Bitmap bitmap, m mVar) {
        if (this.f3049a) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - this.b < this.f3052f) {
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
