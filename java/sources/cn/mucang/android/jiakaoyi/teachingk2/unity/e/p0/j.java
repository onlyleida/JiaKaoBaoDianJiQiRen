package cn.mucang.android.jiakaoyi.teachingk2.unity.e.p0;

import android.app.Activity;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.replay.ReplayStepModel;
import cn.mucang.android.jiakaoyi.teachingk2.trace.TraceApi;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.c.d;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;
import com.alibaba.fastjson.JSON;

/* JADX INFO: loaded from: classes4.dex */
public class j implements c<ReplayStepModel> {
    static /* synthetic */ void b(UnityMessage unityMessage) {
        ReplayStepModel replayStepModel;
        try {
            TraceApi traceApi = new TraceApi();
            T t = unityMessage.data;
            replayStepModel = (ReplayStepModel) JSON.parseObject(traceApi.p(((ReplayStepModel) t).id, ((ReplayStepModel) t).trackId).getTrackFiles(), ReplayStepModel.class);
        } catch (Exception e2) {
            e2.printStackTrace();
            replayStepModel = null;
        }
        if (replayStepModel == null) {
            u.h(k0.a(R.string.teachbase_not_find_back_msg));
        } else {
            d.e(replayStepModel);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<ReplayStepModel> a(final UnityMessage<ReplayStepModel> unityMessage, Activity activity) {
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.e.p0.c
            @Override // java.lang.Runnable
            public final void run() {
                j.b(unityMessage);
            }
        });
        return null;
    }
}
