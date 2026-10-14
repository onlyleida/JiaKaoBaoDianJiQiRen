package cn.mucang.sundial.android.model;

import com.google.android.exoplayer2.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes5.dex */
public enum KeyState {
    Invalid(-1, "无效"),
    None(0, "无钥匙"),
    Lock(1, "熄火"),
    ACC(2, "acc"),
    ON(3, "on"),
    Start(4, TtmlNode.START);

    public final int id;
    public final String name;

    KeyState(int i, String str) {
        this.id = i;
        this.name = str;
    }

    public static KeyState parse(int i) {
        for (KeyState keyState : values()) {
            if (keyState.id == i) {
                return keyState;
            }
        }
        return Invalid;
    }

    public boolean isStart() {
        return this.id >= ACC.id;
    }
}
