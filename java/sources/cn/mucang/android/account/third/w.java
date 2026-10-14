package cn.mucang.android.account.third;

import android.app.Activity;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.o0;
import com.tencent.connect.common.Constants;
import com.tencent.tauth.Tencent;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class w implements u {
    @Override // cn.mucang.android.account.third.u
    public String a() {
        return "qq";
    }

    @Override // cn.mucang.android.account.third.u
    public void b(Activity activity, s sVar) {
        QQLoginAssistActivity.k(activity, cn.mucang.android.core.utils.i.c().f(sVar), g());
    }

    @Override // cn.mucang.android.account.third.u
    public void c() {
        Tencent tencentCreateInstance = Tencent.createInstance(g(), MucangConfig.getContext());
        if (tencentCreateInstance != null) {
            tencentCreateInstance.logout(MucangConfig.getContext());
        }
    }

    @Override // cn.mucang.android.account.third.u
    public String d() {
        return "正在使用QQ登录";
    }

    @Override // cn.mucang.android.account.third.u
    public /* synthetic */ Map e() {
        return t.a(this);
    }

    @Override // cn.mucang.android.account.third.u
    public String f() {
        return "qq-space";
    }

    @Override // cn.mucang.android.account.third.u
    public String g() {
        return o0.n("qq_share_appKey", true);
    }

    @Override // cn.mucang.android.account.third.u
    public String getName() {
        return Constants.SOURCE_QQ;
    }
}
