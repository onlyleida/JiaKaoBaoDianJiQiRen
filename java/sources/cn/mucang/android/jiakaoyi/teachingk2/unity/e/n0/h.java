package cn.mucang.android.jiakaoyi.teachingk2.unity.e.n0;

import android.app.Activity;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.k3.LightPlayModel;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.a0;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;

/* JADX INFO: loaded from: classes4.dex */
public class h implements c<LightPlayModel> {
    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<LightPlayModel> a(final UnityMessage<LightPlayModel> unityMessage, Activity activity) {
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.e.n0.c
            @Override // java.lang.Runnable
            public final void run() {
                a0.f().u((LightPlayModel) unityMessage.data);
            }
        });
        return null;
    }
}
