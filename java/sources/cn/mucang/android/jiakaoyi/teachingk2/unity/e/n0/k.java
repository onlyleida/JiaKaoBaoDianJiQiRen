package cn.mucang.android.jiakaoyi.teachingk2.unity.e.n0;

import android.app.Activity;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.k3setting.LocalRouteUtil;
import cn.mucang.android.jiakaoyi.teachingk2.k3.K3DataManager;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.k3.RouteSettingModel;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;

/* JADX INFO: loaded from: classes4.dex */
public class k implements c<RouteSettingModel> {
    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<RouteSettingModel> a(UnityMessage<RouteSettingModel> unityMessage, Activity activity) {
        ((RouteSettingModel) unityMessage.data).list = K3DataManager.h();
        if (n0.e(((RouteSettingModel) unityMessage.data).routeId)) {
            ((RouteSettingModel) unityMessage.data).routeId = LocalRouteUtil.c();
        } else {
            K3DataManager.k(((RouteSettingModel) unityMessage.data).routeId, false);
        }
        return unityMessage;
    }
}
