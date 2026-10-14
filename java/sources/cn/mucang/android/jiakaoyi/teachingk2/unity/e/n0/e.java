package cn.mucang.android.jiakaoyi.teachingk2.unity.e.n0;

import android.app.Activity;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.k3.ExamConfigModel;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.a0;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;

/* JADX INFO: loaded from: classes4.dex */
public class e implements c<ExamConfigModel> {
    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<ExamConfigModel> a(final UnityMessage<ExamConfigModel> unityMessage, Activity activity) {
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.e.n0.a
            @Override // java.lang.Runnable
            public final void run() {
                a0.e().N((ExamConfigModel) unityMessage.data);
            }
        });
        return null;
    }
}
