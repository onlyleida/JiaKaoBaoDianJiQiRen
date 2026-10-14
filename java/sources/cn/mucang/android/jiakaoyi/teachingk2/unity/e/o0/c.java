package cn.mucang.android.jiakaoyi.teachingk2.unity.e.o0;

import android.app.Activity;
import cn.mucang.android.jiakaoyi.teachingk2.nav.NavigationManager;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.nav.NavigationEndList;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;

/* JADX INFO: loaded from: classes4.dex */
public class c implements cn.mucang.android.jiakaoyi.unity.c.c<NavigationEndList> {
    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<NavigationEndList> a(UnityMessage<NavigationEndList> unityMessage, Activity activity) {
        ((NavigationEndList) unityMessage.data).itemList = NavigationManager.c();
        NavigationManager.q(false);
        return unityMessage;
    }
}
