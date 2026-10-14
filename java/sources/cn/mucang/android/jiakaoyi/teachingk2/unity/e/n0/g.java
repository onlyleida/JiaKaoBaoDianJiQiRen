package cn.mucang.android.jiakaoyi.teachingk2.unity.e.n0;

import android.app.Activity;
import cn.mucang.android.jiakaoyi.teachingk2.k3.K3DataManager;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.k3.LightDataModel;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;

/* JADX INFO: loaded from: classes4.dex */
public class g implements c<LightDataModel> {
    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<LightDataModel> a(UnityMessage<LightDataModel> unityMessage, Activity activity) {
        if (unityMessage.id == 12003) {
            ((LightDataModel) unityMessage.data).itemList = K3DataManager.f();
        } else {
            ((LightDataModel) unityMessage.data).itemList = K3DataManager.e();
        }
        return unityMessage;
    }
}
