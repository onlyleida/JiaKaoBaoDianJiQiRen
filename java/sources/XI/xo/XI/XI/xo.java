package XI.xo.XI.XI;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class xo extends BroadcastReceiver {
    /* JADX WARN: Code duplicated, block: B:16:0x0047  */
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        XI xi;
        if (context == null || intent == null) {
            return;
        }
        boolean zContains = false;
        int intExtra = intent.getIntExtra("openIdNotifyFlag", 0);
        String str = "shouldUpdateId, notifyFlag : " + intExtra;
        if (intExtra == 1) {
            if (TextUtils.equals(intent.getStringExtra("openIdPackage"), context.getPackageName())) {
                zContains = true;
            }
        } else if (intExtra == 2) {
            ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra("openIdPackageList");
            if (stringArrayListExtra != null) {
                zContains = stringArrayListExtra.contains(context.getPackageName());
            }
        } else if (intExtra == 0) {
            zContains = true;
        }
        if (zContains) {
            String stringExtra = intent.getStringExtra("openIdType");
            CA caXI = CA.XI();
            caXI.getClass();
            if ("oaid".equals(stringExtra)) {
                xi = caXI.K0;
            } else if ("vaid".equals(stringExtra)) {
                xi = caXI.xo;
            } else if ("aaid".equals(stringExtra)) {
                xi = caXI.kM;
            } else {
                xi = "udid".equals(stringExtra) ? caXI.f15XI : null;
            }
            if (xi == null) {
                return;
            }
            xi.f17XI = 0L;
        }
    }
}
