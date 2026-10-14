package cn.mucang.android.jiakaoyi.teachingk2.unity.e;

import android.app.Activity;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UnityLogModel;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;

/* JADX INFO: loaded from: classes4.dex */
public class y implements c<UnityLogModel> {
    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<UnityLogModel> a(UnityMessage<UnityLogModel> unityMessage, Activity activity) {
        f.o(((UnityLogModel) unityMessage.data).log);
        return null;
    }
}
