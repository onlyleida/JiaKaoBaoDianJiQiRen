package cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train;

import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.unity.communicator.models.MessageModel;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class AnimTip extends MessageModel {
    public static int TYPE_ANGLE = 5;
    public static int TYPE_AREA = 4;
    public static int TYPE_DRAW_LINE = 6;
    public static int TYPE_LINE = 1;
    public static int TYPE_POINT = 3;
    public static int TYPE_RECT = 2;
    public String color;
    public int duration;
    public boolean isOn;
    public int offTime;
    public int onTime;
    public List<Pos> positions;
    public int type;
}
