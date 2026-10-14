package cn.mucang.android.jiakaoyi.teachingk2.unity.e;

import android.app.Activity;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.business.h;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UnityResUpgradeModel;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class e0 implements c<UnityResUpgradeModel> {
    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<UnityResUpgradeModel> a(UnityMessage<UnityResUpgradeModel> unityMessage, Activity activity) {
        UnityResUpgradeModel unityResUpgradeModel = new UnityResUpgradeModel();
        Map<String, String> mapI = h.i();
        if (!g.e(mapI)) {
            return null;
        }
        unityResUpgradeModel.pathMap = mapI;
        return new UnityMessage<>(unityResUpgradeModel);
    }
}
