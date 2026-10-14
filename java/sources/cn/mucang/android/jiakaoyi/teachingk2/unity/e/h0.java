package cn.mucang.android.jiakaoyi.teachingk2.unity.e;

import android.app.Activity;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UserAIModel;
import cn.mucang.android.jiakaoyi.teachingk2.unity.api.UserDataApi;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.c.d;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;

/* JADX INFO: loaded from: classes4.dex */
public class h0 implements c<UserAIModel> {
    static /* synthetic */ void b() {
        try {
            d.e(new UserDataApi().m());
        } catch (Exception e2) {
            cn.mucang.android.jiakaoyi.teachingk2.p007unity.business.d.a(e2, "获取数据失败");
        }
    }

    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<UserAIModel> a(UnityMessage<UserAIModel> unityMessage, Activity activity) {
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.e.k
            @Override // java.lang.Runnable
            public final void run() {
                h0.b();
            }
        });
        return null;
    }
}
