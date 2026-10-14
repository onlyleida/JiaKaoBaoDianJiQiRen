package cn.mucang.android.jiakaoyi.teachingk2.unity.e;

import android.app.Activity;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.AssistTeachManager;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.teach.TeachConfigModel;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;

/* JADX INFO: loaded from: classes4.dex */
public class t implements c<TeachConfigModel> {
    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<TeachConfigModel> a(UnityMessage<TeachConfigModel> unityMessage, Activity activity) {
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.e.a
            @Override // java.lang.Runnable
            public final void run() {
                AssistTeachManager.i();
            }
        });
        return null;
    }
}
