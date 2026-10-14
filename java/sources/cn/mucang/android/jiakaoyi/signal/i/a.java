package cn.mucang.android.jiakaoyi.signal.i;

import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes3.dex */
public interface a {
    Pos a(Gps gps);

    Gps b(Pos pos);

    Gps getZero();
}
