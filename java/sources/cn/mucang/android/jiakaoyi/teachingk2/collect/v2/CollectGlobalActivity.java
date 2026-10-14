package cn.mucang.android.jiakaoyi.teachingk2.collect.v2;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.render.MapRender;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.NormalVariable;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.VoiceModel;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.ActivityCollectGlobalBinding;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.ItemGlobalTeachModelBinding;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\b\b\u0007\u0018\u0000 \u001e2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001e\u001fB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0012\u001a\u00020\u0013H\u0002J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\bH\u0002J\u0010\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\bH\u0002J\b\u0010\u0017\u001a\u00020\u0018H\u0016J\b\u0010\u0019\u001a\u00020\u0013H\u0014J\b\u0010\u001a\u001a\u00020\u0013H\u0014J\b\u0010\u001b\u001a\u00020\u0013H\u0014J\b\u0010\u001c\u001a\u00020\u0013H\u0014J\u0010\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\bH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R*\u0010\n\u001a\u001e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\f0\u000bj\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\f`\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityCollectGlobalBinding;", "()V", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "createModelList", "", "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;", "current", "layers", "Ljava/util/HashMap;", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/NormalLayer;", "Lkotlin/collections/HashMap;", "mapRender", "Lcn/mucang/android/jiakaoyi/mapcollect/render/MapRender;", "renderData", "Lcn/mucang/android/jiakaoyi/mapcollect/render/IRenderData;", "addTeachModel", "", "deleteTeachModel", "model", "editTeachModel", "getStatName", "", "init", "onDestroy", "onPause", "onResume", "selectTeachModel", "Companion", "GlobalTeachModelItem", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@SuppressLint({"NotifyDataSetChanged"})
public final class CollectGlobalActivity extends BaseViewBindingActivity<ActivityCollectGlobalBinding> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f6738h = new a(null);
    private MapRender b;
    private TeachModel c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<TeachModel> f6739d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final HashMap<TeachModel, j3> f6740e = new HashMap<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.drakeet.multitype.f f6741f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.mapcollect.render.f f6742g;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\n\u0010\u0007\u001a\u00060\bR\u00020\tH\u0007¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity$Companion;", "", "()V", "launch", "", "context", "Landroid/content/Context;", "item", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$StepTeachItem;", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context, StepTeachModelActivity.b item) {
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(item, "item");
            TeachModelEditor.a(item);
            ActivityUtils.c(context, new Intent(context, (Class<?>) CollectGlobalActivity.class));
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0017¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity$GlobalTeachModelItem;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemGlobalTeachModelBinding;", "(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectGlobalActivity;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class b extends ViewBindingBinder<TeachModel, ItemGlobalTeachModelBinding> {
        final /* synthetic */ CollectGlobalActivity b;

        public b(CollectGlobalActivity this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this.b = this$0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void r(CollectGlobalActivity this$0, TeachModel item, View view) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(item, "$item");
            this$0.F(item);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void s(CollectGlobalActivity this$0, TeachModel item, View view) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(item, "$item");
            this$0.r(item);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void t(CollectGlobalActivity this$0, TeachModel item, View view) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(item, "$item");
            this$0.u(item);
        }

        @Override // com.drakeet.multitype.c
        @SuppressLint({"SetTextI18n"})
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public void c(ViewBindingHolder<ItemGlobalTeachModelBinding> holder, final TeachModel item) {
            kotlin.jvm.internal.r.e(holder, "holder");
            kotlin.jvm.internal.r.e(item, "item");
            NormalVariable normalVariable = item.getNormalVariable();
            if (normalVariable != null) {
                normalVariable.isSelect = item == this.b.c;
            }
            NormalVariable normalVariable2 = item.getNormalVariable();
            if (normalVariable2 != null) {
                normalVariable2.number = String.valueOf(holder.getAdapterPosition() + 1);
            }
            TextView textView = ((ItemGlobalTeachModelBinding) holder.getViewBinding()).modelTv;
            StringBuilder sb = new StringBuilder();
            sb.append(holder.getAdapterPosition() + 1);
            sb.append((char) 12289);
            sb.append((Object) item.findText());
            textView.setText(sb.toString());
            ((ItemGlobalTeachModelBinding) holder.getViewBinding()).getRoot().setBackgroundColor(item == this.b.c ? -12367793 : 0);
            ConstraintLayout root = ((ItemGlobalTeachModelBinding) holder.getViewBinding()).getRoot();
            final CollectGlobalActivity collectGlobalActivity = this.b;
            root.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CollectGlobalActivity.b.r(collectGlobalActivity, item, view);
                }
            });
            ImageView imageView = ((ItemGlobalTeachModelBinding) holder.getViewBinding()).deleteIv;
            final CollectGlobalActivity collectGlobalActivity2 = this.b;
            imageView.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.g
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CollectGlobalActivity.b.s(collectGlobalActivity2, item, view);
                }
            });
            ImageView imageView2 = ((ItemGlobalTeachModelBinding) holder.getViewBinding()).editIv;
            final CollectGlobalActivity collectGlobalActivity3 = this.b;
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CollectGlobalActivity.b.t(collectGlobalActivity3, item, view);
                }
            });
        }
    }

    public CollectGlobalActivity() {
        com.drakeet.multitype.f fVar = new com.drakeet.multitype.f(null, 0, null, 7, null);
        fVar.g(TeachModel.class, new b(this));
        kotlin.v vVar = kotlin.v.f15822a;
        this.f6741f = fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void F(TeachModel teachModel) {
        this.c = teachModel;
        this.f6741f.notifyDataSetChanged();
    }

    private final void o() {
        Collection<List<cn.mucang.android.jiakaoyi.hpmap.a.a.b>> collectionValues;
        cn.mucang.android.jiakaoyi.signal.c.e eVarT = cn.mucang.android.jiakaoyi.signal.c.d.t();
        CarPos carPosC = eVarT.c();
        if (carPosC.rearAxlePoint == null) {
            cn.mucang.android.core.utils.u.h("暂无有效点位");
            return;
        }
        cn.mucang.android.jiakaoyi.mapcollect.render.f fVar = this.f6742g;
        if (fVar == null) {
            kotlin.jvm.internal.r.u("renderData");
            throw null;
        }
        Map<Step, List<cn.mucang.android.jiakaoyi.hpmap.a.a.b>> collisions = fVar.getCollisions();
        if (collisions != null && (collectionValues = collisions.values()) != null) {
            Iterator<T> it = collectionValues.iterator();
            while (it.hasNext()) {
                List<cn.mucang.android.jiakaoyi.hpmap.a.a.b> list = (List) it.next();
                kotlin.jvm.internal.r.d(list, "list");
                for (cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar : list) {
                    if (!(bVar instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.h) && bVar.m(carPosC)) {
                        cn.mucang.android.core.utils.u.h("项目内不可打点");
                        return;
                    }
                }
            }
        }
        Pos posT = cn.mucang.android.jiakaoyi.hpmap.d.a.t(new Pos(carPosC.wheelLeftFront).meanWith(carPosC.wheelRightFront), carPosC.rearAxlePoint, 20.0d);
        final NormalVariable normalVariable = new NormalVariable();
        normalVariable.setPos(carPosC.rearAxlePoint, posT);
        normalVariable.direCarDot = (eVarT.d().m == Gear.GearBack ? CarModel.Direction.Back : CarModel.Direction.Forward).direction;
        final TeachModel teachModel = new TeachModel();
        TeachModelEditor teachModelEditor = TeachModelEditor.f6857a;
        teachModel.step = teachModelEditor.g().type;
        teachModel.examSiteId = String.valueOf(ExamSiteUtil.e(0L));
        teachModel.programmeId = teachModelEditor.f();
        teachModel.subStep = 1;
        teachModel.pointType = 2;
        ArrayList arrayList = new ArrayList();
        teachModel.variableList = arrayList;
        arrayList.add(normalVariable);
        ArrayList arrayList2 = new ArrayList();
        teachModel.data = arrayList2;
        arrayList2.add(new VoiceModel("操作点").sound(true));
        new cn.mucang.android.jiakaoyi.framework.base.dialog.u(this).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.j
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() {
                CollectGlobalActivity.p(teachModel, this, normalVariable);
            }
        }, "正在打点", "打点失败");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(final TeachModel model, final CollectGlobalActivity this$0, final NormalVariable normalVariable) {
        kotlin.jvm.internal.r.e(model, "$model");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(normalVariable, "$normalVariable");
        if (new cn.mucang.android.jiakaoyi.teachingk2.collect.render.api.b().n(model)) {
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.n
                @Override // java.lang.Runnable
                public final void run() {
                    CollectGlobalActivity.q(this.f6863a, model, normalVariable);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(CollectGlobalActivity this$0, TeachModel model, NormalVariable normalVariable) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(model, "$model");
        kotlin.jvm.internal.r.e(normalVariable, "$normalVariable");
        this$0.f6739d.add(model);
        this$0.f6741f.notifyDataSetChanged();
        j3 j3Var = new j3(this$0.g().map, normalVariable);
        this$0.f6740e.put(model, j3Var);
        this$0.g().map.u.g(j3Var);
        LiveBus.d(TeachModelChanged.class).l(new TeachModelChanged(null, 1, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r(final TeachModel teachModel) {
        new cn.mucang.android.jiakaoyi.framework.base.dialog.u(this).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.d
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() {
                CollectGlobalActivity.s(teachModel, this);
            }
        }, "正在删除", "删除失败");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(final TeachModel model, final CollectGlobalActivity this$0) {
        kotlin.jvm.internal.r.e(model, "$model");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (new cn.mucang.android.jiakaoyi.teachingk2.collect.render.api.b().o(model)) {
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.c
                @Override // java.lang.Runnable
                public final void run() {
                    CollectGlobalActivity.t(this.f6794a, model);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(CollectGlobalActivity this$0, TeachModel model) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(model, "$model");
        this$0.f6739d.remove(model);
        this$0.f6741f.notifyDataSetChanged();
        this$0.g().map.u.Q(this$0.f6740e.remove(model));
        LiveBus.d(TeachModelChanged.class).l(new TeachModelChanged(null, 1, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void u(TeachModel teachModel) {
        new GlobalInputDialog(this, new CollectGlobalActivity$editTeachModel$1(this, teachModel)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(CollectGlobalActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(CollectGlobalActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(CollectGlobalActivity this$0, Boolean bool) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        for (TeachModel teachModel : this$0.f6739d) {
            NormalVariable normalVariable = teachModel.getNormalVariable();
            if (normalVariable != null) {
                j3 j3Var = new j3(this$0.g().map, normalVariable);
                this$0.f6740e.put(teachModel, j3Var);
                this$0.g().map.u.g(j3Var);
            }
        }
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "全局通用事件采集";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        cn.mucang.android.jiakaoyi.mapcollect.render.f fVarA = cn.mucang.android.jiakaoyi.mapcollect.manager.map.x0.f5139a.a(String.valueOf(ExamSiteUtil.e(0L)));
        if (fVarA != null) {
            TeachModelEditor teachModelEditor = TeachModelEditor.f6857a;
            if (teachModelEditor.b() != null) {
                List<TeachModel> list = this.f6739d;
                StepTeachModelActivity.b bVarB = teachModelEditor.b();
                kotlin.jvm.internal.r.c(bVarB);
                list.addAll(bVarB.c());
                this.f6742g = fVarA;
                g().titleTv.setText(teachModelEditor.j());
                g().backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.k
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        CollectGlobalActivity.v(this.f6838a, view);
                    }
                });
                g().menuRv.setLayoutManager(new LinearLayoutManager(this, 1, false));
                g().menuRv.setAdapter(this.f6741f);
                this.f6741f.i(this.f6739d);
                g().addTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.h
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        CollectGlobalActivity.w(this.f6819a, view);
                    }
                });
                MapView mapView = g().map;
                kotlin.jvm.internal.r.d(mapView, "viewBinding.map");
                MapRender.a aVar = new MapRender.a(this, mapView);
                aVar.b(new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.i
                    @Override // cn.mucang.android.jiakaoyi.framework.h.b
                    public final void callback(Object obj) {
                        CollectGlobalActivity.x(this.f6829a, (Boolean) obj);
                    }
                });
                this.b = aVar.a();
                return;
            }
        }
        cn.mucang.android.core.utils.u.h("暂无地图数据");
        finish();
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        MapRender mapRender = this.b;
        if (mapRender == null) {
            return;
        }
        mapRender.d();
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onPause() {
        super.onPause();
        MapRender mapRender = this.b;
        if (mapRender == null) {
            return;
        }
        mapRender.k();
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        MapRender mapRender = this.b;
        if (mapRender == null) {
            return;
        }
        mapRender.l();
    }
}
