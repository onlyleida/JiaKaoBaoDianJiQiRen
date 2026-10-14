package com.unity3d.player;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;

/* JADX INFO: loaded from: classes6.dex */
public class HFPStatus {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f14201a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AudioManager f14203e;
    private BroadcastReceiver b = null;
    private Intent c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f14202d = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f14204f = a.f14206a;

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final int f14206a = 1;
        public static final int b = 2;
        public static final int c = 3;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final /* synthetic */ int[] f14207d = {1, 2, 3};
    }

    public HFPStatus(Context context) {
        this.f14203e = null;
        this.f14201a = context;
        this.f14203e = (AudioManager) context.getSystemService("audio");
        initHFPStatusJni();
    }

    private final native void deinitHFPStatusJni();

    private final native void initHFPStatusJni();

    public final void a() {
        deinitHFPStatusJni();
    }

    protected boolean getHFPStat() {
        return this.f14204f == a.b;
    }

    protected void requestHFPStat() {
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.unity3d.player.HFPStatus.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                int intExtra = intent.getIntExtra("android.media.extra.SCO_AUDIO_STATE", -1);
                if (intExtra == 0) {
                    if (HFPStatus.this.f14202d) {
                        HFPStatus.this.f14203e.setMode(0);
                    }
                    HFPStatus.this.f14202d = false;
                    return;
                }
                if (intExtra == 1) {
                    HFPStatus.this.f14204f = a.b;
                    if (HFPStatus.this.f14202d) {
                        HFPStatus.this.f14203e.setMode(3);
                        return;
                    } else {
                        HFPStatus.this.f14203e.stopBluetoothSco();
                        return;
                    }
                }
                if (intExtra != 2) {
                    return;
                }
                if (HFPStatus.this.f14204f == a.b) {
                    HFPStatus.this.f14202d = true;
                } else {
                    HFPStatus.this.f14204f = a.c;
                }
            }
        };
        this.b = broadcastReceiver;
        this.c = this.f14201a.registerReceiver(broadcastReceiver, new IntentFilter("android.media.ACTION_SCO_AUDIO_STATE_UPDATED"));
        try {
            this.f14203e.startBluetoothSco();
        } catch (NullPointerException unused) {
            g.Log(5, "startBluetoothSco() failed. no bluetooth device connected.");
        }
    }
}
