package cn.mucang.android.account.one_key_login;

import android.content.Context;
import cn.mucang.android.account.AccountManager;
import cn.mucang.android.account.data.LoginSmsModel;

/* JADX INFO: loaded from: classes.dex */
class n implements j {
    n() {
    }

    @Override // cn.mucang.android.account.one_key_login.j
    public void a(Context context, LoginSmsModel loginSmsModel) {
        AccountManager.h().G(context, loginSmsModel);
    }
}
