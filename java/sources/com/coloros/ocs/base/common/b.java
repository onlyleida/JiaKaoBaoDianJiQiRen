package com.coloros.ocs.base.common;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: classes5.dex */
public class b extends Handler {
    public b(Looper looper) {
        super(looper);
    }

    @Override // android.os.Handler
    public void dispatchMessage(Message message) {
        super.dispatchMessage(message);
    }

    public b(Looper looper, Handler.Callback callback) {
        super(looper, callback);
    }
}
