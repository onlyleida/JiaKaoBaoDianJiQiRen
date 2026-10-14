package cn.mucang.android.jiakaoyi.framework.utils;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.media.AudioManager;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.utils.l, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007J\"\u0010\u0007\u001a\u00020\b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\bH\u0007J\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000fH\u0007¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/utils/ActivityUtils;", "", "()V", "getActivity", "Landroid/app/Activity;", "context", "Landroid/content/Context;", "setVolume", "", "percent", "", "force", "startIntent", "", "intent", "Landroid/content/Intent;", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ActivityUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ActivityUtils f3621a = new ActivityUtils();

    private ActivityUtils() {
    }

    public static final Activity a(Context context) {
        while (context != null) {
            if (!(context instanceof Activity)) {
                if (!(context instanceof ContextWrapper)) {
                    break;
                }
                context = ((ContextWrapper) context).getBaseContext();
            } else {
                return (Activity) context;
            }
        }
        return null;
    }

    public static final boolean b(Context context, int i, boolean z) {
        Object systemService = context == null ? null : context.getSystemService("audio");
        AudioManager audioManager = systemService instanceof AudioManager ? (AudioManager) systemService : null;
        if (audioManager == null) {
            return false;
        }
        int streamMaxVolume = audioManager.getStreamMaxVolume(3);
        int streamVolume = audioManager.getStreamVolume(3);
        int iA = kotlin.y.c.a((((double) streamMaxVolume) / 100.0d) * ((double) i));
        cn.mucang.android.jiakaoyi.framework.log.f.o("设置音量, percent:" + i + ", max:" + streamMaxVolume + ", current:" + streamVolume + ", middle:" + iA + ", " + z);
        if (!z && streamVolume >= iA) {
            return false;
        }
        audioManager.setStreamVolume(3, iA, 1);
        return true;
    }

    public static final void c(Context context, Intent intent) {
        kotlin.v vVar;
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(intent, "intent");
        Activity activityA = a(context);
        if (activityA == null) {
            vVar = null;
        } else {
            activityA.startActivity(intent);
            vVar = kotlin.v.f15822a;
        }
        if (vVar == null) {
            intent.addFlags(268435456);
            context.startActivity(intent);
        }
    }
}
