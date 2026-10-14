package cn.mucang.android.core.permission.setting;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.core.permission.setting.p, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\n\u0010\b\u001a\u0004\u0018\u00010\tH\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\n"}, d2 = {"Lcn/mucang/android/core/permission/setting/ViVo;", "Lcn/mucang/android/core/permission/setting/BaseSetting;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "getContext", "()Landroid/content/Context;", "setContext", "getSetting", "Landroid/content/Intent;", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ViVo implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f2618a;

    public ViVo(Context context) {
        r.e(context, "context");
        this.f2618a = context;
    }

    @Override // cn.mucang.android.core.permission.setting.k
    public Intent a() {
        if (Build.VERSION.SDK_INT < 23) {
            return this.f2618a.getPackageManager().getLaunchIntentForPackage("com.iqoo.secure");
        }
        Intent intent = new Intent();
        intent.addFlags(268435456);
        intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", this.f2618a.getPackageName(), null));
        return intent;
    }
}
