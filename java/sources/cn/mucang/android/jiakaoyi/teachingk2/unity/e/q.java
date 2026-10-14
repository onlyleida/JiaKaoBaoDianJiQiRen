package cn.mucang.android.jiakaoyi.teachingk2.unity.e;

import android.app.Activity;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.business.VideoDownloadInformer;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.DownloadProgressModel;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;

/* JADX INFO: loaded from: classes4.dex */
public class q implements c<DownloadProgressModel> {
    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<DownloadProgressModel> a(final UnityMessage<DownloadProgressModel> unityMessage, Activity activity) {
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.e.b
            @Override // java.lang.Runnable
            public final void run() {
                VideoDownloadInformer.b(((DownloadProgressModel) unityMessage.data).progress);
            }
        });
        return null;
    }
}
