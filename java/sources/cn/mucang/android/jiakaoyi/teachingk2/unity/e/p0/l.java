package cn.mucang.android.jiakaoyi.teachingk2.unity.e.p0;

import android.app.Activity;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.TrainConfigModel;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.a0;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;

/* JADX INFO: loaded from: classes4.dex */
public class l implements c<TrainConfigModel> {
    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<TrainConfigModel> a(UnityMessage<TrainConfigModel> unityMessage, Activity activity) {
        unityMessage.data = a0.h().getB();
        return unityMessage;
    }
}
