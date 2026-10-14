package cn.mucang.android.account.activity;

import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.TextView;
import cn.mucang.android.account.AccountManager;
import cn.mucang.android.account.third.ThirdBindManager;
import cn.mucang.android.framework.account.R;

/* JADX INFO: loaded from: classes.dex */
public class BindThirdActivity extends l1 {

    class a implements cn.mucang.android.account.i.a {
        a() {
        }

        @Override // cn.mucang.android.account.i.a
        public void a(Throwable th) {
            if (cn.mucang.android.core.utils.d.d(BindThirdActivity.this)) {
                return;
            }
            BindThirdActivity.this.g();
            cn.mucang.android.core.utils.t.b("BindThirdActivity", "onFailed()", th);
            cn.mucang.android.core.utils.u.h("绑定失败，稍后重试");
        }

        @Override // cn.mucang.android.account.i.a
        public void onCancel() {
            if (cn.mucang.android.core.utils.d.d(BindThirdActivity.this)) {
                return;
            }
            BindThirdActivity.this.g();
            cn.mucang.android.core.utils.u.h("取消绑定");
        }

        @Override // cn.mucang.android.account.i.a
        public void onSuccess() {
            if (cn.mucang.android.core.utils.d.d(BindThirdActivity.this)) {
                return;
            }
            BindThirdActivity.this.g();
            cn.mucang.android.core.utils.u.h("绑定成功");
            BindThirdActivity.this.finish();
        }
    }

    private void init() {
        TextView textView = (TextView) findViewById(R.id.giveUpTv);
        textView.getPaint().setFlags(8);
        textView.getPaint().setAntiAlias(true);
        textView.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f2124a.n(view);
            }
        });
        findViewById(R.id.bindIv).setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.account.activity.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f2126a.p(view);
            }
        });
    }

    private void k() {
        finish();
        cn.mucang.android.account.utils.a.onEvent("绑定第三方账号-点击放弃绑定");
    }

    private void l(String str) {
        if (AccountManager.h().g() == null) {
            cn.mucang.android.core.utils.u.h("登录授权已过期，请重新登录");
            return;
        }
        j("请稍等");
        ThirdBindManager.f2301a.F(this, str, new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void n(View view) {
        k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void p(View view) {
        l("weixin");
        cn.mucang.android.account.utils.a.onEvent("绑定第三方账号-点击绑定微信");
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "绑定第三方账号页";
    }

    @Override // cn.mucang.android.account.activity.l1, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.account__activity_bind_third);
        init();
    }

    @Override // androidx.appcompat.app.d, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4) {
            return super.onKeyDown(i, keyEvent);
        }
        k();
        return true;
    }
}
