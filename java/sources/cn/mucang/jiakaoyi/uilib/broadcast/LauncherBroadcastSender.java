package cn.mucang.jiakaoyi.uilib.broadcast;

import android.content.ComponentName;
import android.content.Intent;
import cn.mucang.android.core.config.MucangConfig;
import com.alibaba.fastjson.JSON;
import com.tencent.tauth.AuthActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.j.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u0001R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/broadcast/LauncherBroadcastSender;", "", "()V", "CLICK_EVENT", "", AuthActivity.ACTION_KEY, "", "launcherName", "launcherReceiver", "send", "", "eventId", "model", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LauncherBroadcastSender {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LauncherBroadcastSender f9341a = new LauncherBroadcastSender();

    private LauncherBroadcastSender() {
    }

    public final void a(int i, Object model) {
        r.e(model, "model");
        Intent intent = new Intent("cn.mucang.android.launcher.action");
        String packageName = MucangConfig.getContext().getPackageName();
        intent.setPackage("cn.mucang.android.launcher");
        intent.setComponent(new ComponentName("cn.mucang.android.launcher", "cn.mucang.android.launcher.ui.receiver.McLauncherBroadcastReceiver"));
        intent.putExtra("data", JSON.toJSONString(model));
        intent.putExtra("package", packageName);
        intent.putExtra("eventId", i);
        MucangConfig.getContext().sendBroadcast(intent);
    }
}
