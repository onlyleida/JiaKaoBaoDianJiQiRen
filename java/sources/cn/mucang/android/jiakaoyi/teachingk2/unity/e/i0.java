package cn.mucang.android.jiakaoyi.teachingk2.unity.e;

import android.app.Activity;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UserErrorModel;
import cn.mucang.android.jiakaoyi.teachingk2.unity.api.UserDataApi;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.c.d;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;

/* JADX INFO: loaded from: classes4.dex */
public class i0 implements c<UserErrorModel> {
    static /* synthetic */ void b(UnityMessage unityMessage) {
        try {
            d.e(new UserDataApi().n(KeMu.getKeMu(((UserErrorModel) unityMessage.data).kemu)));
        } catch (Exception e2) {
            cn.mucang.android.jiakaoyi.teachingk2.p007unity.business.d.a(e2, "获取数据失败");
        }
    }

    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<UserErrorModel> a(final UnityMessage<UserErrorModel> unityMessage, Activity activity) {
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.e.l
            @Override // java.lang.Runnable
            public final void run() {
                i0.b(unityMessage);
            }
        });
        return null;
    }
}
