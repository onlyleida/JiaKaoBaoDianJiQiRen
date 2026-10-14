package cn.mucang.android.core.utils;

import android.content.Intent;
import android.net.Uri;
import cn.mucang.android.core.config.MucangConfig;

/* JADX INFO: loaded from: classes.dex */
public class r {
    public static void a() {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse("market://details?id=" + MucangConfig.getContext().getPackageName()));
            intent.addFlags(268435456);
            MucangConfig.getContext().startActivity(intent);
        } catch (Exception e2) {
            t.c("默认替换", e2);
            u.h("当前手机不支持应用市场！");
        }
    }
}
