package cn.mucang.android.jiakaoyi.teachingk2.unity.e;

import android.app.Activity;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.speech.SpeechManager;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.RobotTips;
import cn.mucang.android.jiakaoyi.teachingk2.level.UserLevelManager;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.LoadingCloseModel;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;

/* JADX INFO: loaded from: classes4.dex */
public class x implements c<LoadingCloseModel> {
    static /* synthetic */ void b() {
        UserLevelManager.s(false, null, null);
        SpeechManager.f5839a.u();
    }

    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<LoadingCloseModel> a(UnityMessage<LoadingCloseModel> unityMessage, Activity activity) {
        LoadingCloseModel.isUnityLoaded = true;
        RobotTips.f7184a.P();
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.e.f
            @Override // java.lang.Runnable
            public final void run() {
                x.b();
            }
        });
        f.o("unity loading结束");
        return null;
    }
}
