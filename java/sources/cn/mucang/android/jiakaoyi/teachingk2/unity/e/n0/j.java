package cn.mucang.android.jiakaoyi.teachingk2.unity.e.n0;

import android.app.Activity;
import cn.mucang.android.jiakaoyi.teachingk2.k3.K3DataManager;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.k3.RouteDataModel;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;

/* JADX INFO: loaded from: classes4.dex */
public class j implements c<RouteDataModel.RouteItemModel> {
    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<RouteDataModel.RouteItemModel> a(UnityMessage<RouteDataModel.RouteItemModel> unityMessage, Activity activity) {
        K3DataManager.k(((RouteDataModel.RouteItemModel) unityMessage.data).id, true);
        return null;
    }
}
