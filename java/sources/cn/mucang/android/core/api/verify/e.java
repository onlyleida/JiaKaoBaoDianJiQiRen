package cn.mucang.android.core.api.verify;

/* JADX INFO: loaded from: classes.dex */
public abstract class e implements f.a.a.a.activity.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private f f2443a;

    public void b(f fVar) {
        this.f2443a = fVar;
    }

    public void c(boolean z, Object obj) {
        f fVar = this.f2443a;
        if (fVar != null) {
            fVar.a(z, obj);
            this.f2443a = null;
        }
    }
}
