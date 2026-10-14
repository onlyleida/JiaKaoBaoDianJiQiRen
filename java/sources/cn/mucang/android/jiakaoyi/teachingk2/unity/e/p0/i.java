package cn.mucang.android.jiakaoyi.teachingk2.unity.e.p0;

import android.app.Activity;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.replay.ReplayMenuModel;
import cn.mucang.android.jiakaoyi.teachingk2.trace.TraceApi;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.a0;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.c.d;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;

/* JADX INFO: loaded from: classes4.dex */
public class i implements c<ReplayMenuModel> {
    static /* synthetic */ void b() {
        try {
            d.e(new ReplayMenuModel(new TraceApi().o(a0.f6363a)));
        } catch (Exception e2) {
            cn.mucang.android.jiakaoyi.teachingk2.p007unity.business.d.a(e2, "获取回放列表失败");
        }
    }

    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<ReplayMenuModel> a(UnityMessage<ReplayMenuModel> unityMessage, Activity activity) {
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.e.p0.b
            @Override // java.lang.Runnable
            public final void run() {
                i.b();
            }
        });
        return null;
    }
}
