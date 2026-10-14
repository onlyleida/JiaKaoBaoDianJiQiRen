package cn.mucang.android.jiakaoyi.teachingk2.collect;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.util.SparseArray;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.hpmap.render.b2.B2RenderModel;
import cn.mucang.android.jiakaoyi.hpmap.render.c2.K2RenderModel;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.manager.map.x0;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.DataChangedDialog;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.ExitDialog;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.b2;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.GroupBindModel;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.StepGroupModel;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.ActivityTeachBindStepBinding;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.ItemStepMenuBinding;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u0000 72\b\u0012\u0004\u0012\u00020\u00020\u0001:\u000278B\u0005¢\u0006\u0002\u0010\u0003J\u0018\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\b2\u0006\u0010 \u001a\u00020\tH\u0002J\u001a\u0010!\u001a\u00020\u001e2\u0010\b\u0002\u0010\"\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010#H\u0002J\u0016\u0010$\u001a\b\u0012\u0004\u0012\u00020\b0%2\u0006\u0010&\u001a\u00020'H\u0002J\u0016\u0010(\u001a\b\u0012\u0004\u0012\u00020)0%2\u0006\u0010&\u001a\u00020'H\u0002J\b\u0010*\u001a\u00020\tH\u0016J\b\u0010+\u001a\u00020\u001eH\u0014J\b\u0010,\u001a\u00020\u001eH\u0002J\b\u0010-\u001a\u00020\u001eH\u0014J\b\u0010.\u001a\u00020\u001eH\u0014J\b\u0010/\u001a\u00020\u001eH\u0014J\u0010\u00100\u001a\u00020\u001e2\u0006\u00101\u001a\u00020\u001cH\u0003J\u0010\u00102\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\bH\u0002J\u0010\u00103\u001a\u00020\u001e2\u0006\u0010&\u001a\u00020'H\u0002J\u0016\u00104\u001a\u00020\u001e2\f\u00105\u001a\b\u0012\u0004\u0012\u00020\u001c0%H\u0003J\b\u00106\u001a\u00020\u001eH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010\u0006\u001a\u001e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007j\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t`\nX\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010\u000b\u001a\u001e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\f0\u0007j\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\f`\nX\u0082\u0004¢\u0006\u0002\n\u0000RF\u0010\r\u001a:\u00126\u00124\u0012\u0004\u0012\u00020\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\u000f0\u0007j\u001e\u0012\u0004\u0012\u00020\t\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\t0\u000fj\b\u0012\u0004\u0012\u00020\t`\u0010`\n0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u0016\u001a\u00020\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u0017\u0010\u0018R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e¢\u0006\u0002\n\u0000¨\u00069"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityTeachBindStepBinding;", "()V", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "boundaryGroups", "Ljava/util/HashMap;", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/BoundDetector;", "", "Lkotlin/collections/HashMap;", "boundaryLayers", "Lcn/mucang/android/jiakaoyi/hpmap/view/layer/MapBaseLayer;", "groupMap", "Landroid/util/SparseArray;", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "hasChanged", "", "onClickListener", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;", "programmeId", "getProgrammeId", "()Ljava/lang/String;", "programmeId$delegate", "Lkotlin/Lazy;", "selectGroup", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/StepGroupModel;", "addBindLayer", "", "boundary", "group", "bindStep", "onFinish", "Lkotlin/Function0;", "getCollision", "", "data", "Lcn/mucang/android/jiakaoyi/mapcollect/render/IRenderData;", "getRenderModel", "Lcn/mucang/android/jiakaoyi/hpmap/render/ExamSiteRenderCallback;", "getStatName", "init", "loadData", "onDestroy", "onPause", "onResume", "selectMap", "model", "showAddGroupDialog", "showBindLayers", "showGroup", "list", "showStepLayers", "Companion", "TeachBindStepBinder", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TeachBindStepActivity extends BaseViewBindingActivity<ActivityTeachBindStepBinding> {
    public static final a j = new a(null);
    private final Lazy b = kotlin.i.b(new Function0<String>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.TeachBindStepActivity$programmeId$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final String invoke() {
            String stringExtra = this.this$0.getIntent().getStringExtra("key.programmeId");
            return stringExtra == null ? "" : stringExtra;
        }
    });
    private final com.drakeet.multitype.f c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.framework.h.b<Pos> f6477d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final SparseArray<HashMap<String, HashSet<String>>> f6478e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final HashMap<cn.mucang.android.jiakaoyi.hpmap.a.a.b, cn.mucang.android.jiakaoyi.hpmap.view.p.k> f6479f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final HashMap<cn.mucang.android.jiakaoyi.hpmap.a.a.b, String> f6480g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private StepGroupModel f6481h;
    private boolean i;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity$Companion;", "", "()V", "KEY_PROGRAMME_ID", "", "launch", "", "context", "Landroid/content/Context;", "programmeId", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context, String programmeId) {
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(programmeId, "programmeId");
            Intent intent = new Intent(context, (Class<?>) TeachBindStepActivity.class);
            intent.putExtra("key.programmeId", programmeId);
            kotlin.v vVar = kotlin.v.f15822a;
            ActivityUtils.c(context, intent);
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0017¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity$TeachBindStepBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/StepGroupModel;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemStepMenuBinding;", "(Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class b extends ViewBindingBinder<StepGroupModel, ItemStepMenuBinding> {
        final /* synthetic */ TeachBindStepActivity b;

        public b(TeachBindStepActivity this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this.b = this$0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void p(TeachBindStepActivity this$0, StepGroupModel item, View view) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(item, "$item");
            this$0.M(item);
        }

        @Override // com.drakeet.multitype.c
        @SuppressLint({"SetTextI18n"})
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public void c(ViewBindingHolder<ItemStepMenuBinding> holder, final StepGroupModel item) {
            kotlin.jvm.internal.r.e(holder, "holder");
            kotlin.jvm.internal.r.e(item, "item");
            Step stepFindWithType = Step.findWithType(item.getStep());
            ((ItemStepMenuBinding) holder.getViewBinding()).stepTv.setText(kotlin.jvm.internal.r.m(stepFindWithType.getStepName(), b2.t(stepFindWithType, item.getStepDirection())));
            ((ItemStepMenuBinding) holder.getViewBinding()).stepTv.setSelected(kotlin.jvm.internal.r.a(item, this.b.f6481h));
            TextView textView = ((ItemStepMenuBinding) holder.getViewBinding()).stepTv;
            final TeachBindStepActivity teachBindStepActivity = this.b;
            textView.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.r
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TeachBindStepActivity.b.p(teachBindStepActivity, item, view);
                }
            });
        }
    }

    public TeachBindStepActivity() {
        com.drakeet.multitype.f fVar = new com.drakeet.multitype.f(null, 0, null, 7, null);
        fVar.g(StepGroupModel.class, new b(this));
        kotlin.v vVar = kotlin.v.f15822a;
        this.c = fVar;
        this.f6477d = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.q
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                TeachBindStepActivity.L(this.f6537a, (Pos) obj);
            }
        };
        this.f6478e = new SparseArray<>();
        this.f6479f = new HashMap<>();
        this.f6480g = new HashMap<>();
    }

    private final void H() {
        new cn.mucang.android.jiakaoyi.framework.base.dialog.u(this).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.u
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() {
                TeachBindStepActivity.I(this.f6736a);
            }
        }, "正在加载数据", "加载失败");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I(final TeachBindStepActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        try {
            final List<StepGroupModel> list = new cn.mucang.android.jiakaoyi.teachingk2.collect.render.api.b().r(this$0.v());
            kotlin.jvm.internal.r.d(list, "list");
            for (StepGroupModel stepGroupModel : list) {
                if (stepGroupModel.getStepDirection() == 0) {
                    int step = stepGroupModel.getStep();
                    if (step == Step.K2_DaoCheRuKu.type) {
                        stepGroupModel.setStepDirection(2);
                    } else if (step == Step.K2_ZhiJiaoZhuanWan.type) {
                        stepGroupModel.setStepDirection(1);
                    } else if (step == Step.K2_SQuXian.type) {
                        stepGroupModel.setStepDirection(2);
                    }
                }
            }
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.s
                @Override // java.lang.Runnable
                public final void run() {
                    TeachBindStepActivity.J(list, this$0);
                }
            });
        } catch (Exception unused) {
            cn.mucang.android.core.utils.u.h("加载失败");
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v
                @Override // java.lang.Runnable
                public final void run() {
                    TeachBindStepActivity.K(this.f6737a);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J(List list, TeachBindStepActivity this$0) {
        List listP0;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (cn.mucang.android.core.utils.g.b(list)) {
            this$0.g().emptyGroup.setVisibility(0);
            return;
        }
        this$0.f6478e.clear();
        kotlin.jvm.internal.r.d(list, "list");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            StepGroupModel stepGroupModel = (StepGroupModel) it.next();
            HashMap<String, HashSet<String>> map = new HashMap<>();
            List<GroupBindModel> group = stepGroupModel.getGroup();
            if (group != null) {
                for (GroupBindModel groupBindModel : group) {
                    String parkingSpaceIds = groupBindModel.getParkingSpaceIds();
                    HashSet<String> hashSet = null;
                    if (parkingSpaceIds != null && (listP0 = StringsKt__StringsKt.p0(parkingSpaceIds, new String[]{"@"}, false, 0, 6, null)) != null) {
                        hashSet = CollectionsKt___CollectionsKt.K0(listP0);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet<>();
                    }
                    String parkingSpaceGroup = groupBindModel.getParkingSpaceGroup();
                    if (parkingSpaceGroup == null) {
                        parkingSpaceGroup = "";
                    }
                    map.put(parkingSpaceGroup, hashSet);
                }
            }
            this$0.f6478e.put(cn.mucang.android.jiakaoyi.mapcollect.render.f.getKey(stepGroupModel.getStep(), stepGroupModel.getStepDirection()), map);
        }
        this$0.P(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K(TeachBindStepActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.g().emptyGroup.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L(TeachBindStepActivity this$0, Pos pos) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        cn.mucang.android.jiakaoyi.mapcollect.render.f data = x0.f5139a.a(String.valueOf(ExamSiteUtil.e(0L)));
        kotlin.jvm.internal.r.d(data, "data");
        for (cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar : this$0.u(data)) {
            if (bVar.w(pos)) {
                this$0.N(bVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"NotifyDataSetChanged"})
    public final void M(StepGroupModel stepGroupModel) {
        if (kotlin.jvm.internal.r.a(this.f6481h, stepGroupModel)) {
            return;
        }
        if (this.i) {
            new DataChangedDialog(this, new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.TeachBindStepActivity$selectMap$1
                {
                    super(0);
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    TeachBindStepActivity.r(this.this$0, null, 1, null);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ kotlin.v invoke() {
                    invoke2();
                    return kotlin.v.f15822a;
                }
            }).show();
            return;
        }
        this.f6481h = stepGroupModel;
        this.c.notifyDataSetChanged();
        Q();
    }

    private final void N(final cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) {
        if (this.f6481h == null) {
            return;
        }
        StepGroupModel stepGroupModel = this.f6481h;
        kotlin.jvm.internal.r.c(stepGroupModel);
        new ChooseGroupDialog(this, stepGroupModel, this.f6480g.get(bVar), new Function1<String, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.TeachBindStepActivity$showAddGroupDialog$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(String group) {
                kotlin.jvm.internal.r.e(group, "group");
                SparseArray sparseArray = this.this$0.f6478e;
                StepGroupModel stepGroupModel2 = this.this$0.f6481h;
                int step = stepGroupModel2 == null ? 0 : stepGroupModel2.getStep();
                StepGroupModel stepGroupModel3 = this.this$0.f6481h;
                HashMap map = (HashMap) sparseArray.get(cn.mucang.android.jiakaoyi.mapcollect.render.f.getKey(step, stepGroupModel3 != null ? stepGroupModel3.getStepDirection() : 0));
                TeachBindStepActivity teachBindStepActivity = this.this$0;
                cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar2 = bVar;
                kotlin.jvm.internal.r.d(map, "map");
                for (Map.Entry entry : map.entrySet()) {
                    if (((HashSet) entry.getValue()).contains(bVar2.getKey())) {
                        if (!kotlin.jvm.internal.r.a(entry.getKey(), group)) {
                            teachBindStepActivity.i = true;
                            ((HashSet) entry.getValue()).remove(bVar2.getKey());
                            break;
                        }
                        return;
                    }
                }
                if (!kotlin.jvm.internal.r.a(group, "不限方案")) {
                    TeachBindStepActivity teachBindStepActivity2 = this.this$0;
                    cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar3 = bVar;
                    for (Map.Entry entry2 : map.entrySet()) {
                        if (kotlin.jvm.internal.r.a(entry2.getKey(), group)) {
                            teachBindStepActivity2.i = true;
                            ((HashSet) entry2.getValue()).add(bVar3.getKey());
                            break;
                        }
                    }
                }
                this.this$0.p(bVar, group);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(String str) {
                invoke2(str);
                return kotlin.v.f15822a;
            }
        }).show();
    }

    private final void O(cn.mucang.android.jiakaoyi.mapcollect.render.f fVar) {
        for (cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar : u(fVar)) {
            SparseArray<HashMap<String, HashSet<String>>> sparseArray = this.f6478e;
            StepGroupModel stepGroupModel = this.f6481h;
            int step = stepGroupModel == null ? 0 : stepGroupModel.getStep();
            StepGroupModel stepGroupModel2 = this.f6481h;
            HashMap<String, HashSet<String>> map = sparseArray.get(cn.mucang.android.jiakaoyi.mapcollect.render.f.getKey(step, stepGroupModel2 != null ? stepGroupModel2.getStepDirection() : 0));
            kotlin.jvm.internal.r.d(map, "map");
            for (Map.Entry<String, HashSet<String>> entry : map.entrySet()) {
                if (entry.getValue().contains(bVar.getKey())) {
                    p(bVar, entry.getKey());
                    break;
                }
            }
        }
    }

    @SuppressLint({"NotifyDataSetChanged"})
    private final void P(List<StepGroupModel> list) {
        this.f6481h = (StepGroupModel) kotlin.collections.s.c0(list);
        this.c.i(list);
        this.c.notifyDataSetChanged();
        Q();
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0061  */
    /* JADX WARN: Code duplicated, block: B:24:0x0065  */
    /* JADX WARN: Code duplicated, block: B:26:0x006d  */
    /* JADX WARN: Code duplicated, block: B:32:0x0079  */
    private final void Q() {
        StepGroupModel stepGroupModel;
        boolean z;
        cn.mucang.android.jiakaoyi.mapcollect.render.f data = x0.f5139a.a(String.valueOf(ExamSiteUtil.e(0L)));
        StepGroupModel stepGroupModel2 = this.f6481h;
        int step = stepGroupModel2 == null ? 0 : stepGroupModel2.getStep();
        StepGroupModel stepGroupModel3 = this.f6481h;
        cn.mucang.android.jiakaoyi.signal.pos.a bound = data.getBound(step, stepGroupModel3 == null ? 0 : stepGroupModel3.getStepDirection());
        kotlin.jvm.internal.r.d(data, "data");
        List<cn.mucang.android.jiakaoyi.hpmap.c.a> listW = w(data);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listW) {
            cn.mucang.android.jiakaoyi.hpmap.c.a aVar = (cn.mucang.android.jiakaoyi.hpmap.c.a) obj;
            boolean z2 = true;
            if (aVar instanceof K2RenderModel) {
                int i = ((K2RenderModel) aVar).stepDirection;
                StepGroupModel stepGroupModel4 = this.f6481h;
                if (!(stepGroupModel4 != null && i == stepGroupModel4.getStepDirection())) {
                    if (aVar instanceof B2RenderModel) {
                        int i2 = ((B2RenderModel) aVar).stepDirection;
                        stepGroupModel = this.f6481h;
                        if (stepGroupModel == null && i2 == stepGroupModel.getStepDirection()) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (!z) {
                            z2 = false;
                        }
                    } else {
                        z2 = false;
                    }
                }
            } else if (aVar instanceof B2RenderModel) {
                int i3 = ((B2RenderModel) aVar).stepDirection;
                stepGroupModel = this.f6481h;
                if (stepGroupModel == null) {
                    z = false;
                } else {
                    z = true;
                }
                if (!z) {
                    z2 = false;
                }
            } else {
                z2 = false;
            }
            if (z2) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            List<cn.mucang.android.jiakaoyi.hpmap.view.p.k> listCreateMapLayers = ((cn.mucang.android.jiakaoyi.hpmap.c.a) it.next()).createMapLayers(g().map, false, false);
            kotlin.jvm.internal.r.d(listCreateMapLayers, "it.createMapLayers(viewBinding.map, false, false)");
            arrayList2.addAll(listCreateMapLayers);
        }
        g().map.u.j();
        g().map.u.h(arrayList2);
        g().map.setCurrentZoom(cn.mucang.android.jiakaoyi.hpmap.view.r.a.a(bound.l(), bound.f(), g().map));
        g().map.setCurrentRotateDegrees(BitmapDescriptorFactory.HUE_RED);
        MapView mapView = g().map;
        Pos pos = bound.f5818e;
        mapView.i((float) pos.x, (float) pos.y);
        g().map.r();
        O(data);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p(cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, String str) {
        g().map.u.Q(this.f6479f.remove(bVar));
        this.f6480g.remove(bVar);
        if (n0.e(str) || kotlin.jvm.internal.r.a(str, "不限方案")) {
            return;
        }
        cn.mucang.android.jiakaoyi.hpmap.view.p.o.a aVar = new cn.mucang.android.jiakaoyi.hpmap.view.p.o.a(str, bVar.n(), cn.mucang.android.jiakaoyi.hpmap.b.a.b);
        aVar.a(-1);
        aVar.b(20.0f);
        cn.mucang.android.jiakaoyi.hpmap.view.p.o oVar = new cn.mucang.android.jiakaoyi.hpmap.view.p.o(g().map, aVar);
        g().map.u.g(oVar);
        this.f6479f.put(bVar, oVar);
        this.f6480g.put(bVar, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q(final Function0<kotlin.v> function0) {
        if (this.i) {
            new cn.mucang.android.jiakaoyi.framework.base.dialog.u(this).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.t
                @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
                public final void a() throws ApiException, InternalException, HttpException {
                    TeachBindStepActivity.s(this.f6735a, function0);
                }
            }, "正在绑定", "绑定失败");
        } else {
            cn.mucang.android.core.utils.u.h("未做修改，无需保存");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void r(TeachBindStepActivity teachBindStepActivity, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            function0 = null;
        }
        teachBindStepActivity.q(function0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(final TeachBindStepActivity this$0, final Function0 function0) throws ApiException, InternalException, HttpException {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        SparseArray<HashMap<String, HashSet<String>>> sparseArray = this$0.f6478e;
        StepGroupModel stepGroupModel = this$0.f6481h;
        int step = stepGroupModel == null ? 0 : stepGroupModel.getStep();
        StepGroupModel stepGroupModel2 = this$0.f6481h;
        HashMap<String, HashSet<String>> map = sparseArray.get(cn.mucang.android.jiakaoyi.mapcollect.render.f.getKey(step, stepGroupModel2 == null ? 0 : stepGroupModel2.getStepDirection()));
        ArrayList arrayList = new ArrayList();
        kotlin.jvm.internal.r.d(map, "map");
        for (Map.Entry<String, HashSet<String>> entry : map.entrySet()) {
            String key = entry.getKey();
            Iterator<T> it = entry.getValue().iterator();
            String str = "";
            while (it.hasNext()) {
                str = str + ((String) it.next()) + '@';
            }
            String strK0 = StringsKt__StringsKt.k0(str, "@");
            GroupBindModel groupBindModel = new GroupBindModel();
            groupBindModel.setParkingSpaceGroup(key);
            groupBindModel.setParkingSpaceIds(strK0);
            kotlin.v vVar = kotlin.v.f15822a;
            arrayList.add(groupBindModel);
        }
        cn.mucang.android.jiakaoyi.teachingk2.collect.render.api.b bVar = new cn.mucang.android.jiakaoyi.teachingk2.collect.render.api.b();
        String strV = this$0.v();
        StepGroupModel stepGroupModel3 = this$0.f6481h;
        int step2 = stepGroupModel3 == null ? 0 : stepGroupModel3.getStep();
        StepGroupModel stepGroupModel4 = this$0.f6481h;
        bVar.u(strV, step2, stepGroupModel4 == null ? 0 : stepGroupModel4.getStepDirection(), JSON.toJSONString(arrayList, SerializerFeature.DisableCircularReferenceDetect));
        cn.mucang.android.core.utils.u.h("绑定成功");
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.w
            @Override // java.lang.Runnable
            public final void run() {
                TeachBindStepActivity.t(this.f6922a, function0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(TeachBindStepActivity this$0, Function0 function0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.i = false;
        if (function0 == null) {
            return;
        }
        function0.invoke();
    }

    private final List<cn.mucang.android.jiakaoyi.hpmap.a.a.b> u(cn.mucang.android.jiakaoyi.mapcollect.render.f fVar) {
        StepGroupModel stepGroupModel = this.f6481h;
        if ((stepGroupModel == null ? null : Integer.valueOf(stepGroupModel.getStep())) != null) {
            StepGroupModel stepGroupModel2 = this.f6481h;
            Integer numValueOf = stepGroupModel2 == null ? null : Integer.valueOf(stepGroupModel2.getStep());
            kotlin.jvm.internal.r.c(numValueOf);
            Step stepFindWithType = Step.findWithType(numValueOf.intValue());
            if (stepFindWithType != null) {
                Map<Step, List<cn.mucang.android.jiakaoyi.hpmap.a.a.b>> collisions = fVar.getCollisions();
                List<cn.mucang.android.jiakaoyi.hpmap.a.a.b> list = collisions != null ? collisions.get(stepFindWithType) : null;
                return list == null ? kotlin.collections.u.j() : list;
            }
        }
        return kotlin.collections.u.j();
    }

    private final String v() {
        return (String) this.b.getValue();
    }

    private final List<cn.mucang.android.jiakaoyi.hpmap.c.a> w(cn.mucang.android.jiakaoyi.mapcollect.render.f fVar) {
        StepGroupModel stepGroupModel = this.f6481h;
        if ((stepGroupModel == null ? null : Integer.valueOf(stepGroupModel.getStep())) != null) {
            StepGroupModel stepGroupModel2 = this.f6481h;
            Integer numValueOf = stepGroupModel2 == null ? null : Integer.valueOf(stepGroupModel2.getStep());
            kotlin.jvm.internal.r.c(numValueOf);
            Step stepFindWithType = Step.findWithType(numValueOf.intValue());
            if (stepFindWithType != null) {
                Map<Step, List<cn.mucang.android.jiakaoyi.hpmap.c.a>> renders = fVar.getRenders();
                List<cn.mucang.android.jiakaoyi.hpmap.c.a> list = renders != null ? renders.get(stepFindWithType) : null;
                return list == null ? kotlin.collections.u.j() : list;
            }
        }
        return kotlin.collections.u.j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(final TeachBindStepActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.i) {
            new ExitDialog(this$0, new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.TeachBindStepActivity$init$1$1
                {
                    super(0);
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    this.this$0.finish();
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ kotlin.v invoke() {
                    invoke2();
                    return kotlin.v.f15822a;
                }
            }, new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.TeachBindStepActivity$init$1$2
                {
                    super(0);
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    final TeachBindStepActivity teachBindStepActivity = this.this$0;
                    teachBindStepActivity.q(new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.TeachBindStepActivity$init$1$2.1
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public /* bridge */ /* synthetic */ kotlin.v invoke() {
                            invoke2();
                            return kotlin.v.f15822a;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2() {
                            teachBindStepActivity.finish();
                        }
                    });
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ kotlin.v invoke() {
                    invoke2();
                    return kotlin.v.f15822a;
                }
            }).show();
        } else {
            this$0.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(TeachBindStepActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        r(this$0, null, 1, null);
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "库位编辑";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        g().closeTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TeachBindStepActivity.x(this.f6536a, view);
            }
        });
        g().menuRv.setLayoutManager(new LinearLayoutManager(this, 1, false));
        g().menuRv.setAdapter(this.c);
        g().map.setOnClickListener(this.f6477d);
        g().saveTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TeachBindStepActivity.y(this.f6535a, view);
            }
        });
        H();
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
