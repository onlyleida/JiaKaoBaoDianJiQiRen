package cn.mucang.android.core.webview;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.u;
import cn.mucang.android.core.config.n;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.webview.core.k;
import cn.mucang.android.framework.webview.R;

/* JADX INFO: loaded from: classes.dex */
@k
public class HTML5Activity extends n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private e f2681a;

    private void g() {
        this.f2681a = e.L((HtmlExtra) getIntent().getSerializableExtra("__core__extra_html__"));
        u uVarM = getSupportFragmentManager().m();
        uVarM.b(R.id.fragment_container, this.f2681a);
        uVarM.i();
    }

    public static void i(Context context, HtmlExtra htmlExtra) {
        if (context == null || htmlExtra == null || n0.e(htmlExtra.getOriginUrl())) {
            t.m("HTML5Activity", "context, htmlExtra and extra's url must be not null");
            return;
        }
        Intent intent = new Intent(context, (Class<?>) HTML5Activity.class);
        if (!cn.mucang.android.core.utils.d.c(context)) {
            intent.setFlags(268435456);
        }
        intent.putExtra("__core__extra_html__", htmlExtra);
        context.startActivity(intent);
    }

    public String getStatName() {
        return "木仓HTML";
    }

    protected void h(cn.mucang.android.core.webview.core.d dVar) {
        this.f2681a.D(dVar);
    }

    protected void j(String str) {
        t.a("HTML5Activity", "long pressed, the hint url is " + str);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.f2681a.F();
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.core__activity_html_web_view);
        g();
    }
}
