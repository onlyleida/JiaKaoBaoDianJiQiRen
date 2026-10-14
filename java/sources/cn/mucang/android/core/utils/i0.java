package cn.mucang.android.core.utils;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import cn.mucang.android.core.config.StartServiceBridgeActivity;

/* JADX INFO: loaded from: classes.dex */
public class i0 {
    public static void a(Context context, Intent intent) {
        try {
            context.startService(intent);
        } catch (Exception unused) {
            if (Build.VERSION.SDK_INT >= 26) {
                Intent intent2 = new Intent(context, (Class<?>) StartServiceBridgeActivity.class);
                intent2.putExtra("key.intent", intent);
                if (!(context instanceof Activity)) {
                    intent2.setFlags(268435456);
                }
                context.startActivity(intent2);
            }
        }
    }
}
