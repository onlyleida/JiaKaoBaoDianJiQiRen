package cn.mucang.android.jiakaoyi.teachingk2.unity.e.m0;

import android.app.Activity;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.RobotTips;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.exam.UnityExamTypeModel;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;

/* JADX INFO: loaded from: classes4.dex */
public class g implements c<UnityExamTypeModel> {
    static /* synthetic */ void b(UnityMessage unityMessage) {
        w.r.setTraceType(((UnityExamTypeModel) unityMessage.data).type);
        RobotTips.f7184a.r(((UnityExamTypeModel) unityMessage.data).type);
    }

    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<UnityExamTypeModel> a(final UnityMessage<UnityExamTypeModel> unityMessage, Activity activity) {
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.e.m0.c
            @Override // java.lang.Runnable
            public final void run() {
                g.b(unityMessage);
            }
        });
        return null;
    }
}
