package cn.mucang.android.jiakaoyi.teachingk2.unity.e.m0;

import android.app.Activity;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.s;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.exam.UnityExamEngineModel;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.a0;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;

/* JADX INFO: loaded from: classes4.dex */
public class e implements c<UnityExamEngineModel> {
    static /* synthetic */ void b(UnityMessage unityMessage) {
        if (a0.f6363a == KeMu.K2) {
            if (((UnityExamEngineModel) unityMessage.data).engine == 1) {
                s.b().a().t();
                return;
            } else {
                s.b().a().v(false);
                return;
            }
        }
        if (((UnityExamEngineModel) unityMessage.data).engine == 1) {
            a0.e().L();
        } else {
            a0.e().M();
        }
    }

    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<UnityExamEngineModel> a(final UnityMessage<UnityExamEngineModel> unityMessage, Activity activity) {
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.e.m0.a
            @Override // java.lang.Runnable
            public final void run() {
                e.b(unityMessage);
            }
        });
        return null;
    }
}
