package cn.mucang.android.jiakaoyi.unity.c;

import android.app.Activity;
import cn.mucang.android.jiakaoyi.unity.communicator.models.MessageModel;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;

/* JADX INFO: loaded from: classes4.dex */
public interface c<T extends MessageModel> {
    UnityMessage<T> a(UnityMessage<T> unityMessage, Activity activity);
}
