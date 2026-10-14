package cn.mucang.android.core.ui.page;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.u;
import cn.mucang.android.core.config.n;
import cn.mucang.android.framework.webview.R;
import cn.mucang.sundial.android.tcp.data.gnss.AlarmInfo;

/* JADX INFO: loaded from: classes.dex */
public class PageActivity extends n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f2622a;
    private cn.mucang.android.core.webview.b b;

    public static void g(Context context, PageAppConfig pageAppConfig, Class<? extends b> cls, PageArgument pageArgument) {
        Intent intent = new Intent(context, (Class<?>) PageActivity.class);
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        intent.putExtra("__app_config", pageAppConfig);
        intent.putExtra("__page_class", cls);
        intent.putExtra("__page_argument", pageArgument);
        context.startActivity(intent);
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, R.anim.core__activity_out);
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "Page宿主页面";
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.f2622a.s();
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().addFlags(AlarmInfo.VEHICLE_STOLEN);
        setContentView(R.layout.core__activity_page);
        Intent intent = getIntent();
        this.f2622a = c.u((PageAppConfig) intent.getSerializableExtra("__app_config"), (Class) intent.getSerializableExtra("__page_class"), (PageArgument) intent.getSerializableExtra("__page_argument"));
        u uVarM = getSupportFragmentManager().m();
        uVarM.b(R.id.fragment_container, this.f2622a);
        uVarM.i();
        this.b = new cn.mucang.android.core.webview.b(this);
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.b.d();
    }
}
