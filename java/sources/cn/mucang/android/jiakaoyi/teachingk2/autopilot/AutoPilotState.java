package cn.mucang.android.jiakaoyi.teachingk2.autopilot;

import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public enum AutoPilotState {
    Start((byte) 1, k0.a(R.string.teachingk2_start_auto_driving)),
    Pause((byte) 2, k0.a(R.string.teachingk2_pause_auto_driving)),
    Resume((byte) 3, k0.a(R.string.teachingk2_resume_auto_driving)),
    Stop((byte) 4, k0.a(R.string.teachingk2_stop_auto_driving));

    public final byte cmd;
    public final String desc;

    AutoPilotState(byte b, String str) {
        this.cmd = b;
        this.desc = str;
    }
}
