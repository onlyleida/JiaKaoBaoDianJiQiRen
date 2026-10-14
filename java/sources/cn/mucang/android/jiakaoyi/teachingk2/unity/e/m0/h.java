package cn.mucang.android.jiakaoyi.teachingk2.unity.e.m0;

import android.app.Activity;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.trace.TraceCacheManager;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.replay.ReplayExamModel;
import cn.mucang.android.jiakaoyi.teachingk2.trace.TraceApi;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.c.d;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;
import com.alibaba.fastjson.JSON;

/* JADX INFO: loaded from: classes4.dex */
public class h implements c<ReplayExamModel> {
    static /* synthetic */ void b(UnityMessage unityMessage) {
        if (!n0.e(((ReplayExamModel) unityMessage.data).trackId)) {
            try {
                d.e((ReplayExamModel) JSON.parseObject(new TraceApi().m(((ReplayExamModel) unityMessage.data).trackId).getTrackFiles(), ReplayExamModel.class));
            } catch (Exception unused) {
                u.h(k0.a(R.string.teachbase_miss_trace_data));
            }
        } else {
            if (!TraceCacheManager.b()) {
                u.h(k0.a(R.string.teachbase_miss_trace_data));
                return;
            }
            ReplayExamModel replayExamModel = new ReplayExamModel();
            replayExamModel.setData();
            d.e(replayExamModel);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<ReplayExamModel> a(final UnityMessage<ReplayExamModel> unityMessage, Activity activity) {
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.e.m0.d
            @Override // java.lang.Runnable
            public final void run() {
                h.b(unityMessage);
            }
        });
        return null;
    }
}
