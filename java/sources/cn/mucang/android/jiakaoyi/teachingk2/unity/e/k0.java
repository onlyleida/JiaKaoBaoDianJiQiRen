package cn.mucang.android.jiakaoyi.teachingk2.unity.e;

import android.app.Activity;
import android.os.Environment;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.VideoDataModel;
import cn.mucang.android.jiakaoyi.teachingk2.unity.api.VideoListApi;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.c.d;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;
import java.io.File;

/* JADX INFO: loaded from: classes4.dex */
public class k0 implements c<VideoDataModel> {
    private String b() {
        File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath(), "videoRes");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file.getAbsolutePath();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void d() {
        try {
            VideoDataModel videoDataModel = new VideoDataModel();
            videoDataModel.itemList = new VideoListApi().m();
            videoDataModel.path = b();
            d.e(videoDataModel);
        } catch (Exception unused) {
            u.h(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_get_backlist_fail));
        }
    }

    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<VideoDataModel> a(UnityMessage<VideoDataModel> unityMessage, Activity activity) {
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.e.m
            @Override // java.lang.Runnable
            public final void run() {
                this.f6376a.d();
            }
        });
        return null;
    }
}
