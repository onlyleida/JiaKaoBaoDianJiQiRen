package cn.mucang.android.jiakaoyi.engine.trace;

import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class XYPos implements Serializable {
    public int x;
    public int y;

    public static XYPos from(Pos pos) {
        XYPos xYPos = new XYPos();
        xYPos.x = (int) (pos.x + 0.5d);
        xYPos.y = (int) (pos.y + 0.5d);
        return xYPos;
    }
}
