package cn.mucang.android.jiakaoyi.teachingk2.res;

import android.app.Activity;
import android.view.View;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.teachingk2.login.RobotAccount;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.ResLoadModel;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.s;

/* JADX INFO: loaded from: classes4.dex */
public class l implements ResourceManager.b {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void d() {
        ResourceManager.p(this, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void g(View view) {
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.res.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f7583a.d();
            }
        });
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.res.ResourceManager.b
    public void a(ResourceManager.Resource resource, String str) {
        Activity activityI = MucangConfig.i();
        if (activityI == null || activityI.isDestroyed()) {
            return;
        }
        new JCommonDialog(activityI, new JCommonDialog.DialogParams(str, "请确认相关资源是否上传完成", "关闭", new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.res.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RobotAccount.o("ResFail", "");
            }
        }, "重试", new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.res.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f7584a.g(view);
            }
        }, false)).show();
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.res.ResourceManager.b
    public void b(float f2) {
        ResLoadModel resLoadModel = new ResLoadModel();
        resLoadModel.process = f2;
        cn.mucang.android.jiakaoyi.unity.c.d.e(resLoadModel);
        if (f2 >= 1.0f) {
            cn.mucang.android.jiakaoyi.unity.c.d.e(s.c());
        }
    }
}
