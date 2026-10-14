package cn.mucang.android.jiakaoyi.mapcollect.manager.map;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.mapcollect.databinding.ActivityExamModeSettingBinding;
import cn.mucang.android.jiakaoyi.mapcollect.render.ScaleHelper;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u0000 (2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001(B\u0005¢\u0006\u0002\u0010\u0003J\u0018\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r2\u0006\u0010\u001d\u001a\u00020\fH\u0002J\b\u0010\u001e\u001a\u00020\fH\u0016J\b\u0010\u001f\u001a\u00020 H\u0014J\b\u0010!\u001a\u00020 H\u0014J\b\u0010\"\u001a\u00020 H\u0014J\b\u0010#\u001a\u00020 H\u0014J\u0010\u0010$\u001a\u00020 2\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0018\u0010%\u001a\u00020 2\u0006\u0010\u001d\u001a\u00020\f2\u0006\u0010&\u001a\u00020'H\u0002R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R6\u0010\n\u001a*\u0012\u0004\u0012\u00020\f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r0\u000bj\u0014\u0012\u0004\u0012\u00020\f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r`\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\f0\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006)"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityExamModeSettingBinding;", "()V", "examModeSettingModel", "Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingModel;", "getExamModeSettingModel", "()Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingModel;", "examModeSettingModel$delegate", "Lkotlin/Lazy;", "layerMap", "Ljava/util/HashMap;", "", "", "Lcn/mucang/android/jiakaoyi/hpmap/view/layer/MapBaseLayer;", "Lkotlin/collections/HashMap;", "loadingDialog", "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;", "mapData", "Lcn/mucang/android/jiakaoyi/mapcollect/render/IRenderData;", "onClickListener", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;", "renderModels", "Lcn/mucang/android/jiakaoyi/hpmap/render/ExamSiteRenderCallback;", "scaleHelper", "Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;", "selectList", "createLayers", "key", "getStatName", "init", "", "onDestroy", "onPause", "onResume", "renderMap", "updateMap", "first", "", "Companion", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ExamModeSettingActivity extends BaseViewBindingActivity<ActivityExamModeSettingBinding> {
    public static final a i = new a(null);
    private cn.mucang.android.jiakaoyi.mapcollect.render.f b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private JLoadingDialog f5064f;
    private final List<String> c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<cn.mucang.android.jiakaoyi.hpmap.c.a> f5062d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final HashMap<String, List<cn.mucang.android.jiakaoyi.hpmap.view.p.k>> f5063e = new HashMap<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f5065g = kotlin.i.b(new Function0<ExamModeSettingModel>() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.ExamModeSettingActivity$examModeSettingModel$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ExamModeSettingModel invoke() {
            return (ExamModeSettingModel) new androidx.lifecycle.m0(this.this$0).a(ExamModeSettingModel.class);
        }
    });

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.framework.h.b<Pos> f5066h = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.h
        @Override // cn.mucang.android.jiakaoyi.framework.h.b
        public final void callback(Object obj) {
            ExamModeSettingActivity.z(this.f5105a, (Pos) obj);
        }
    };

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity$Companion;", "", "()V", "TAG", "", "launch", "", "context", "Landroid/content/Context;", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context) {
            kotlin.jvm.internal.r.e(context, "context");
            ActivityUtils.c(context, new Intent(context, (Class<?>) ExamModeSettingActivity.class));
        }
    }

    private final void A(final cn.mucang.android.jiakaoyi.mapcollect.render.f fVar) {
        this.b = fVar;
        new ScaleHelper(g().map, fVar, this);
        this.f5062d.clear();
        if (fVar instanceof cn.mucang.android.jiakaoyi.mapcollect.c.j) {
            Iterator<T> it = ((cn.mucang.android.jiakaoyi.mapcollect.c.j) fVar).t.values().iterator();
            while (it.hasNext()) {
                List it2 = (List) it.next();
                List<cn.mucang.android.jiakaoyi.hpmap.c.a> list = this.f5062d;
                kotlin.jvm.internal.r.d(it2, "it");
                list.addAll(it2);
            }
        } else if (fVar instanceof cn.mucang.android.jiakaoyi.mapcollect.c.h) {
            Iterator<T> it3 = ((cn.mucang.android.jiakaoyi.mapcollect.c.h) fVar).v.values().iterator();
            while (it3.hasNext()) {
                List it4 = (List) it3.next();
                List<cn.mucang.android.jiakaoyi.hpmap.c.a> list2 = this.f5062d;
                kotlin.jvm.internal.r.d(it4, "it");
                list2.addAll(it4);
            }
        } else if (fVar instanceof cn.mucang.android.jiakaoyi.mapcollect.c.k) {
            List<cn.mucang.android.jiakaoyi.hpmap.c.a> list3 = this.f5062d;
            List<cn.mucang.android.jiakaoyi.hpmap.c.a> list4 = ((cn.mucang.android.jiakaoyi.mapcollect.c.k) fVar).s;
            kotlin.jvm.internal.r.d(list4, "mapData.renders");
            list3.addAll(list4);
        }
        Iterator<cn.mucang.android.jiakaoyi.hpmap.c.a> it5 = this.f5062d.iterator();
        while (true) {
            if (!it5.hasNext()) {
                break;
            }
            cn.mucang.android.jiakaoyi.hpmap.c.a next = it5.next();
            cn.mucang.android.core.utils.t.a("ExamModelSettingActivity", kotlin.jvm.internal.r.m("renderModel.layerId   ", next.getLayerKey()));
            HashMap<String, List<cn.mucang.android.jiakaoyi.hpmap.view.p.k>> map = this.f5063e;
            String layerKey = next.getLayerKey();
            kotlin.jvm.internal.r.d(layerKey, "renderModel.layerKey");
            List<cn.mucang.android.jiakaoyi.hpmap.view.p.k> listCreateMapLayers = next.createMapLayers(g().map, this.c.contains(next.getLayerKey()), false);
            kotlin.jvm.internal.r.d(listCreateMapLayers, "renderModel.createMapLay…      false\n            )");
            map.put(layerKey, listCreateMapLayers);
        }
        HashMap<String, List<cn.mucang.android.jiakaoyi.hpmap.view.p.k>> map2 = this.f5063e;
        if (!(map2 == null || map2.isEmpty())) {
            if (g().map.getMeasuredHeight() * g().map.getMeasuredWidth() <= 0) {
                cn.mucang.android.core.utils.u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        ExamModeSettingActivity.B(this.f5108a, fVar);
                    }
                }, 200L);
            } else {
                C(this, fVar);
            }
        }
        cn.mucang.android.core.utils.t.h("MapTag", " 地图加载完成");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(ExamModeSettingActivity this$0, cn.mucang.android.jiakaoyi.mapcollect.render.f mapData) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(mapData, "$mapData");
        C(this$0, mapData);
    }

    private static final void C(ExamModeSettingActivity examModeSettingActivity, cn.mucang.android.jiakaoyi.mapcollect.render.f fVar) {
        examModeSettingActivity.g().map.u.j();
        for (String str : examModeSettingActivity.f5063e.keySet()) {
            if (!examModeSettingActivity.c.contains(str)) {
                examModeSettingActivity.g().map.u.h(examModeSettingActivity.f5063e.get(str));
            }
        }
        for (String str2 : examModeSettingActivity.f5063e.keySet()) {
            if (examModeSettingActivity.c.contains(str2)) {
                examModeSettingActivity.g().map.u.h(examModeSettingActivity.f5063e.get(str2));
            }
        }
        examModeSettingActivity.g().map.setCurrentZoom(cn.mucang.android.jiakaoyi.hpmap.view.r.a.a(fVar.getMapBound().l(), fVar.getMapBound().f(), examModeSettingActivity.g().map));
        examModeSettingActivity.g().map.i((float) fVar.getMapBound().f5818e.x, (float) fVar.getMapBound().f5818e.y);
        JLoadingDialog jLoadingDialog = examModeSettingActivity.f5064f;
        if (jLoadingDialog != null) {
            DialogExtensionKt.b(jLoadingDialog);
        }
        examModeSettingActivity.g().map.r();
    }

    private final void D(String str, boolean z) {
        List<cn.mucang.android.jiakaoyi.hpmap.view.p.k> list = this.f5063e.get(str);
        if (list != null) {
            Iterator<cn.mucang.android.jiakaoyi.hpmap.view.p.k> it = list.iterator();
            while (it.hasNext()) {
                g().map.u.Q(it.next());
            }
        }
        List<cn.mucang.android.jiakaoyi.hpmap.view.p.k> listJ = j(str);
        if (listJ != null) {
            g().map.u.i(listJ, z);
        }
    }

    private final List<cn.mucang.android.jiakaoyi.hpmap.view.p.k> j(String str) {
        for (cn.mucang.android.jiakaoyi.hpmap.c.a aVar : this.f5062d) {
            if (aVar.getLayerKey() != null && kotlin.jvm.internal.r.a(aVar.getLayerKey(), str)) {
                List<cn.mucang.android.jiakaoyi.hpmap.view.p.k> createMapLayers = aVar.createMapLayers(g().map, this.c.contains(aVar.getLayerKey()), false);
                HashMap<String, List<cn.mucang.android.jiakaoyi.hpmap.view.p.k>> map = this.f5063e;
                String layerKey = aVar.getLayerKey();
                kotlin.jvm.internal.r.d(layerKey, "renderModel.layerKey");
                kotlin.jvm.internal.r.d(createMapLayers, "createMapLayers");
                map.put(layerKey, createMapLayers);
                return createMapLayers;
            }
        }
        return null;
    }

    private final ExamModeSettingModel k() {
        return (ExamModeSettingModel) this.f5065g.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(ExamModeSettingActivity this$0, cn.mucang.android.jiakaoyi.mapcollect.c.j jVar) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (jVar == null) {
            return;
        }
        this$0.A(jVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(ExamModeSettingActivity this$0, List list) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.c.clear();
        if (list != null) {
            this$0.c.addAll(list);
        }
        cn.mucang.android.jiakaoyi.mapcollect.render.f fVar = this$0.b;
        if (fVar == null) {
            return;
        }
        this$0.A(fVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(ExamModeSettingActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(ExamModeSettingActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        ExamSiteModel examSiteModelD = ExamSiteUtil.d();
        if (examSiteModelD == null) {
            return;
        }
        this$0.k().k(examSiteModelD.examSiteId, this$0.c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(ExamModeSettingActivity this$0, cn.mucang.android.jiakaoyi.mapcollect.c.h hVar) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (hVar == null) {
            return;
        }
        this$0.A(hVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(ExamModeSettingActivity this$0, cn.mucang.android.jiakaoyi.mapcollect.c.k kVar) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (kVar == null) {
            return;
        }
        this$0.A(kVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(ExamModeSettingActivity this$0, Pos pos) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        cn.mucang.android.core.utils.t.a("ExamModelSettingActivity", pos.toString());
        cn.mucang.android.jiakaoyi.mapcollect.render.f fVar = this$0.b;
        if (fVar == null || pos == null) {
            return;
        }
        ArrayList<cn.mucang.android.jiakaoyi.hpmap.a.a.b> arrayList = new ArrayList();
        if (fVar instanceof cn.mucang.android.jiakaoyi.mapcollect.c.j) {
            for (List<cn.mucang.android.jiakaoyi.hpmap.a.a.b> list : ((cn.mucang.android.jiakaoyi.mapcollect.c.j) fVar).f4723d.values()) {
                kotlin.jvm.internal.r.d(list, "list");
                arrayList.addAll(list);
            }
        } else if (fVar instanceof cn.mucang.android.jiakaoyi.mapcollect.c.h) {
            for (List<cn.mucang.android.jiakaoyi.hpmap.a.a.b> list2 : ((cn.mucang.android.jiakaoyi.mapcollect.c.h) fVar).f4710d.values()) {
                kotlin.jvm.internal.r.d(list2, "list");
                arrayList.addAll(list2);
            }
        } else if (fVar instanceof cn.mucang.android.jiakaoyi.mapcollect.c.k) {
            for (List<cn.mucang.android.jiakaoyi.hpmap.a.a.b> list3 : ((cn.mucang.android.jiakaoyi.mapcollect.c.k) fVar).f4730d.values()) {
                kotlin.jvm.internal.r.d(list3, "list");
                arrayList.addAll(list3);
            }
        }
        for (cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar : arrayList) {
            if (bVar.w(pos)) {
                if (this$0.c.contains(bVar.getKey())) {
                    this$0.c.remove(bVar.getKey());
                    String key = bVar.getKey();
                    kotlin.jvm.internal.r.d(key, "data.key");
                    this$0.D(key, false);
                } else {
                    List<String> list4 = this$0.c;
                    String key2 = bVar.getKey();
                    kotlin.jvm.internal.r.d(key2, "data.key");
                    list4.add(key2);
                    String key3 = bVar.getKey();
                    kotlin.jvm.internal.r.d(key3, "data.key");
                    this$0.D(key3, false);
                }
            }
        }
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "考试模式设置";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        this.f5064f = new JLoadingDialog(this);
        g().titleLayout.titleTv.setText("考试模式设置");
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ExamModeSettingActivity.n(this.f5094a, view);
            }
        });
        g().titleLayout.actionTv.setVisibility(0);
        g().titleLayout.actionTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ExamModeSettingActivity.o(this.f5092a, view);
            }
        });
        if (AppUtils.l()) {
            LiveBus.d(cn.mucang.android.jiakaoyi.mapcollect.c.h.class).h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.e
                @Override // androidx.lifecycle.a0
                public final void onChanged(Object obj) {
                    ExamModeSettingActivity.p(this.f5090a, (cn.mucang.android.jiakaoyi.mapcollect.c.h) obj);
                }
            });
        } else if (AppUtils.i()) {
            LiveBus.d(cn.mucang.android.jiakaoyi.mapcollect.c.k.class).h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.j
                @Override // androidx.lifecycle.a0
                public final void onChanged(Object obj) {
                    ExamModeSettingActivity.q(this.f5110a, (cn.mucang.android.jiakaoyi.mapcollect.c.k) obj);
                }
            });
        } else {
            LiveBus.d(cn.mucang.android.jiakaoyi.mapcollect.c.j.class).h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.k
                @Override // androidx.lifecycle.a0
                public final void onChanged(Object obj) {
                    ExamModeSettingActivity.l(this.f5112a, (cn.mucang.android.jiakaoyi.mapcollect.c.j) obj);
                }
            });
        }
        g().map.setOnClickListener(this.f5066h);
        k().i().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.d
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                ExamModeSettingActivity.m(this.f5088a, (List) obj);
            }
        });
        ExamSiteModel examSiteModelD = ExamSiteUtil.d();
        if (examSiteModelD == null) {
            cn.mucang.android.core.utils.u.h("请先去选择考场");
            return;
        }
        JLoadingDialog jLoadingDialog = this.f5064f;
        if (jLoadingDialog != null) {
            jLoadingDialog.b("正在加载地图...");
        }
        if (AppUtils.l()) {
            new cn.mucang.android.jiakaoyi.mapcollect.c.h(String.valueOf(examSiteModelD.examSiteId), false, true);
        } else if (AppUtils.i()) {
            new cn.mucang.android.jiakaoyi.mapcollect.c.k(String.valueOf(examSiteModelD.examSiteId), false, true);
        } else {
            new cn.mucang.android.jiakaoyi.mapcollect.c.j(String.valueOf(examSiteModelD.examSiteId), false, true);
        }
        k().j(examSiteModelD.examSiteId);
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        g().map.c();
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onPause() {
        super.onPause();
        g().map.m();
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        g().map.n();
    }
}
