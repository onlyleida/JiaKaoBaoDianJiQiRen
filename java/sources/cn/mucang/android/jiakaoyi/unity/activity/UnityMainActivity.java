package cn.mucang.android.jiakaoyi.unity.activity;

import android.content.Context;
import android.os.Bundle;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.f0;
import cn.mucang.android.jiakaoyi.signal.i.b;
import cn.mucang.android.jiakaoyi.unity.c.d;

/* JADX INFO: loaded from: classes4.dex */
public class UnityMainActivity extends a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static b f8795d;

    public String CallFromUnity(String str) {
        return d.a(str, this);
    }

    @Override // androidx.appcompat.app.d, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        f0.a(context);
        super.attachBaseContext(context);
    }

    @Override // cn.mucang.android.jiakaoyi.unity.activity.a, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        d.i();
        d.o(true);
        d.p(true);
        AppUtils.e();
    }

    @Override // cn.mucang.android.jiakaoyi.unity.activity.a, cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        d.o(false);
        d.p(false);
    }

    @Override // cn.mucang.android.jiakaoyi.unity.activity.a, cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onPause() {
        super.onPause();
        d.p(false);
    }

    @Override // cn.mucang.android.jiakaoyi.unity.activity.a, cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        d.p(true);
        d.o(true);
    }
}
