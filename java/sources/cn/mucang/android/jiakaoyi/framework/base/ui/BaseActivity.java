package cn.mucang.android.jiakaoyi.framework.base.ui;

import android.content.ComponentCallbacks2;
import android.os.Bundle;
import cn.mucang.android.core.config.n;
import cn.mucang.android.jiakaoyi.framework.b;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import com.noober.background.BackgroundLibrary;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.base.m.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;", "Lcn/mucang/android/core/config/MucangActivity;", "()V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public abstract class BaseActivity extends n {
    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        BackgroundLibrary.inject2(this);
        AppUtils.o();
        ComponentCallbacks2 application = getApplication();
        b bVar = application instanceof b ? (b) application : null;
        if (bVar == null) {
            return;
        }
        bVar.m();
    }
}
