package cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.e;

import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.o;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.TeachTypeData;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class d implements cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f8100a = false;
    private c b = null;
    private b c = null;

    private static class b implements cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f8101a;
        private Pos b;

        private b() {
            this.f8101a = false;
            this.b = null;
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b
        public void a(e eVar, TraceItemModel traceItemModel, List<TraceItemModel> list, Pos pos, Pos pos2, TeachTypeData teachTypeData, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, TeachModel teachModel, List<TraceItemModel> list2) {
            if (this.f8101a) {
                return;
            }
            if (this.b == null) {
                this.b = new Pos(eVar.c().center);
            }
            if (eVar.c().center.distanceSquare(this.b) > 25.0d) {
                if (eVar.d().j(Light.TurnLeftLight)) {
                    teachTypeData.triggerState = (byte) 1;
                    c(teachTypeData);
                    f.o("灯光:当前位置:" + pos + ",灯光点位置:" + traceItemModel);
                    this.f8101a = true;
                    return;
                }
                b(k0.a(R.string.teachingk2_no_light));
                teachTypeData.triggerState = (byte) 2;
                c(teachTypeData);
                this.f8101a = true;
                f.o("未打灯光:当前位置:" + pos + ",灯光点位置:" + traceItemModel);
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

    private static class c implements cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f8102a;
        private boolean b;

        private c() {
            this.f8102a = false;
            this.b = false;
        }

        @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b
        public void a(e eVar, TraceItemModel traceItemModel, List<TraceItemModel> list, Pos pos, Pos pos2, TeachTypeData teachTypeData, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, TeachModel teachModel, List<TraceItemModel> list2) {
            if (this.f8102a) {
                return;
            }
            Light lightFindLightWithId = Light.findLightWithId(teachTypeData.data1);
            if (eVar.d().j(lightFindLightWithId) && !this.b) {
                this.b = true;
                teachTypeData.triggerState = (byte) 1;
                c(teachTypeData);
            }
            if (!(Math.abs(eVar.d().r) > 270) || traceItemModel.distanceSquare(pos) > 22500.0d) {
                return;
            }
            if (eVar.d().j(lightFindLightWithId)) {
                teachTypeData.triggerState = (byte) 1;
                c(teachTypeData);
                f.o("灯光:当前位置:" + pos + ",灯光点位置:" + traceItemModel);
                this.f8102a = true;
                return;
            }
            b("未打" + lightFindLightWithId.lightName);
            teachTypeData.triggerState = (byte) 2;
            c(teachTypeData);
            this.f8102a = true;
            f.o("未打灯光:当前位置:" + pos + ",灯光点位置:" + traceItemModel);
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

    @Override // cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.tips.c.b
    public void a(e eVar, TraceItemModel traceItemModel, List<TraceItemModel> list, Pos pos, Pos pos2, TeachTypeData teachTypeData, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, TeachModel teachModel, List<TraceItemModel> list2) {
        if (this.f8100a) {
            return;
        }
        if (bVar instanceof o) {
            if (this.b == null) {
                this.b = new c();
            }
            this.b.a(eVar, traceItemModel, list, pos, pos2, teachTypeData, bVar, teachModel, list2);
            return;
        }
        if (bVar instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) {
            if (this.c == null) {
                this.c = new b();
            }
            this.c.a(eVar, traceItemModel, list, pos, pos2, teachTypeData, bVar, teachModel, list2);
            return;
        }
        Light lightFindLightWithId = Light.findLightWithId(teachTypeData.data1);
        double d2 = (lightFindLightWithId == Light.TurnRightLight || lightFindLightWithId == Light.TurnLeftLight) ? 60.0d : 400.0d;
        if (!eVar.d().j(lightFindLightWithId)) {
            if (pos.x - traceItemModel.x > d2 + 10.0d) {
                b(String.format(k0.a(R.string.teachingk2_no_open_light), lightFindLightWithId.lightName));
                teachTypeData.triggerState = (byte) 2;
                c(teachTypeData);
                this.f8100a = true;
                f.o("未打灯光:当前位置:" + pos + ",手刹点位置:" + traceItemModel);
                return;
            }
            return;
        }
        if (Math.abs(pos.x - traceItemModel.x) <= d2) {
            teachTypeData.triggerState = (byte) 1;
            c(teachTypeData);
        } else if (pos.x > traceItemModel.x) {
            b(k0.a(R.string.teachingk2_open_light_late));
            teachTypeData.triggerState = (byte) 2;
            c(teachTypeData);
        } else {
            b(k0.a(R.string.teachingk2_open_light_early));
            teachTypeData.triggerState = (byte) 2;
            c(teachTypeData);
        }
        f.o("灯光:当前位置:" + pos + ",手刹点位置:" + traceItemModel);
        this.f8100a = true;
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
