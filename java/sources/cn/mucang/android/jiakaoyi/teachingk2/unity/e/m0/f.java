package cn.mucang.android.jiakaoyi.teachingk2.unity.e.m0;

import android.app.Activity;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.exam.UnityExamHistoryModel;
import cn.mucang.android.jiakaoyi.teachingk2.trace.TraceApi;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.a0;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.c.d;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;

/* JADX INFO: loaded from: classes4.dex */
public class f implements c<UnityExamHistoryModel> {
    static /* synthetic */ void b() {
        UnityExamHistoryModel unityExamHistoryModel = new UnityExamHistoryModel();
        try {
            unityExamHistoryModel.itemList = new TraceApi().n(a0.f6363a);
            d.e(unityExamHistoryModel);
        } catch (Exception e2) {
            cn.mucang.android.jiakaoyi.teachingk2.p007unity.business.d.a(e2, "获取数据失败");
        }
    }

    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<UnityExamHistoryModel> a(UnityMessage<UnityExamHistoryModel> unityMessage, Activity activity) {
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.e.m0.b
            @Override // java.lang.Runnable
            public final void run() {
                f.b();
            }
        });
        return null;
    }
}
