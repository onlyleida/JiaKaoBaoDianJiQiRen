package cn.mucang.android.jiakaoyi.hpmap.a.a;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface b {
    cn.mucang.android.jiakaoyi.signal.pos.a b();

    void c(List<Pos> list, List<Integer> list2);

    cn.mucang.android.jiakaoyi.hpmap.c.a d();

    boolean e(CarPos carPos);

    Line f();

    cn.mucang.android.jiakaoyi.signal.utils.b g();

    String getKey();

    boolean h(CarPos carPos);

    boolean i(CarPos carPos);

    SparseArray<Pos> j();

    Line k();

    Line l();

    boolean m(CarPos carPos);

    Pos n();

    Line o();

    boolean p(CarPos carPos);

    int q(Line line);

    boolean r();

    Step s();

    String t();

    Line u();

    boolean v(CarPos carPos);

    boolean w(Pos pos);
}
