package com.blankj.utilcode.util;

import android.os.Bundle;
import android.os.ResultReceiver;

/* JADX INFO: loaded from: classes5.dex */
final class KeyboardUtils$2 extends ResultReceiver {
    @Override // android.os.ResultReceiver
    protected void onReceiveResult(int i, Bundle bundle) {
        if (i == 0 || i == 2) {
            d.a();
        }
    }
}
