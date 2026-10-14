package cn.mucang.android.jiakaoyi.teachingk2.res.model;

import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Pos f7596a;
    public final Pos b;
    public final Pos c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List<Pos> f7597d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Pos f7598e;

    public c(Pos pos, Pos pos2, Pos pos3) {
        this.f7596a = pos;
        this.b = pos2;
        this.c = pos3;
        ArrayList arrayList = new ArrayList();
        this.f7597d = arrayList;
        arrayList.add(pos);
        arrayList.add(pos2);
        arrayList.add(pos3);
        Pos posA = a();
        this.f7598e = posA;
        Math.max(posA.distanceTo(pos), Math.max(posA.distanceTo(pos2), posA.distanceTo(pos3)));
    }

    private Pos a() {
        Pos pos = this.c;
        double d2 = pos.y;
        Pos pos2 = this.b;
        double d3 = pos2.y;
        double d4 = pos2.x;
        Pos pos3 = this.f7596a;
        double d5 = pos3.x;
        double d6 = pos3.y;
        double d7 = pos.x;
        double d8 = (((d2 - d3) * (d4 - d5)) - ((d3 - d6) * (d7 - d4))) * 2.0d;
        if (d8 == 0.0d) {
            return new Pos(((d5 + d4) + d7) / 3.0d, ((d6 + d3) + d2) / 3.0d);
        }
        double d9 = (d4 * d4) + (d3 * d3);
        double d10 = d9 - ((d5 * d5) + (d6 * d6));
        double d11 = ((d7 * d7) + (d2 * d2)) - d9;
        return new Pos((((d2 - d3) * d10) - ((d3 - d6) * d11)) / d8, (((d4 - d5) * d11) - ((d7 - d4) * d10)) / d8);
    }
}
