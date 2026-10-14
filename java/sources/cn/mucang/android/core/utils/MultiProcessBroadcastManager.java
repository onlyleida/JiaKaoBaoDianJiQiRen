package cn.mucang.android.core.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.system.Os;
import cn.mucang.android.core.config.MucangConfig;
import com.tencent.open.SocialConstants;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.core.utils.w, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u000e\u001a\u00020\u0004J\u0010\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u001c\u0010\u0012\u001a\u00020\u00132\b\b\u0001\u0010\u0014\u001a\u00020\f2\b\b\u0001\u0010\u0010\u001a\u00020\u0011H\u0007J\u0012\u0010\u0015\u001a\u00020\u00162\b\b\u0001\u0010\u0017\u001a\u00020\u0018H\u0007J\u0012\u0010\u0019\u001a\u00020\u00132\b\b\u0001\u0010\u0014\u001a\u00020\fH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n \b*\u0004\u0018\u00010\u00070\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R6\u0010\t\u001a*\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\u0004\u0012\u00020\f0\nj\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\u0004\u0012\u00020\f`\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcn/mucang/android/core/utils/MultiProcessBroadcastManager;", "", "()V", "KEY_PACKAGE_NAME", "", "KEY_PID", "localBroadcastManager", "Landroidx/localbroadcastmanager/content/LocalBroadcastManager;", "kotlin.jvm.PlatformType", "receiverMap", "Ljava/util/HashMap;", "Ljava/lang/ref/WeakReference;", "Landroid/content/BroadcastReceiver;", "Lkotlin/collections/HashMap;", "makePermission", "regGlobalReceiver", "filter", "Landroid/content/IntentFilter;", "registerReceiver", "", SocialConstants.PARAM_RECEIVER, "sendBroadcast", "", "intent", "Landroid/content/Intent;", "unregisterReceiver", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class MultiProcessBroadcastManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final MultiProcessBroadcastManager f2679a = new MultiProcessBroadcastManager();
    private static final androidx.localbroadcastmanager.a.a b = MucangConfig.q();
    private static final HashMap<WeakReference<BroadcastReceiver>, BroadcastReceiver> c = new HashMap<>();

    /* JADX INFO: renamed from: cn.mucang.android.core.utils.w$a */
    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/core/utils/MultiProcessBroadcastManager$regGlobalReceiver$globalReceiver$1", "Landroid/content/BroadcastReceiver;", "onReceive", "", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a extends BroadcastReceiver {
        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(intent, "intent");
            int intExtra = intent.getIntExtra("__mc_core_app_broad_cast_pid__", -1);
            if (intExtra <= 0 || intExtra == Os.getpid()) {
                return;
            }
            String stringExtra = intent.getStringExtra("__mc_core_app_broad_cast_package_name__");
            if ((stringExtra == null || kotlin.text.t.r(stringExtra)) || !kotlin.jvm.internal.r.a(stringExtra, MucangConfig.r())) {
                return;
            }
            Intent intent2 = (Intent) intent.clone();
            intent2.removeExtra("__mc_core_app_broad_cast_pid__");
            intent2.removeExtra("__mc_core_app_broad_cast_package_name__");
            MultiProcessBroadcastManager.b.d(intent2);
            t.d("core", Os.getpid() + " receive broad from pid:" + intExtra + ",action:" + ((Object) intent.getAction()));
        }
    }

    private MultiProcessBroadcastManager() {
    }

    private final BroadcastReceiver c(IntentFilter intentFilter) {
        a aVar = new a();
        MucangConfig.getContext().registerReceiver(aVar, intentFilter, b(), null);
        return aVar;
    }

    public static final void d(BroadcastReceiver receiver, IntentFilter filter) {
        kotlin.jvm.internal.r.e(receiver, "receiver");
        kotlin.jvm.internal.r.e(filter, "filter");
        b.c(receiver, filter);
        c.put(new WeakReference<>(receiver), f2679a.c(filter));
    }

    public static final boolean e(Intent intent) {
        kotlin.jvm.internal.r.e(intent, "intent");
        boolean zD = b.d(intent);
        Intent intent2 = (Intent) intent.clone();
        MultiProcessBroadcastManager multiProcessBroadcastManager = f2679a;
        intent2.putExtra("__mc_core_app_broad_cast_pid__", Os.getpid());
        intent2.putExtra("__mc_core_app_broad_cast_package_name__", MucangConfig.r());
        MucangConfig.getContext().sendBroadcast(intent2, multiProcessBroadcastManager.b());
        return zD;
    }

    public static final void f(BroadcastReceiver receiver) {
        kotlin.jvm.internal.r.e(receiver, "receiver");
        b.e(receiver);
        Iterator<Map.Entry<WeakReference<BroadcastReceiver>, BroadcastReceiver>> it = c.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<WeakReference<BroadcastReceiver>, BroadcastReceiver> next = it.next();
            kotlin.jvm.internal.r.d(next, "it.next()");
            BroadcastReceiver value = next.getValue();
            kotlin.jvm.internal.r.d(value, "item.value");
            BroadcastReceiver broadcastReceiver = value;
            if (kotlin.jvm.internal.r.a(receiver, broadcastReceiver)) {
                it.remove();
                MucangConfig.getContext().unregisterReceiver(broadcastReceiver);
            }
        }
    }

    public final String b() {
        return kotlin.jvm.internal.r.m(MucangConfig.r(), ".app.broadcast.permission");
    }
}
