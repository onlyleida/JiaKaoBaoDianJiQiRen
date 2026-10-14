package cn.mucang.android.jiakaoyi.exam.k3.collision;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.utils.b0;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.mapcollect.c.i;
import cn.mucang.jiakaoyi.uilib.rtmc.HPGpsManager;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;

/* JADX INFO: loaded from: classes2.dex */
public class K3ExamDataManager {
    protected i carDataHandler;
    private final long examSiteId;
    private volatile K3Data k3Data;
    private final cn.mucang.android.jiakaoyi.framework.h.b<Boolean> onLoadFinish;

    public K3ExamDataManager(long j, cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar) {
        this.onLoadFinish = bVar;
        this.examSiteId = j;
        init();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void c() {
        K3Data k3Data = new K3Data();
        if (b0.a().b()) {
            k3Data.loadData(String.valueOf(this.examSiteId));
            this.k3Data = k3Data;
            HPGpsManager.k(this.examSiteId, (int) ExamSiteUtil.f(0L));
        }
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.exam.k3.collision.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f3219a.onDataLoad();
            }
        });
    }

    private void init() {
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.exam.k3.collision.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f3218a.c();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDataLoad() {
        if (this.k3Data != null && this.k3Data.hasData && b0.a().b()) {
            i iVar = this.carDataHandler;
            if (iVar != null) {
                iVar.g();
            }
            i iVar2 = new i(this.k3Data.getCarData(), this.k3Data.getConverter());
            this.carDataHandler = iVar2;
            iVar2.f();
        }
        cn.mucang.android.jiakaoyi.exam.a.b.b(this.k3Data);
        this.onLoadFinish.callback(Boolean.TRUE);
    }

    public K3Data getK3Data() {
        return this.k3Data;
    }

    public void reset() {
        i iVar = this.carDataHandler;
        if (iVar != null) {
            iVar.g();
        }
    }
}
