package cn.mucang.android.jiakaoyi.teachingk2.safe.floatwindow;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.safe.floatwindow.f, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\fH\u0002J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\bH\u0007J\b\u0010\u000e\u001a\u00020\nH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatWindowManager;", "", "()V", "TAG", "", "hasPermission", "", "activity", "Landroid/app/Activity;", "requestPermission", "", "intent", "Landroid/content/Intent;", TtmlNode.START, "stop", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class FloatWindowManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final FloatWindowManager f7712a = new FloatWindowManager();

    private FloatWindowManager() {
    }

    private final boolean a(Activity activity) {
        if (Build.VERSION.SDK_INT >= 23) {
            return Settings.canDrawOverlays(activity);
        }
        return true;
    }

    private final void c(final Activity activity, Intent intent) {
        if (a(activity)) {
            activity.startService(new Intent(activity, (Class<?>) FloatSafeAlterViewService.class));
        } else {
            f.a.a.a.j.a.a(activity).c(intent, 1, new f.a.a.a.j.c() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.floatwindow.e
                @Override // f.a.a.a.j.c
                public final void onActivityResult(int i, int i2, Intent intent2) {
                    FloatWindowManager.d(activity, i, i2, intent2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(Activity activity, int i, int i2, Intent intent) {
        r.e(activity, "$activity");
        if (!f7712a.a(activity)) {
            u.h(k0.a(R.string.teachbase_auth_fail));
        } else {
            u.h(k0.a(R.string.teachbase_auth_success));
            activity.startService(new Intent(activity, (Class<?>) FloatSafeAlterViewService.class));
        }
    }

    @SuppressLint({"InlinedApi"})
    public static final void e(Activity activity) {
        r.e(activity, "activity");
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            f7712a.c(activity, new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION"));
        } else {
            if (i < 23) {
                activity.startService(new Intent(activity, (Class<?>) FloatSafeAlterViewService.class));
                return;
            }
            Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION");
            intent.setData(Uri.parse(r.m("package:", MucangConfig.r())));
            f7712a.c(activity, intent);
        }
    }

    public static final void f() {
        MucangConfig.getContext().stopService(new Intent(MucangConfig.getContext(), (Class<?>) FloatSafeAlterViewService.class));
    }
}
