package cn.mucang.android.jiakaoyi.teachingk2.unity.e;

import android.app.Activity;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.teachingk2.login.RobotAccount;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UnityExitModel;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;

/* JADX INFO: loaded from: classes4.dex */
public class w implements c<UnityExitModel> {
    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<UnityExitModel> a(final UnityMessage<UnityExitModel> unityMessage, final Activity activity) {
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.e.e
            @Override // java.lang.Runnable
            public final void run() {
                RobotAccount.u(activity, ((UnityExitModel) unityMessage.data).quitType);
            }
        });
        return null;
    }
}
