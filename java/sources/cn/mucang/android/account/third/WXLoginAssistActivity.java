package cn.mucang.android.account.third;

import android.content.Context;
import android.os.Bundle;
import com.tencent.mm.opensdk.modelmsg.SendAuth;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;

/* JADX INFO: loaded from: classes.dex */
public class WXLoginAssistActivity extends q {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private IWXAPI f2281d;

    private void h() {
        SendAuth.Req req = new SendAuth.Req();
        req.scope = "snsapi_userinfo";
        req.state = "wechat_sdk_demo_test";
        req.transaction = String.valueOf(this.f14526a);
        this.f2281d.sendReq(req);
        finish();
    }

    public static void i(Context context, long j, String str) {
        q.g(context, WXLoginAssistActivity.class, j, str);
    }

    @Override // cn.mucang.android.account.third.q, f.a.a.p011d.b
    protected void b(Bundle bundle) {
        super.b(bundle);
        IWXAPI iwxapiCreateWXAPI = WXAPIFactory.createWXAPI(this, this.b);
        this.f2281d = iwxapiCreateWXAPI;
        iwxapiCreateWXAPI.registerApp(this.b);
        h();
    }

    @Override // f.a.a.p011d.b
    protected void c() {
        IWXAPI iwxapi = this.f2281d;
        if (iwxapi != null) {
            iwxapi.detach();
        }
    }
}
