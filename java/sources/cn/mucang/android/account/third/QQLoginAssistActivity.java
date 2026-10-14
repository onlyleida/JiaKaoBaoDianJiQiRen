package cn.mucang.android.account.third;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import cn.mucang.android.account.api.data.Gender;
import cn.mucang.android.account.data.MCUserInfo;
import com.tencent.connect.UserInfo;
import com.tencent.connect.auth.QQToken;
import com.tencent.connect.common.Constants;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.Tencent;
import com.tencent.tauth.UiError;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class QQLoginAssistActivity extends q implements IUiListener {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Tencent f2279d;

    class a implements IUiListener {
        a() {
        }

        @Override // com.tencent.tauth.IUiListener
        public void onCancel() {
            QQLoginAssistActivity.this.d();
        }

        @Override // com.tencent.tauth.IUiListener
        public void onComplete(Object obj) {
            QQLoginAssistActivity.this.l((JSONObject) obj);
        }

        @Override // com.tencent.tauth.IUiListener
        public void onError(UiError uiError) {
            QQLoginAssistActivity.this.a(uiError.errorCode, new Exception(uiError.errorMessage));
        }

        @Override // com.tencent.tauth.IUiListener
        public void onWarning(int i) {
            cn.mucang.android.core.utils.t.a("QQAssistActivity", "需要用FileProvider来获取数据");
            QQLoginAssistActivity.this.a(i, new Exception("需要用FileProvider来获取数据"));
        }
    }

    private void i() {
        this.f2279d.login(this, "all", this);
    }

    private void j(JSONObject jSONObject) {
        if (m(jSONObject)) {
            new UserInfo(this, this.f2279d.getQQToken()).getUserInfo(new a());
        } else {
            a(-2, new Exception("fail to update client info"));
        }
    }

    public static void k(Context context, long j, String str) {
        q.g(context, QQLoginAssistActivity.class, j, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(JSONObject jSONObject) {
        QQToken qQToken = this.f2279d.getQQToken();
        MCUserInfo mCUserInfo = new MCUserInfo();
        mCUserInfo.setAccessToken(qQToken.getAccessToken()).setOpenId(qQToken.getOpenId()).setNickname(jSONObject.optString("nickname")).setAvatar(jSONObject.optString("figureurl_qq_2")).setGender("男".equals(jSONObject.optString("gender")) ? Gender.Male : Gender.Female);
        f(mCUserInfo);
    }

    private boolean m(JSONObject jSONObject) {
        String strOptString = jSONObject.optString(Constants.PARAM_ACCESS_TOKEN, "");
        String strOptString2 = jSONObject.optString(Constants.PARAM_EXPIRES_IN, "");
        String strOptString3 = jSONObject.optString("openid", "");
        if (TextUtils.isEmpty(strOptString) || TextUtils.isEmpty(strOptString2) || TextUtils.isEmpty(strOptString3)) {
            return false;
        }
        this.f2279d.setAccessToken(strOptString, strOptString2);
        this.f2279d.setOpenId(strOptString3);
        return true;
    }

    @Override // cn.mucang.android.account.third.q, f.a.a.p011d.b
    protected void b(Bundle bundle) {
        super.b(bundle);
        if (Build.VERSION.SDK_INT >= 24) {
            this.f2279d = Tencent.createInstance(this.b, this, getPackageName() + ".file.provider");
        } else {
            this.f2279d = Tencent.createInstance(this.b, this);
        }
        if (this.f2279d == null) {
            a(-2, new NullPointerException("fail to create Tencent Instance"));
        } else {
            i();
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        Tencent.onActivityResultData(i, i2, intent, this);
    }

    @Override // com.tencent.tauth.IUiListener
    public void onCancel() {
        d();
    }

    @Override // com.tencent.tauth.IUiListener
    public void onComplete(Object obj) {
        j((JSONObject) obj);
    }

    @Override // com.tencent.tauth.IUiListener
    public void onError(UiError uiError) {
        a(uiError.errorCode, new Exception(uiError.errorMessage));
    }

    @Override // com.tencent.tauth.IUiListener
    public void onWarning(int i) {
        cn.mucang.android.core.utils.t.a("QQAssistActivity", "需要用FileProvider来分享数据");
        a(i, new Exception("需要用FileProvider来分享数据"));
    }
}
