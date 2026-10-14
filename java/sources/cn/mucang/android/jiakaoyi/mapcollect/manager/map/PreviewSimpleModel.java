package cn.mucang.android.jiakaoyi.mapcollect.manager.map;

import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2DaoKuSrcData;
import cn.mucang.android.jiakaoyi.signal.handle.gps.debug.SetInitDebugGps;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import com.alibaba.fastjson.JSON;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.mapcollect.manager.map.z0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\n\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0002J\u000e\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018H\u0002J\u0006\u0010\u001a\u001a\u00020\u001bR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u00020\u000fX\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\b¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000b¨\u0006\u001c"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/PreviewSimpleModel;", "", "()V", "bound", "Lcn/mucang/android/jiakaoyi/signal/pos/Bound;", "getBound", "()Lcn/mucang/android/jiakaoyi/signal/pos/Bound;", "daoku", "", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/c2/C2DaoKuCollision;", "getDaoku", "()Ljava/util/List;", "dk", "Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2DaoKuSrcData;", "json", "", "getJson", "()Ljava/lang/String;", "renderDaoku", "Lcn/mucang/android/jiakaoyi/hpmap/render/ExamSiteRenderCallback;", "getRenderDaoku", "createConverter", "Lcn/mucang/android/jiakaoyi/signal/proj/Converter;", "getPoints", "", "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;", "parseExamSiteData", "", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class PreviewSimpleModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<cn.mucang.android.jiakaoyi.hpmap.c.a> f5142a = new ArrayList();
    private final List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.c> b = new ArrayList();
    private final List<C2DaoKuSrcData> c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.signal.pos.a f5143d = new cn.mucang.android.jiakaoyi.signal.pos.a(Double.MAX_VALUE, Double.MAX_VALUE, -1.7976931348623157E308d, -1.7976931348623157E308d);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f5144e = "{\n\t\"cheKuIsLeft\": true,\n\t\"gps1\": {\n\t\t\"altitude\": 30.39484977722168,\n\t\t\"latitude\": 30.467718429333335,\n\t\t\"longitude\": 114.41054570233334\n\t},\n\t\"gps2\": {\n\t\t\"altitude\": 30.303199768066406,\n\t\t\"latitude\": 30.467728068333336,\n\t\t\"longitude\": 114.41061255058332\n\t},\n\t\"gps3\": {\n\t\t\"altitude\": 30.28090000152588,\n\t\t\"latitude\": 30.467786016083334,\n\t\t\"longitude\": 114.41060374041666\n\t},\n\t\"gps4\": {\n\t\t\"altitude\": 30.279150009155273,\n\t\t\"latitude\": 30.46779316325,\n\t\t\"longitude\": 114.41065361916667\n\t},\n\t\"gps5\": {\n\t\t\"altitude\": 30.287349700927734,\n\t\t\"latitude\": 30.467813735166665,\n\t\t\"longitude\": 114.41065022625\n\t},\n\t\"gps6\": {\n\t\t\"altitude\": 30.288650512695313,\n\t\t\"latitude\": 30.467806713166667,\n\t\t\"longitude\": 114.41059988041667\n\t},\n\t\"gps7\": {\n\t\t\"altitude\": 30.293149948120117,\n\t\t\"latitude\": 30.46786444875,\n\t\t\"longitude\": 114.41058774933333\n\t},\n\t\"gps8\": {\n\t\t\"altitude\": 30.322750091552734,\n\t\t\"latitude\": 30.467855448583332,\n\t\t\"longitude\": 114.41052074716667\n\t},\n\t\"lineWidth\": 15.0,\n\t\"name\": \"倒车入库-2\",\n\t\"stepId\": 102,\n\t\"time\": 1605512408905\n}";

    private final cn.mucang.android.jiakaoyi.signal.i.a a() {
        List<Gps> listD = d();
        Gps gps = new Gps();
        int i = 0;
        for (Gps gps2 : listD) {
            gps.longitude += gps2.longitude;
            gps.latitude += gps2.latitude;
            i++;
        }
        if (i == 0) {
            cn.mucang.android.core.utils.u.h("没有考场数据");
            return null;
        }
        double d2 = i;
        gps.latitude /= d2;
        gps.longitude /= d2;
        return new cn.mucang.android.jiakaoyi.signal.i.b(gps);
    }

    private final List<Gps> d() {
        ArrayList arrayList = new ArrayList();
        Iterator<C2DaoKuSrcData> it = this.c.iterator();
        while (it.hasNext()) {
            Gps gpsGiveOnePointToCalZero = it.next().giveOnePointToCalZero();
            kotlin.jvm.internal.r.d(gpsGiveOnePointToCalZero, "d.giveOnePointToCalZero()");
            arrayList.add(gpsGiveOnePointToCalZero);
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final cn.mucang.android.jiakaoyi.signal.pos.a getF5143d() {
        return this.f5143d;
    }

    public final List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.c> c() {
        return this.b;
    }

    public final List<cn.mucang.android.jiakaoyi.hpmap.c.a> e() {
        return this.f5142a;
    }

    public final void f() {
        List<C2DaoKuSrcData> list = this.c;
        Object object = JSON.parseObject(this.f5144e, (Class<Object>) C2DaoKuSrcData.class);
        kotlin.jvm.internal.r.d(object, "parseObject(json, C2DaoKuSrcData::class.java)");
        list.add((C2DaoKuSrcData) object);
        cn.mucang.android.jiakaoyi.signal.i.a aVarA = a();
        if (aVarA == null) {
            return;
        }
        if (aVarA instanceof cn.mucang.android.jiakaoyi.signal.i.b) {
            Gps gpsC = ((cn.mucang.android.jiakaoyi.signal.i.b) aVarA).c();
            kotlin.jvm.internal.r.d(gpsC, "converter.zeroGps");
            LiveBus.c(new SetInitDebugGps(gpsC));
        }
        for (C2DaoKuSrcData c2DaoKuSrcData : this.c) {
            List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.c> list2 = this.b;
            cn.mucang.android.jiakaoyi.hpmap.a.a.g.c cVarCreateCollision = c2DaoKuSrcData.createCollision(aVarA, c2DaoKuSrcData.name);
            kotlin.jvm.internal.r.d(cVarCreateCollision, "d.createCollision(converter, d.name)");
            list2.add(cVarCreateCollision);
        }
        for (cn.mucang.android.jiakaoyi.hpmap.a.a.g.c cVar : this.b) {
            List<cn.mucang.android.jiakaoyi.hpmap.c.a> list3 = this.f5142a;
            cn.mucang.android.jiakaoyi.hpmap.c.a aVarD = cVar.d();
            kotlin.jvm.internal.r.d(aVarD, "d.createRender()");
            list3.add(aVarD);
            this.f5143d.i(cVar.x);
        }
    }
}
