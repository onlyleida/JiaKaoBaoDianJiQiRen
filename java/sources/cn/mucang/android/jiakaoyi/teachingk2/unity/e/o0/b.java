package cn.mucang.android.jiakaoyi.teachingk2.unity.e.o0;

import android.app.Activity;
import cn.mucang.android.jiakaoyi.teachingk2.nav.NavigationManager;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.nav.ChoosePathModel;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;

/* JADX INFO: loaded from: classes4.dex */
public class b implements c<ChoosePathModel> {
    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<ChoosePathModel> a(UnityMessage<ChoosePathModel> unityMessage, Activity activity) {
        NavigationManager.m(((ChoosePathModel) unityMessage.data).index);
        return null;
    }
}
