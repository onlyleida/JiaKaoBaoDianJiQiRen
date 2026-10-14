package cn.mucang.android.account.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import cn.mucang.android.core.webview.HTML5Activity;
import cn.mucang.android.core.webview.HtmlExtra;
import com.mobile.auth.gatewayauth.Constant;
import java.util.Map;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0012\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0014¨\u0006\n"}, d2 = {"Lcn/mucang/android/account/activity/LoginHtml5Activity;", "Lcn/mucang/android/core/webview/HTML5Activity;", "()V", "getStatName", "", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "Companion", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LoginHtml5Activity extends HTML5Activity {
    public static final a b = new a(null);

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J$\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0007¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/account/activity/LoginHtml5Activity$Companion;", "", "()V", "launch", "", "activity", "Landroid/app/Activity;", Constant.LOGIN_ACTIVITY_REQUEST_CODE, "", "htmlExtra", "Lcn/mucang/android/core/webview/HtmlExtra;", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Activity activity, int i, HtmlExtra htmlExtra) {
            if (activity == null || htmlExtra == null || !cn.mucang.android.core.utils.n0.g(htmlExtra.getOriginUrl())) {
                cn.mucang.android.core.utils.t.m("HTML5Activity", "context, htmlExtra and extra's url must be not null");
                return;
            }
            Intent intent = new Intent(activity, (Class<?>) LoginHtml5Activity.class);
            intent.putExtra("__core__extra_html__", htmlExtra);
            activity.startActivityForResult(intent, i);
        }
    }

    public static final void m(Activity activity, int i, HtmlExtra htmlExtra) {
        b.a(activity, i, htmlExtra);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String n(LoginHtml5Activity this$0, Map map) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        cn.mucang.android.account.f.h(true);
        this$0.setResult(-1);
        this$0.finish();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String o(LoginHtml5Activity this$0, Map map) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        cn.mucang.android.core.utils.u.h("暂不支持实名认证");
        this$0.finish();
        return null;
    }

    @Override // cn.mucang.android.core.webview.HTML5Activity, cn.mucang.android.core.config.t
    public String getStatName() {
        return "登录-HTML";
    }

    @Override // cn.mucang.android.core.webview.HTML5Activity, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        cn.mucang.android.core.webview.core.d dVar = new cn.mucang.android.core.webview.core.d("auth.luban.mucang.cn");
        dVar.a("certifiedOK", new cn.mucang.android.core.webview.core.d.a() { // from class: cn.mucang.android.account.activity.m0
            @Override // cn.mucang.android.core.webview.core.d.a
            public final String a(Map map) {
                return LoginHtml5Activity.n(this.f2098a, map);
            }
        });
        dVar.a("modifyCertification", new cn.mucang.android.core.webview.core.d.a() { // from class: cn.mucang.android.account.activity.n0
            @Override // cn.mucang.android.core.webview.core.d.a
            public final String a(Map map) {
                return LoginHtml5Activity.o(this.f2100a, map);
            }
        });
        h(dVar);
    }
}
