package io.agora.rtc.audio;

import android.content.Context;
import com.coloros.ocs.base.common.c.f;
import g.b.a.b.d;
import g.b.a.b.e;
import io.agora.rtc.internal.Logging;

/* JADX INFO: loaded from: classes6.dex */
public class OppoHardwareEarback implements IHardwareEarback {
    private static String TAG = "AG-OPPO";
    private boolean isConnected = false;
    private Context mContext;

    public OppoHardwareEarback(Context context) {
        this.mContext = null;
        this.mContext = context;
        initialize();
    }

    @Override // io.agora.rtc.audio.IHardwareEarback
    public void destroy() {
        try {
            Context context = this.mContext;
            if (context != null) {
                d.a(context);
                e.q();
            }
        } catch (Exception e2) {
            Logging.e(e2.getMessage());
        }
    }

    @Override // io.agora.rtc.audio.IHardwareEarback
    public int enableEarbackFeature(boolean z) {
        try {
            Context context = this.mContext;
            if (context == null || !this.isConnected) {
                return -1;
            }
            if (z) {
                d.a(context).a(new f() { // from class: io.agora.rtc.audio.OppoHardwareEarback.2
                    @Override // com.coloros.ocs.base.common.c.f
                    public void onConnectionSucceed() {
                        if (OppoHardwareEarback.this.mContext != null) {
                            d.a(OppoHardwareEarback.this.mContext).r();
                        }
                    }
                });
                return 0;
            }
            d.a(context).a(new f() { // from class: io.agora.rtc.audio.OppoHardwareEarback.3
                @Override // com.coloros.ocs.base.common.c.f
                public void onConnectionSucceed() {
                    if (OppoHardwareEarback.this.mContext != null) {
                        d.a(OppoHardwareEarback.this.mContext).f();
                    }
                }
            });
            return 0;
        } catch (Exception e2) {
            Logging.e(e2.getMessage());
            return -1;
        }
    }

    @Override // io.agora.rtc.audio.IHardwareEarback
    public void initialize() {
        try {
            Context context = this.mContext;
            if (context != null) {
                d.a(context).a(new f() { // from class: io.agora.rtc.audio.OppoHardwareEarback.1
                    @Override // com.coloros.ocs.base.common.c.f
                    public void onConnectionSucceed() {
                        OppoHardwareEarback.this.isConnected = true;
                    }
                });
            }
        } catch (Exception e2) {
            Logging.e(e2.getMessage());
        }
    }

    @Override // io.agora.rtc.audio.IHardwareEarback
    public boolean isHardwareEarbackSupported() {
        return this.isConnected;
    }

    @Override // io.agora.rtc.audio.IHardwareEarback
    public int setHardwareEarbackVolume(int i) {
        return 0;
    }
}
