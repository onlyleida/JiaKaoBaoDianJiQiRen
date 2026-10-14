package cn.mucang.android.jiakaoyi.teachingk2.unity.e;

import android.app.Activity;
import cn.mucang.android.jiakaoyi.teachingk2.assist.ctrspeed.CtrSpeedAssistMgr;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.CtrSpeedAssistModel;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;

/* JADX INFO: loaded from: classes4.dex */
public class p implements c<CtrSpeedAssistModel> {
    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<CtrSpeedAssistModel> a(UnityMessage<CtrSpeedAssistModel> unityMessage, Activity activity) {
        if (((CtrSpeedAssistModel) unityMessage.data).state == 1) {
            CtrSpeedAssistMgr.f6128e.k0();
        }
        return unityMessage;
    }
}
