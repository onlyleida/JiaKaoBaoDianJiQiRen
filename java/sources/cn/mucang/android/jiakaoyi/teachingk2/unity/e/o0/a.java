package cn.mucang.android.jiakaoyi.teachingk2.unity.e.o0;

import android.app.Activity;
import cn.mucang.android.jiakaoyi.teachingk2.nav.NavigationManager;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.nav.NavigationEnd;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;

/* JADX INFO: loaded from: classes4.dex */
public class a implements c<NavigationEnd> {
    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<NavigationEnd> a(UnityMessage<NavigationEnd> unityMessage, Activity activity) {
        NavigationManager.d((NavigationEnd) unityMessage.data);
        return null;
    }
}
