package cn.mucang.android.jiakaoyi.teachingk2.unity.e;

import android.app.Activity;
import cn.mucang.android.jiakaoyi.signal.Tiger;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UnityRecordModel;
import cn.mucang.android.jiakaoyi.teachingk2.record.UserRecorder;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;

/* JADX INFO: loaded from: classes4.dex */
public class c0 implements c<UnityRecordModel> {
    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<UnityRecordModel> a(UnityMessage<UnityRecordModel> unityMessage, Activity activity) {
        T t = unityMessage.data;
        UserRecorder.h(((UnityRecordModel) t).c, (UnityRecordModel) t);
        Tiger.h(unityMessage.data);
        return null;
    }
}
