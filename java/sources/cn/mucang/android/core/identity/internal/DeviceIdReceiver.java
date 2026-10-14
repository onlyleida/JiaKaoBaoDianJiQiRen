package cn.mucang.android.core.identity.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import cn.mucang.android.core.utils.MiscUtils;
import cn.mucang.android.core.utils.n0;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class DeviceIdReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Uri data = intent.getData();
        if (data == null) {
            return;
        }
        String queryParameter = data.getQueryParameter("deviceId");
        String queryParameter2 = data.getQueryParameter("from");
        boolean zO = MiscUtils.o(data.getQueryParameter("permission"), false);
        if (Objects.equals(queryParameter2, context.getPackageName()) || n0.e(queryParameter)) {
            return;
        }
        DeviceIdUtil.q(queryParameter, zO);
    }
}
