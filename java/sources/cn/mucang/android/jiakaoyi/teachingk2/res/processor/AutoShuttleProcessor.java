package cn.mucang.android.jiakaoyi.teachingk2.res.processor;

import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.i.a;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.teachingk2.autoshuttle.AutoDriveHelper;
import cn.mucang.android.jiakaoyi.teachingk2.res.ResourceManager;
import cn.mucang.android.jiakaoyi.teachingk2.res.model.AutoShuttleModel;
import cn.mucang.android.jiakaoyi.teachingk2.res.n;
import cn.mucang.jiakaoyi.uilib.mapupdate.g;
import com.alibaba.fastjson.JSON;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.res.o.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/res/processor/AutoShuttleProcessor;", "Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$ResourceProcessor;", "()V", "process", "", "file", "Ljava/io/File;", "examSiteId", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AutoShuttleProcessor implements ResourceManager.c {
    @Override // cn.mucang.android.jiakaoyi.teachingk2.res.ResourceManager.c
    public void a(File file, long j) throws Throwable {
        r.e(file, "file");
        String strB = g.b(file);
        f.o(r.m("AutoShuttleProcessor: ", strB));
        a aVar = n.b().f7599a;
        List<AutoShuttleModel> list = JSON.parseArray(strB, AutoShuttleModel.class);
        r.d(list, "list");
        for (AutoShuttleModel autoShuttleModel : list) {
            autoShuttleModel.pos = aVar.a((Gps) JSON.parseObject(autoShuttleModel.connectionPoint, Gps.class));
        }
        AutoDriveHelper.f6264a.f(list);
    }
}
