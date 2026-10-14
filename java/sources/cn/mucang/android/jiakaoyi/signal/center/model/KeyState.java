package cn.mucang.android.jiakaoyi.signal.center.model;

import com.google.android.exoplayer2.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes3.dex */
public enum KeyState {
    Invalid(-1, "无效"),
    None(0, "无钥匙"),
    Lock(1, "熄火"),
    ACC(2, "acc"),
    ON(3, "on"),
    Start(4, TtmlNode.START);

    public static final KeyState[] states = new KeyState[values().length];
    public final String desc;
    public final int id;

    static {
        int i = 0;
        KeyState[] keyStateArrValues = values();
        while (true) {
            KeyState[] keyStateArr = states;
            if (i >= keyStateArr.length) {
                return;
            }
            keyStateArr[keyStateArrValues[i].id + 1] = keyStateArrValues[i];
            i++;
        }
    }

    KeyState(int i, String str) {
        this.id = i;
        this.desc = str;
    }

    public static KeyState parse(int i) {
        int i2 = i + 1;
        if (i2 >= 0) {
            KeyState[] keyStateArr = states;
            if (i2 < keyStateArr.length) {
                return keyStateArr[i2];
            }
        }
        return Invalid;
    }

    public boolean isStart() {
        return this.id >= ACC.id;
    }
}
