package cn.mucang.android.jiakaoyi.teachingk2.unity.e.n0;

import android.app.Activity;
import cn.mucang.android.jiakaoyi.teachingk2.k3.K3DataManager;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.k3.RouteDataModel;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;

/* JADX INFO: loaded from: classes4.dex */
public class i implements c<RouteDataModel> {
    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<RouteDataModel> a(UnityMessage<RouteDataModel> unityMessage, Activity activity) {
        ((RouteDataModel) unityMessage.data).itemList = K3DataManager.g();
        return unityMessage;
    }
}
