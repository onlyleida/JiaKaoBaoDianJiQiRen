package cn.mucang.android.jiakaoyi.teachingk2.unity.e.p0;

import android.app.Activity;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.TraceUploadModel;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;

/* JADX INFO: loaded from: classes4.dex */
public class k implements c<TraceUploadModel> {
    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<TraceUploadModel> a(UnityMessage<TraceUploadModel> unityMessage, Activity activity) {
        if (w.s.e() == Boolean.TRUE || w.p()) {
            ((TraceUploadModel) unityMessage.data).state = 1;
        } else {
            ((TraceUploadModel) unityMessage.data).state = 0;
        }
        return unityMessage;
    }
}
