package cn.mucang.android.jiakaoyi.teachingk2.traceerror.i;

import cn.mucang.android.jiakaoyi.hpmap.a.a.g.c;
import cn.mucang.android.jiakaoyi.hpmap.d.a;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes4.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Line f5998a = null;

    public boolean a(e eVar, c cVar) {
        if (this.f5998a != null) {
            return false;
        }
        Line line = cVar.o;
        this.f5998a = new Line(a.t(line.end, line.start, (line.length() * 2.0d) / 3.0d), cVar.o.end);
        Line line2 = cVar.p;
        Pos pos = line2.start;
        new Line(pos, a.t(pos, line2.end, (line2.length() * 2.0d) / 3.0d));
        Line line3 = cVar.m;
        return false;
    }
}
