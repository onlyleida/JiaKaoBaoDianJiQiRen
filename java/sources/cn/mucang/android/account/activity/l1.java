package cn.mucang.android.account.activity;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import cn.mucang.android.account.data.AccountBaseModel;

/* JADX INFO: loaded from: classes.dex */
public abstract class l1 extends cn.mucang.android.core.config.n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private cn.mucang.android.account.ui.a f2096a;
    private AccountBaseModel b;
    private AccountBaseModel c;

    public void g() {
        if (this.f2096a == null) {
            return;
        }
        i().dismiss();
    }

    public AccountBaseModel h() {
        return this.c;
    }

    protected cn.mucang.android.account.ui.a i() {
        if (this.f2096a == null) {
            this.f2096a = new cn.mucang.android.account.ui.a(this);
        }
        return this.f2096a;
    }

    public void j(String str) {
        i().b(str);
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle bundle) {
        Intent intent = getIntent();
        if (intent != null) {
            AccountBaseModel accountBaseModel = (AccountBaseModel) intent.getSerializableExtra("__key_extra_base_model__");
            AccountBaseModel accountBaseModel2 = (AccountBaseModel) intent.getSerializableExtra("__key_extra_model__");
            if (accountBaseModel2 != null) {
                this.c = accountBaseModel2;
                if (accountBaseModel != null) {
                    accountBaseModel2.setSkipAuthRealName(accountBaseModel.isSkipAuthRealName());
                    this.c.setExtraData(accountBaseModel.getExtraData());
                } else {
                    accountBaseModel = accountBaseModel2;
                }
            } else if (accountBaseModel != null) {
                AccountBaseModel accountBaseModel3 = new AccountBaseModel();
                this.c = accountBaseModel3;
                accountBaseModel3.setSkipAuthRealName(accountBaseModel.isSkipAuthRealName());
                this.c.setExtraData(accountBaseModel.getExtraData());
            }
            this.b = accountBaseModel;
        }
        super.onCreate(bundle);
        getWindow().setBackgroundDrawable(new ColorDrawable(-1));
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        cn.mucang.android.core.utils.k.b(this.f2096a);
        this.f2096a = null;
    }

    @Override // android.app.Activity, android.content.ContextWrapper, android.content.Context
    public void startActivity(Intent intent) {
        AccountBaseModel accountBaseModel = this.b;
        if (accountBaseModel != null) {
            intent.putExtra("__key_extra_base_model__", accountBaseModel);
        }
        super.startActivity(intent);
    }
}
