package cn.mucang.android.jiakaoyi.teachingk2.unity.e;

import android.app.Activity;
import android.view.View;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.dialog.CommonAlertDialog;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.business.h;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.communicator.models.MessageModel;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;
import cn.mucang.jiakaoyi.uilib.e;

/* JADX INFO: loaded from: classes4.dex */
public class d0 implements c<MessageModel> {
    static /* synthetic */ void b(final Activity activity) {
        if (activity.isFinishing() || activity.isDestroyed()) {
            return;
        }
        CommonAlertDialog.a aVar = new CommonAlertDialog.a(activity);
        aVar.e(k0.a(R.string.teachbase_kind_tips));
        aVar.d(k0.a(R.string.teachbase_res_loading_failed));
        aVar.c(k0.a(R.string.teachbase_quit));
        aVar.b(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.e.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ((e) activity.getApplication()).c();
            }
        });
        aVar.a().show();
    }

    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<MessageModel> a(UnityMessage<MessageModel> unityMessage, final Activity activity) {
        f.o("unity资源加载错误，删除旧资源");
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.e.i
            @Override // java.lang.Runnable
            public final void run() {
                d0.b(activity);
            }
        });
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.e.o
            @Override // java.lang.Runnable
            public final void run() {
                h.a();
            }
        });
        return null;
    }
}
