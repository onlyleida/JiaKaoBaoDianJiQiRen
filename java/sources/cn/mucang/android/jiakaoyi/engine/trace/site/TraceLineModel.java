package cn.mucang.android.jiakaoyi.engine.trace.site;

import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class TraceLineModel extends TraceSiteItemModel {
    public int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f3183d;
    public float i;
    public int l;
    public int st;
    public int w;

    public TraceLineModel(List<Pos> list, int i, int i2) {
        super(list, i);
        this.st = i2;
    }

    public void setStyle(int i, int i2, boolean z, float f2, int i3) {
        this.c = i;
        this.w = i2;
        this.f3183d = z;
        this.i = f2;
        this.l = i3;
    }
}
