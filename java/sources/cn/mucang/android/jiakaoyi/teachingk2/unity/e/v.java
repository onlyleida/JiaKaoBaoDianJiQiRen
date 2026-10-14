package cn.mucang.android.jiakaoyi.teachingk2.unity.e;

import android.app.Activity;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UnityExceptionModel;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;

/* JADX INFO: loaded from: classes4.dex */
public class v implements c<UnityExceptionModel> {
    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<UnityExceptionModel> a(UnityMessage<UnityExceptionModel> unityMessage, Activity activity) {
        String str = ((UnityExceptionModel) unityMessage.data).log;
        if (!n0.g(str)) {
            return null;
        }
        f.o("unity错误:" + str);
        return null;
    }
}
