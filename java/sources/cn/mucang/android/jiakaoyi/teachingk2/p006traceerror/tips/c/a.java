package cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c;

import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.Tiger;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.TeachTypeData;
import cn.mucang.android.jiakaoyi.teachingk2.traceerror.ErrorTipModel;

/* JADX INFO: compiled from: PathTipTrigger.java */
/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a {
    public static void a(b _this, TeachTypeData teachTypeData) {
        Tiger.h(teachTypeData);
        f.o("完成子步骤:" + teachTypeData.toString() + ",[" + teachTypeData.teach.step + ":" + teachTypeData.teach.subStep + "]");
    }

    public static void b(b _this, String str) {
        LiveBus.c(new ErrorTipModel(str));
    }
}
