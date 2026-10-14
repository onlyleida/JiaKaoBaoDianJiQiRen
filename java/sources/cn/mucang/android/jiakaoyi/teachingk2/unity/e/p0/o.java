package cn.mucang.android.jiakaoyi.teachingk2.unity.e.p0;

import android.app.Activity;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.UserTrainModel;
import cn.mucang.android.jiakaoyi.teachingk2.unity.api.UserDataApi;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.c.d;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;

/* JADX INFO: loaded from: classes4.dex */
public class o implements c<UserTrainModel> {
    static /* synthetic */ void b(UnityMessage unityMessage) {
        try {
            d.e(new UserDataApi().q(KeMu.getKeMu(((UserTrainModel) unityMessage.data).kemu)));
        } catch (Exception e2) {
            cn.mucang.android.jiakaoyi.teachingk2.p007unity.business.d.a(e2, "获取数据失败");
        }
    }

    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<UserTrainModel> a(final UnityMessage<UserTrainModel> unityMessage, Activity activity) {
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.e.p0.d
            @Override // java.lang.Runnable
            public final void run() {
                o.b(unityMessage);
            }
        });
        return null;
    }
}
