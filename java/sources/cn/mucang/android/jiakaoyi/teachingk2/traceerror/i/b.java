package cn.mucang.android.jiakaoyi.teachingk2.traceerror.i;

import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes4.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f5975a = new a(new Pos(), 359.0d, new Pos(), new Pos());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final a f5976d = new a(new Pos(), 359.0d, new Pos(), new Pos());
    public final Pos b = new Pos();
    public final Pos c = new Pos();

    public boolean a(Line line) {
        return b(line.start, line.end);
    }

    public boolean b(Pos pos, Pos pos2) {
        if (this.f5975a.a(pos, pos2)) {
            return true;
        }
        return this.f5976d.a(pos, pos2);
    }
}
