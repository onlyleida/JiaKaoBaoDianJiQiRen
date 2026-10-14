package cn.mucang.android.jiakaoyi.teachingk2.unity.e.p0;

import android.app.Activity;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.business.StepSettingManager;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.StepSettingModel;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;

/* JADX INFO: loaded from: classes4.dex */
public class g implements c<StepSettingModel> {
    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<StepSettingModel> a(final UnityMessage<StepSettingModel> unityMessage, Activity activity) {
        T t = unityMessage.data;
        if (((StepSettingModel) t).index >= 0) {
            u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.e.p0.a
                @Override // java.lang.Runnable
                public final void run() {
                    StepSettingManager.e(((StepSettingModel) unityMessage.data).index);
                }
            });
            return null;
        }
        ((StepSettingModel) t).itemList = StepSettingManager.c();
        ((StepSettingModel) unityMessage.data).index = StepSettingManager.b();
        return unityMessage;
    }
}
