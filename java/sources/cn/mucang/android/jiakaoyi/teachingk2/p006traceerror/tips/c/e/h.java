package cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.e;

import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.c;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.utils.d;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.TeachTypeData;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.a;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b;
import cn.mucang.android.jiakaoyi.teachingk2.traceerror.i.e;
import cn.mucang.android.jiakaoyi.teachingk2.traceerror.i.f;
import cn.mucang.android.jiakaoyi.teachingk2.traceerror.i.g;
import com.google.android.exoplayer2.SimpleExoPlayer;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
class h implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f8108a;
    private g b = null;
    private cn.mucang.android.jiakaoyi.teachingk2.traceerror.i.h c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private e f8109d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private f f8110e = null;

    h() {
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b
    public void a(cn.mucang.android.jiakaoyi.signal.c.e eVar, TraceItemModel traceItemModel, List<TraceItemModel> list, Pos pos, Pos pos2, TeachTypeData teachTypeData, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, TeachModel teachModel, List<TraceItemModel> list2) {
        if ((bVar instanceof c) && eVar.d().h()) {
            c cVar = (c) bVar;
            int i = teachModel.subStep;
            if (i == 1 || i == 3) {
                if (this.f8109d == null) {
                    this.f8108a = false;
                    this.b = new g();
                    this.c = new cn.mucang.android.jiakaoyi.teachingk2.traceerror.i.h(SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
                    this.f8109d = new e();
                    this.f8110e = new f();
                }
                if (this.f8108a) {
                    return;
                }
                int size = list.size();
                if (this.c.a(eVar.d().L, eVar.d().F.isStop())) {
                    int i2 = size - 1;
                    int i3 = size - 3;
                    if (this.b.a(pos, list.get(i2), list.get(i3), 60.0d)) {
                        this.f8108a = true;
                        if (this.f8109d.a(eVar, cVar)) {
                            if (this.f8110e.a(eVar, cVar.r, (cVar.u ? -1 : 1) * (i == 1 ? 1 : -1), false)) {
                                String strA = (!(i == 1 && cVar.u) && (i != 3 || cVar.u)) ? k0.a(R.string.teachingk2_stop_close_left_touch) : k0.a(R.string.teachingk2_stop_close_right_touch);
                                teachTypeData.triggerState = (byte) 2;
                                b(strA);
                            } else if (Math.abs(pos.x - traceItemModel.x) < 50.0d) {
                                float degrees = (float) Math.toDegrees(list.get(i3).angleTo(list.get(i2)));
                                boolean z = ((double) Math.abs(degrees)) < 8.0d || ((double) Math.abs(d.c(degrees - 180.0f))) < 8.0d;
                                boolean z2 = Math.abs(pos.y - traceItemModel.y) < 25.0d;
                                if (z && z2) {
                                    teachTypeData.triggerState = (byte) 1;
                                } else if (z2) {
                                    teachTypeData.triggerState = (byte) 2;
                                    b(k0.a(R.string.teachbase_parking_little_off));
                                } else {
                                    teachTypeData.triggerState = (byte) 2;
                                    b(k0.a(pos.y > traceItemModel.y ? R.string.teachbase_stop_to_right : R.string.teachbase_stop_to_left));
                                }
                            } else {
                                if (list.get(i3).vectorTo(list.get(i2)).dot(list.get(i2).vectorTo(pos)) >= 0.0d) {
                                    b(k0.a(R.string.teachingk2_stop_late));
                                } else {
                                    b(k0.a(R.string.teachingk2_stop_early));
                                }
                                teachTypeData.triggerState = (byte) 2;
                            }
                        } else {
                            teachTypeData.triggerState = (byte) 2;
                            b((!(i == 1 && cVar.u) && (i != 3 || cVar.u)) ? k0.a(R.string.teachingk2_stop_close_right_cant_in) : k0.a(R.string.teachingk2_stop_close_left_cant_in));
                        }
                        c(teachTypeData);
                    }
                }
            }
        }
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b
    public /* synthetic */ void b(String str) {
        a.b(this, str);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b
    public /* synthetic */ void c(TeachTypeData teachTypeData) {
        a.a(this, teachTypeData);
    }
}
