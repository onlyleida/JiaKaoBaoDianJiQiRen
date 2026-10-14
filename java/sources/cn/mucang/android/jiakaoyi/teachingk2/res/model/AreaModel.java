package cn.mucang.android.jiakaoyi.teachingk2.res.model;

import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class AreaModel implements Serializable {
    public int kemu;
    public String name;
    public List<Pos> pointList;
    public List<Gps> points;
}
