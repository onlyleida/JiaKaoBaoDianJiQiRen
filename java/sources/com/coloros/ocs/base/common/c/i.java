package com.coloros.ocs.base.common.c;

import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: classes5.dex */
class i extends com.coloros.ocs.base.common.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f11685a;
    private h b;
    f c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    e f11686d;

    i(Looper looper, h hVar) {
        super(looper);
        this.f11685a = i.class.getSimpleName();
        this.b = hVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        g.b.a.a.c.a.d(this.f11685a, "business handler what ".concat(String.valueOf(i)));
        if (i == 100) {
            f fVar = this.c;
            if (fVar != null) {
                fVar.onConnectionSucceed();
            }
            Message messageObtain = Message.obtain();
            messageObtain.what = 5;
            this.b.sendMessage(messageObtain);
            return;
        }
        if (i != 101) {
            return;
        }
        int i2 = message.arg1;
        e eVar = this.f11686d;
        if (eVar != null) {
            eVar.a(new com.coloros.ocs.base.common.a(i2));
            return;
        }
        Message messageObtain2 = Message.obtain();
        messageObtain2.what = 5;
        this.b.sendMessage(messageObtain2);
    }
}
