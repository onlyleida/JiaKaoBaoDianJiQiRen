package cn.mucang.android.jiakaoyi.teachingk2.unity.e;

import android.app.Activity;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.manager.AssistTeachManager;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.teach.TeachStatusModel;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;

/* JADX INFO: loaded from: classes4.dex */
public class u implements c<TeachStatusModel> {
    static /* synthetic */ void b(UnityMessage unityMessage) {
        T t = unityMessage.data;
        AssistTeachManager.l(((TeachStatusModel) t).state, ((TeachStatusModel) t).data);
    }

    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<TeachStatusModel> a(final UnityMessage<TeachStatusModel> unityMessage, Activity activity) {
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.e.d
            @Override // java.lang.Runnable
            public final void run() {
                u.b(unityMessage);
            }
        });
        return null;
    }
}
