package cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.e;

import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.hpmap.d.a;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.utils.d;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.TeachTypeData;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b;
import cn.mucang.android.jiakaoyi.teachingk2.traceerror.i.f;
import cn.mucang.android.jiakaoyi.teachingk2.traceerror.i.h;
import com.google.android.exoplayer2.SimpleExoPlayer;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
class g implements b {
    private boolean b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.signal.utils.b f8105a = null;
    private cn.mucang.android.jiakaoyi.teachingk2.traceerror.i.g c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private h f8106d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private f f8107e = null;

    g() {
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b
    public void a(e eVar, TraceItemModel traceItemModel, List<TraceItemModel> list, Pos pos, Pos pos2, TeachTypeData teachTypeData, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, TeachModel teachModel, List<TraceItemModel> list2) {
        if ((bVar instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) && eVar.d().h()) {
            cn.mucang.android.jiakaoyi.hpmap.a.a.g.b bVar2 = (cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) bVar;
            int i = teachModel.subStep;
            if (i == 1 || i == 3) {
                if (this.f8105a == null) {
                    this.b = false;
                    Pos posMiddle = bVar2.k.middle();
                    Pos posMiddle2 = bVar2.m.middle();
                    this.f8105a = new cn.mucang.android.jiakaoyi.signal.utils.b(a.t(posMiddle, posMiddle2, 30.0d), Math.toDegrees(posMiddle2.angleTo(posMiddle)), true);
                    this.c = new cn.mucang.android.jiakaoyi.teachingk2.traceerror.i.g();
                    this.f8106d = new h(SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
                    this.f8107e = new f();
                }
                if (this.b) {
                    return;
                }
                int size = list.size();
                if (this.f8106d.a(eVar.d().L, eVar.d().F == CarModel.Direction.Stop)) {
                    int i2 = size - 1;
                    int i3 = size - 3;
                    if (this.c.a(pos, list.get(i2), list.get(i3), 60.0d)) {
                        this.b = true;
                        if (this.f8107e.a(eVar, bVar2.r, 1, true)) {
                            b(k0.a(R.string.teachingk2_stop_close_left_touch));
                            teachTypeData.triggerState = (byte) 2;
                        } else if (Math.abs(pos.x - traceItemModel.x) < 50.0d) {
                            float degrees = (float) Math.toDegrees(list.get(i3).angleTo(list.get(i2)));
                            if (((double) Math.abs(degrees)) < 35.0d || ((double) Math.abs(d.c(degrees - 180.0f))) < 35.0d) {
                                teachTypeData.triggerState = (byte) 1;
                            } else {
                                teachTypeData.triggerState = (byte) 2;
                                b(k0.a(R.string.teachingk2_stop_little_partial));
                            }
                        } else {
                            if (list.get(i3).vectorTo(list.get(i2)).dot(list.get(i2).vectorTo(pos)) >= 0.0d) {
                                b(k0.a(R.string.teachingk2_stop_late));
                            } else {
                                b(k0.a(R.string.teachingk2_stop_early));
                            }
                            teachTypeData.triggerState = (byte) 2;
                        }
                        c(teachTypeData);
                    }
                }
            }
        }
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b
    public /* synthetic */ void b(String str) {
        cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.a.b(this, str);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b
    public /* synthetic */ void c(TeachTypeData teachTypeData) {
        cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.a.a(this, teachTypeData);
    }
}
