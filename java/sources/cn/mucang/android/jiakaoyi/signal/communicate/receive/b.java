package cn.mucang.android.jiakaoyi.signal.communicate.receive;

import cn.mucang.android.jiakaoyi.signal.R;

/* JADX INFO: loaded from: classes3.dex */
public class b extends m {
    public int b;
    public int c;

    public b(int i, cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
        super(i, rVar);
        this.b = 0;
        this.c = 0;
        byte bE = rVar.e();
        if (bE == 2) {
            this.b = rVar.e();
        } else if (bE == 3) {
            this.c = rVar.e();
        }
    }

    public String a() {
        int i = this.b;
        if (i == 0 || i == 5) {
            return "";
        }
        if (i == 1) {
            return cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.signal_p0_problem);
        }
        if (i == 2) {
            return cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.signal_obstacle_braking);
        }
        if (i == 3) {
            return cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.signal_non_obstacle_braking);
        }
        if (i == 4) {
            return cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.signal_hand_brake_up);
        }
        if (i == 6) {
            return cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.signal_flameout);
        }
        if (i == 7) {
            return cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.signal_open_sefe_belt);
        }
        if (i == 8) {
            return cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.signal_open_door);
        }
        if (i == 9) {
            return cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.signal_gear_error);
        }
        if (i == 10) {
            return cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.signal_gear_n_handbrake);
        }
        return i == 11 ? cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.signal_gps_error) : "未知理由";
    }
}
