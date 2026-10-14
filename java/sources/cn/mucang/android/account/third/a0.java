package cn.mucang.android.account.third;

import android.app.Activity;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.o0;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class a0 implements u {
    @Override // cn.mucang.android.account.third.u
    public String a() {
        return "微信";
    }

    @Override // cn.mucang.android.account.third.u
    public void b(Activity activity, s sVar) {
        if (o0.b("com.tencent.mm")) {
            WXLoginAssistActivity.i(activity, cn.mucang.android.core.utils.i.c().f(sVar), g());
        } else {
            cn.mucang.android.core.utils.u.h("未安装微信客户端！！");
        }
    }

    @Override // cn.mucang.android.account.third.u
    public void c() {
        WXAPIFactory.createWXAPI(MucangConfig.getContext(), g()).unregisterApp();
    }

    @Override // cn.mucang.android.account.third.u
    public String d() {
        return "正在使用微信登录";
    }

    @Override // cn.mucang.android.account.third.u
    public /* synthetic */ Map e() {
        return t.a(this);
    }

    @Override // cn.mucang.android.account.third.u
    public String f() {
        return "weixin";
    }

    @Override // cn.mucang.android.account.third.u
    public String g() {
        return o0.n("wechat_share_appKey", true);
    }

    @Override // cn.mucang.android.account.third.u
    public String getName() {
        return "微信";
    }
}
