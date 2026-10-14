package cn.mucang.android.jiakaoyi.teachingk2.res.processor;

import cn.mucang.android.jiakaoyi.exam.k3.collision.K3Data;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.teachingk2.res.ResourceManager;
import cn.mucang.android.jiakaoyi.teachingk2.res.n;
import cn.mucang.jiakaoyi.uilib.mapupdate.h;
import java.io.File;

/* JADX INFO: loaded from: classes4.dex */
public class g implements ResourceManager.c {
    @Override // cn.mucang.android.jiakaoyi.teachingk2.res.ResourceManager.c
    public void a(File file, long j) {
        i0.m(h.e(j), file.getAbsolutePath());
        K3Data k3Data = new K3Data();
        k3Data.loadData(String.valueOf(j));
        n.b().n(k3Data);
    }
}
