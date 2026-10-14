package cn.mucang.android.jiakaoyi.teachingk2.unity.e.p0;

import android.app.Activity;
import cn.mucang.android.jiakaoyi.teachingk2.login.RobotAccount;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.UnityTrainListModel;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;

/* JADX INFO: loaded from: classes4.dex */
public class n implements c<UnityTrainListModel> {
    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<UnityTrainListModel> a(UnityMessage<UnityTrainListModel> unityMessage, Activity activity) {
        ((UnityTrainListModel) unityMessage.data).itemList = RobotAccount.g();
        return unityMessage;
    }
}
