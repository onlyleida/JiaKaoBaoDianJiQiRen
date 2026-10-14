package cn.mucang.android.jiakaoyi.signal.com.heartbeat;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class HeartBeatPolicy implements Serializable {
    public int intervalSeconds;
    public int stopBeatDiff;

    public HeartBeatPolicy() {
    }

    public HeartBeatPolicy(int i, int i2) {
        this.intervalSeconds = i;
        this.stopBeatDiff = i2;
    }
}
