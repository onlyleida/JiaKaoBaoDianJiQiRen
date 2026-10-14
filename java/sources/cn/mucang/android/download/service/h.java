package cn.mucang.android.download.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import cn.mucang.android.core.utils.i0;
import cn.mucang.android.core.utils.x;
import cn.mucang.android.core.utils.z;
import com.serenegiant.net.NetworkChangedReceiver;

/* JADX INFO: loaded from: classes.dex */
public class h extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (NetworkChangedReceiver.ACTION_GLOBAL_CONNECTIVITY_CHANGE.equals(intent.getAction()) && z.a("android.permission.ACCESS_NETWORK_STATE") && x.e()) {
            Intent intent2 = new Intent(context, (Class<?>) DownloadService.class);
            intent2.setAction("ACTION_NETWORK_CHANGE");
            i0.a(context, intent2);
        }
    }
}
