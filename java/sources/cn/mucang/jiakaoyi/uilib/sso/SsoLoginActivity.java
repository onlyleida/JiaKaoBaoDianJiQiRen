package cn.mucang.jiakaoyi.uilib.sso;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import androidx.lifecycle.a0;
import androidx.lifecycle.m0;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.p002e.SsoBaseApi;
import cn.mucang.jiakaoyi.uilib.login.LoginManager;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.iflytek.cloud.SpeechUtility;
import com.mucang.android.jiakaoyi.uilib.databinding.ActivityLoginSsoBinding;
import kotlin.Metadata;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \r2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\rB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\b\u0010\b\u001a\u00020\tH\u0014J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\fH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityLoginSsoBinding;", "()V", "ssoLoginViewModel", "Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;", "getStatName", "", "init", "", "scanFinish", SpeechUtility.TAG_RESOURCE_RESULT, "Lcn/mucang/jiakaoyi/uilib/sso/SsoUserModel;", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SsoLoginActivity extends BaseViewBindingActivity<ActivityLoginSsoBinding> {
    public static final a c = new a(null);
    private SsoLoginViewModel b;

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\nH\u0007J \u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\nH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginActivity$Companion;", "", "()V", "KEY_TOKEN", "", "launchForResult", "", "activity", "Landroid/app/Activity;", "cb", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", TtmlNode.START, "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void e(Activity activity, cn.mucang.android.jiakaoyi.framework.h.b bVar, View view) {
            kotlin.jvm.internal.r.e(activity, "$activity");
            SsoLoginActivity.c.g(activity, bVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void f(Activity activity, View view) {
            kotlin.jvm.internal.r.e(activity, "$activity");
            LoginManager.f9357a.B(activity);
        }

        private final void g(Activity activity, final cn.mucang.android.jiakaoyi.framework.h.b<String> bVar) {
            f.a.a.a.j.a.a(activity).c(new Intent(activity, (Class<?>) SsoLoginActivity.class), 101, new f.a.a.a.j.c() { // from class: cn.mucang.jiakaoyi.uilib.sso.d
                @Override // f.a.a.a.j.c
                public final void onActivityResult(int i, int i2, Intent intent) {
                    SsoLoginActivity.a.h(bVar, i, i2, intent);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void h(cn.mucang.android.jiakaoyi.framework.h.b bVar, int i, int i2, Intent intent) {
            if (i2 == -1) {
                String stringExtra = intent == null ? null : intent.getStringExtra("ssoToken");
                if (bVar == null) {
                    return;
                }
                bVar.callback(stringExtra);
            }
        }

        public final void d(final Activity activity, final cn.mucang.android.jiakaoyi.framework.h.b<String> bVar) {
            kotlin.jvm.internal.r.e(activity, "activity");
            if (SsoBaseApi.f3442e.a().e() != null) {
                new JCommonDialog(activity, new JCommonDialog.DialogParams("实施登录确认", "检测到已扫码登录，是否直接登录？", "取消", new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.sso.c
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        SsoLoginActivity.a.e(activity, bVar, view);
                    }
                }, "确定", new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.sso.b
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        SsoLoginActivity.a.f(activity, view);
                    }
                }, false)).show();
            } else {
                g(activity, bVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(SsoLoginActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        SsoLoginViewModel ssoLoginViewModel = this$0.b;
        if (ssoLoginViewModel != null) {
            ssoLoginViewModel.p();
        } else {
            kotlin.jvm.internal.r.u("ssoLoginViewModel");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(SsoLoginActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(SsoLoginActivity this$0, SsoUserModel result) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int status = result.getStatus();
        if (status == 0) {
            this$0.g().tipTv.setText("请使用微信或钉钉扫码");
            return;
        }
        if (status == 1) {
            this$0.g().tipTv.setText("请在钉钉或微信上确认登录");
            return;
        }
        if (status == 3) {
            this$0.g().qrCodeErrorFl.setVisibility(0);
            this$0.g().tipTv.setText("二维码已过期，请点击生成二维码");
        } else if (status == 4) {
            this$0.g().qrCodeErrorFl.setVisibility(0);
            this$0.g().tipTv.setText("已取消登录，请点击生成二维码");
        } else {
            this$0.g().qrCodeErrorFl.setVisibility(0);
            kotlin.jvm.internal.r.d(result, "result");
            this$0.t(result);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(SsoLoginActivity this$0, ErrorStatus errorStatus) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.g().qrCodeErrorFl.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(SsoLoginActivity this$0, SsoLoginModel ssoLoginModel) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlinx.coroutines.g.b(j0.a(w0.b()), null, null, new SsoLoginActivity$init$5$1(ssoLoginModel, this$0, null), 3, null);
    }

    private final void t(SsoUserModel ssoUserModel) {
        Intent intent = new Intent();
        intent.putExtra("ssoToken", ssoUserModel.getUserToken());
        setResult(-1, intent);
        finish();
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "Sso 登录";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        androidx.lifecycle.j0 j0VarA = new m0(this).a(SsoLoginViewModel.class);
        kotlin.jvm.internal.r.d(j0VarA, "ViewModelProvider(this).…ginViewModel::class.java)");
        this.b = (SsoLoginViewModel) j0VarA;
        g().qrCodeErrorFl.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.sso.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SsoLoginActivity.j(this.f9752a, view);
            }
        });
        g().backTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.sso.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SsoLoginActivity.k(this.f9754a, view);
            }
        });
        SsoLoginViewModel ssoLoginViewModel = this.b;
        if (ssoLoginViewModel == null) {
            kotlin.jvm.internal.r.u("ssoLoginViewModel");
            throw null;
        }
        ssoLoginViewModel.p();
        SsoLoginViewModel ssoLoginViewModel2 = this.b;
        if (ssoLoginViewModel2 == null) {
            kotlin.jvm.internal.r.u("ssoLoginViewModel");
            throw null;
        }
        ssoLoginViewModel2.o().h(this, new a0() { // from class: cn.mucang.jiakaoyi.uilib.sso.e
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                SsoLoginActivity.l(this.f9751a, (SsoUserModel) obj);
            }
        });
        SsoLoginViewModel ssoLoginViewModel3 = this.b;
        if (ssoLoginViewModel3 == null) {
            kotlin.jvm.internal.r.u("ssoLoginViewModel");
            throw null;
        }
        ssoLoginViewModel3.m().h(this, new a0() { // from class: cn.mucang.jiakaoyi.uilib.sso.a
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                SsoLoginActivity.m(this.f9747a, (ErrorStatus) obj);
            }
        });
        SsoLoginViewModel ssoLoginViewModel4 = this.b;
        if (ssoLoginViewModel4 != null) {
            ssoLoginViewModel4.n().h(this, new a0() { // from class: cn.mucang.jiakaoyi.uilib.sso.g
                @Override // androidx.lifecycle.a0
                public final void onChanged(Object obj) {
                    SsoLoginActivity.n(this.f9753a, (SsoLoginModel) obj);
                }
            });
        } else {
            kotlin.jvm.internal.r.u("ssoLoginViewModel");
            throw null;
        }
    }
}
