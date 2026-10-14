package cn.mucang.android.jiakaoyi.teachingk2.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.signal.car.CarItemModel;
import cn.mucang.android.jiakaoyi.signal.car.LocalCarModel;
import cn.mucang.android.jiakaoyi.signal.car.RealCarSelectManager;
import cn.mucang.android.jiakaoyi.signal.center.model.GearType;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ActivityTeachPlanListBinding;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ItemTeachPlanBinding;
import cn.mucang.android.jiakaoyi.teachingk2.collect.K2TeachCollectActivity;
import cn.mucang.android.jiakaoyi.teachingk2.collect.TeachBindStepActivity;
import cn.mucang.android.jiakaoyi.teachingk2.collect.v2.SelectStepActivity;
import cn.mucang.android.jiakaoyi.teachingk2.collect.v2.TeachModelEditor;
import cn.mucang.android.jiakaoyi.teachingk2.model.TeachPlanItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.teachplan.TeachPlanListViewModel;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.io.Serializable;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000 \u001b2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001b\u001cB\u0005¢\u0006\u0002\u0010\u0003J\u0019\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0012H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0013J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0014J\b\u0010\u0018\u001a\u00020\u0017H\u0016J\u0011\u0010\u0019\u001a\u00020\u0017H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u001aR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\tR\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001d"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTeachPlanListBinding;", "()V", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "coach", "", "getCoach", "()Z", "coach$delegate", "Lkotlin/Lazy;", "examSite", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "listViewModel", "Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;", "enableProgramme", "item", "Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;", "(Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getStatName", "", "init", "", "onBackPressed", "syncRes", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "TeachPlanItemBinder", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@SuppressLint({"NotifyDataSetChanged"})
public final class TeachProgrammeManagerActivity extends BaseViewBindingActivity<ActivityTeachPlanListBinding> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f8153f = new a(null);
    private final com.drakeet.multitype.f b = new com.drakeet.multitype.f(null, 0, null, 7, null);
    private final Lazy c = kotlin.i.b(new Function0<Boolean>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.TeachProgrammeManagerActivity$coach$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            return Boolean.valueOf(this.this$0.getIntent().getBooleanExtra("key.roleCoach", true));
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ExamSiteModel f8154d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TeachPlanListViewModel f8155e;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$TeachPlanItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemTeachPlanBinding;", "(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class TeachPlanItemBinder extends ViewBindingBinder<TeachPlanItemModel, ItemTeachPlanBinding> {
        final /* synthetic */ TeachProgrammeManagerActivity b;

        public TeachPlanItemBinder(TeachProgrammeManagerActivity this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this.b = this$0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void u(TeachProgrammeManagerActivity this$0, TeachPlanItemModel item, View view) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(item, "$item");
            ExamSiteModel examSiteModel = this$0.f8154d;
            kotlin.jvm.internal.r.c(examSiteModel);
            long j = examSiteModel.examSiteId;
            long j2 = item.id;
            TeachPlanListViewModel teachPlanListViewModel = this$0.f8155e;
            if (teachPlanListViewModel != null) {
                cn.mucang.android.jiakaoyi.teachingk2.teachplan.c.s.a(this$0, j, j2, teachPlanListViewModel);
            } else {
                kotlin.jvm.internal.r.u("listViewModel");
                throw null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void v(TeachProgrammeManagerActivity this$0, TeachPlanItemModel item, View view) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(item, "$item");
            TeachPlanListViewModel teachPlanListViewModel = this$0.f8155e;
            if (teachPlanListViewModel != null) {
                cn.mucang.android.jiakaoyi.teachingk2.teachplan.c.s.d(this$0, item, teachPlanListViewModel, false);
            } else {
                kotlin.jvm.internal.r.u("listViewModel");
                throw null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void w(TeachPlanItemModel item, View view) {
            kotlin.jvm.internal.r.e(item, "$item");
            if (ExamSiteUtil.e(0L) <= 0) {
                cn.mucang.android.core.utils.u.h("没有考场数据，请先设置考场");
                return;
            }
            cn.mucang.android.jiakaoyi.mapcollect.render.f fVarA = cn.mucang.android.jiakaoyi.mapcollect.manager.map.x0.f5139a.a(String.valueOf(ExamSiteUtil.e(0L)));
            if ((fVarA == null ? null : fVarA.getConverter()) == null || fVarA.getCarData() == null) {
                cn.mucang.android.core.utils.u.h("数据正在准备中，请稍后");
                return;
            }
            TeachModelEditor.o(item.version);
            if (item.version >= 2) {
                SelectStepActivity.a aVar = SelectStepActivity.b;
                Context context = view.getContext();
                kotlin.jvm.internal.r.d(context, "it.context");
                aVar.a(context, String.valueOf(item.id));
                return;
            }
            if (AppUtils.b()) {
                cn.mucang.android.core.utils.u.h("暂不支持v1.0方案编辑");
                return;
            }
            K2TeachCollectActivity.a aVar2 = K2TeachCollectActivity.k;
            Context context2 = view.getContext();
            kotlin.jvm.internal.r.d(context2, "it.context");
            aVar2.a(context2, String.valueOf(item.id));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void x(TeachProgrammeManagerActivity this$0, TeachPlanItemModel item, View view) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(item, "$item");
            TeachPlanListViewModel teachPlanListViewModel = this$0.f8155e;
            if (teachPlanListViewModel != null) {
                cn.mucang.android.jiakaoyi.teachingk2.teachplan.c.s.d(this$0, item, teachPlanListViewModel, true);
            } else {
                kotlin.jvm.internal.r.u("listViewModel");
                throw null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void y(TeachProgrammeManagerActivity this$0, TeachPlanItemModel item, View view) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(item, "$item");
            TeachBindStepActivity.j.a(this$0, String.valueOf(item.id));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void z(TeachPlanItemModel item, TeachProgrammeManagerActivity this$0, TeachPlanItemBinder this$1, ViewBindingHolder holder, View view) {
            CarItemModel config;
            kotlin.jvm.internal.r.e(item, "$item");
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(this$1, "this$1");
            kotlin.jvm.internal.r.e(holder, "$holder");
            if ((item.gearType == GearType.manual.type && !cn.mucang.android.jiakaoyi.signal.utils.f.c()) || (item.gearType == GearType.auto.type && !cn.mucang.android.jiakaoyi.signal.utils.f.b())) {
                cn.mucang.android.core.utils.u.h("挡位不匹配，不可启用此方案");
                return;
            }
            int i = item.universalModelNum;
            if (i != 0) {
                LocalCarModel localCarModelB = RealCarSelectManager.b();
                boolean z = false;
                if (localCarModelB != null && (config = localCarModelB.getConfig()) != null && i == config.getCode()) {
                    z = true;
                }
                if (!z) {
                    cn.mucang.android.core.utils.u.h("车型不匹配，不可启用此方案");
                    return;
                }
            }
            kotlinx.coroutines.g.b(androidx.lifecycle.s.a(this$0), null, null, new TeachProgrammeManagerActivity$TeachPlanItemBinder$onBindViewHolder$6$1(this$0, item, this$1, holder, null), 3, null);
        }

        @Override // com.drakeet.multitype.c
        /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
        public void c(final ViewBindingHolder<ItemTeachPlanBinding> holder, final TeachPlanItemModel item) {
            String str;
            kotlin.jvm.internal.r.e(holder, "holder");
            kotlin.jvm.internal.r.e(item, "item");
            int i = this.b.n() ? 8 : 0;
            ((ItemTeachPlanBinding) holder.getViewBinding()).delPlan.setVisibility(i);
            ((ItemTeachPlanBinding) holder.getViewBinding()).editBaseInfo.setVisibility(i);
            ((ItemTeachPlanBinding) holder.getViewBinding()).editPlan.setVisibility(i);
            ((ItemTeachPlanBinding) holder.getViewBinding()).copyPlan.setVisibility(i);
            ((ItemTeachPlanBinding) holder.getViewBinding()).stepPlan.setVisibility(i);
            ExamSiteModel examSiteModel = this.b.f8154d;
            kotlin.jvm.internal.r.c(examSiteModel);
            boolean z = cn.mucang.android.jiakaoyi.teachingk2.teachplan.a.a(examSiteModel.examSiteId) == item.id;
            ((ItemTeachPlanBinding) holder.getViewBinding()).enablePlan.setText(z ? "已启用" : "启用");
            ((ItemTeachPlanBinding) holder.getViewBinding()).enablePlan.setSelected(z);
            ((ItemTeachPlanBinding) holder.getViewBinding()).name.setText(item.programmeName);
            ((ItemTeachPlanBinding) holder.getViewBinding()).carName.setText(cn.mucang.android.core.utils.n0.f(item.universalModelName) ? "全部车型" : item.universalModelName);
            TextView textView = ((ItemTeachPlanBinding) holder.getViewBinding()).gearName;
            int i2 = item.gearType;
            if (i2 != 1) {
                str = i2 != 2 ? "全部挡位" : "自动挡";
            } else {
                str = "手动挡";
            }
            textView.setText(str);
            ((ItemTeachPlanBinding) holder.getViewBinding()).versionName.setText(item.getVersionText());
            TextView textView2 = ((ItemTeachPlanBinding) holder.getViewBinding()).delPlan;
            final TeachProgrammeManagerActivity teachProgrammeManagerActivity = this.b;
            textView2.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.i0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TeachProgrammeManagerActivity.TeachPlanItemBinder.u(teachProgrammeManagerActivity, item, view);
                }
            });
            TextView textView3 = ((ItemTeachPlanBinding) holder.getViewBinding()).editBaseInfo;
            final TeachProgrammeManagerActivity teachProgrammeManagerActivity2 = this.b;
            textView3.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.h0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TeachProgrammeManagerActivity.TeachPlanItemBinder.v(teachProgrammeManagerActivity2, item, view);
                }
            });
            ((ItemTeachPlanBinding) holder.getViewBinding()).editPlan.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.d0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TeachProgrammeManagerActivity.TeachPlanItemBinder.w(item, view);
                }
            });
            TextView textView4 = ((ItemTeachPlanBinding) holder.getViewBinding()).copyPlan;
            final TeachProgrammeManagerActivity teachProgrammeManagerActivity3 = this.b;
            textView4.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.e0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TeachProgrammeManagerActivity.TeachPlanItemBinder.x(teachProgrammeManagerActivity3, item, view);
                }
            });
            TextView textView5 = ((ItemTeachPlanBinding) holder.getViewBinding()).stepPlan;
            final TeachProgrammeManagerActivity teachProgrammeManagerActivity4 = this.b;
            textView5.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.g0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TeachProgrammeManagerActivity.TeachPlanItemBinder.y(teachProgrammeManagerActivity4, item, view);
                }
            });
            TextView textView6 = ((ItemTeachPlanBinding) holder.getViewBinding()).enablePlan;
            final TeachProgrammeManagerActivity teachProgrammeManagerActivity5 = this.b;
            textView6.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.f0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TeachProgrammeManagerActivity.TeachPlanItemBinder.z(item, teachProgrammeManagerActivity5, this, holder, view);
                }
            });
        }
    }

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0007J \u0010\u000e\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$Companion;", "", "()V", "KEY_ROLE_COACH", "", "KEY_TRAIN_SITE", "createIntent", "Landroid/content/Intent;", "context", "Landroid/content/Context;", "coach", "", "examSite", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "launch", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final Intent a(Context context, boolean z, ExamSiteModel examSite) {
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(examSite, "examSite");
            Intent intent = new Intent(context, (Class<?>) TeachProgrammeManagerActivity.class);
            intent.putExtra("key.roleCoach", z);
            intent.putExtra("key.trainSite", examSite);
            return intent;
        }

        public final void b(Context context, boolean z, ExamSiteModel examSite) {
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(examSite, "examSite");
            ActivityUtils.c(context, a(context, z, examSite));
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f8156a;

        static {
            int[] iArr = new int[LoadingState.values().length];
            iArr[LoadingState.Loading.ordinal()] = 1;
            iArr[LoadingState.Fail.ordinal()] = 2;
            f8156a = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean n() {
        return ((Boolean) this.c.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(TeachProgrammeManagerActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(TeachProgrammeManagerActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        ExamSiteModel examSiteModel = this$0.f8154d;
        kotlin.jvm.internal.r.c(examSiteModel);
        long j = examSiteModel.examSiteId;
        TeachPlanListViewModel teachPlanListViewModel = this$0.f8155e;
        if (teachPlanListViewModel != null) {
            cn.mucang.android.jiakaoyi.teachingk2.teachplan.c.r.a(this$0, j, teachPlanListViewModel);
        } else {
            kotlin.jvm.internal.r.u("listViewModel");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(TeachProgrammeManagerActivity this$0, List it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        com.drakeet.multitype.f fVar = this$0.b;
        kotlin.jvm.internal.r.d(it, "it");
        fVar.i(it);
        this$0.b.notifyDataSetChanged();
        if (it.isEmpty()) {
            this$0.g().stateLayout.d();
        } else {
            this$0.g().stateLayout.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(TeachProgrammeManagerActivity this$0, LoadingState loadingState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : b.f8156a[loadingState.ordinal()];
        if (i == 1) {
            this$0.g().stateLayout.f();
        } else {
            if (i != 2) {
                return;
            }
            this$0.g().stateLayout.g();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(TeachProgrammeManagerActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "教学方案列表";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        Serializable serializableExtra = getIntent().getSerializableExtra("key.trainSite");
        ExamSiteModel examSiteModel = serializableExtra instanceof ExamSiteModel ? (ExamSiteModel) serializableExtra : null;
        this.f8154d = examSiteModel;
        if ((examSiteModel == null ? 0L : examSiteModel.examSiteId) <= 0) {
            cn.mucang.android.core.utils.u.h("场地 id 错误");
            finish();
            return;
        }
        g().title.titleTv.setText("教学方案列表");
        g().title.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.l0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TeachProgrammeManagerActivity.o(this.f8230a, view);
            }
        });
        this.b.g(TeachPlanItemModel.class, new TeachPlanItemBinder(this));
        g().recyclerView.setLayoutManager(new LinearLayoutManager(this));
        g().recyclerView.setAdapter(this.b);
        if (n()) {
            g().addPlan.setVisibility(8);
        } else {
            g().addPlan.setVisibility(0);
        }
        g().addPlan.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.k0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TeachProgrammeManagerActivity.p(this.f8228a, view);
            }
        });
        androidx.lifecycle.j0 j0VarA = new androidx.lifecycle.m0(this).a(TeachPlanListViewModel.class);
        kotlin.jvm.internal.r.d(j0VarA, "ViewModelProvider(this).…istViewModel::class.java)");
        TeachPlanListViewModel teachPlanListViewModel = (TeachPlanListViewModel) j0VarA;
        this.f8155e = teachPlanListViewModel;
        if (teachPlanListViewModel == null) {
            kotlin.jvm.internal.r.u("listViewModel");
            throw null;
        }
        teachPlanListViewModel.a().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.j0
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                TeachProgrammeManagerActivity.q(this.f8226a, (List) obj);
            }
        });
        TeachPlanListViewModel teachPlanListViewModel2 = this.f8155e;
        if (teachPlanListViewModel2 == null) {
            kotlin.jvm.internal.r.u("listViewModel");
            throw null;
        }
        teachPlanListViewModel2.b().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.c0
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                TeachProgrammeManagerActivity.r(this.f8169a, (LoadingState) obj);
            }
        });
        TeachPlanListViewModel teachPlanListViewModel3 = this.f8155e;
        if (teachPlanListViewModel3 == null) {
            kotlin.jvm.internal.r.u("listViewModel");
            throw null;
        }
        ExamSiteModel examSiteModel2 = this.f8154d;
        kotlin.jvm.internal.r.c(examSiteModel2);
        teachPlanListViewModel3.c(examSiteModel2.examSiteId);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object m(TeachPlanItemModel teachPlanItemModel, Continuation<? super Boolean> continuation) throws Throwable {
        TeachProgrammeManagerActivity$enableProgramme$1 teachProgrammeManagerActivity$enableProgramme$1;
        Ref$BooleanRef ref$BooleanRef;
        if (continuation instanceof TeachProgrammeManagerActivity$enableProgramme$1) {
            teachProgrammeManagerActivity$enableProgramme$1 = (TeachProgrammeManagerActivity$enableProgramme$1) continuation;
            int i = teachProgrammeManagerActivity$enableProgramme$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                teachProgrammeManagerActivity$enableProgramme$1.label = i - Integer.MIN_VALUE;
            } else {
                teachProgrammeManagerActivity$enableProgramme$1 = new TeachProgrammeManagerActivity$enableProgramme$1(this, continuation);
            }
        } else {
            teachProgrammeManagerActivity$enableProgramme$1 = new TeachProgrammeManagerActivity$enableProgramme$1(this, continuation);
        }
        Object obj = teachProgrammeManagerActivity$enableProgramme$1.result;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i2 = teachProgrammeManagerActivity$enableProgramme$1.label;
        if (i2 == 0) {
            kotlin.k.b(obj);
            Ref$BooleanRef ref$BooleanRef2 = new Ref$BooleanRef();
            CoroutineDispatcher coroutineDispatcherB = kotlinx.coroutines.w0.b();
            TeachProgrammeManagerActivity$enableProgramme$2 teachProgrammeManagerActivity$enableProgramme$2 = new TeachProgrammeManagerActivity$enableProgramme$2(ref$BooleanRef2, teachPlanItemModel, null);
            teachProgrammeManagerActivity$enableProgramme$1.L$0 = ref$BooleanRef2;
            teachProgrammeManagerActivity$enableProgramme$1.label = 1;
            if (kotlinx.coroutines.f.c(coroutineDispatcherB, teachProgrammeManagerActivity$enableProgramme$2, teachProgrammeManagerActivity$enableProgramme$1) == objD) {
                return objD;
            }
            ref$BooleanRef = ref$BooleanRef2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ref$BooleanRef = (Ref$BooleanRef) teachProgrammeManagerActivity$enableProgramme$1.L$0;
            kotlin.k.b(obj);
        }
        return kotlin.coroutines.jvm.internal.a.a(ref$BooleanRef.element);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        boolean z;
        ExamSiteModel examSiteModel = this.f8154d;
        kotlin.jvm.internal.r.c(examSiteModel);
        long jA = cn.mucang.android.jiakaoyi.teachingk2.teachplan.a.a(examSiteModel.examSiteId);
        Iterator<T> it = this.b.c().iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            Object next = it.next();
            if ((next instanceof TeachPlanItemModel) && ((TeachPlanItemModel) next).id == jA) {
                z = true;
                break;
            }
        }
        if (!z) {
            new JCommonDialog(this, new JCommonDialog.DialogParams("还未启用教学方案，请先启用教学方案", "", "取消", new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.b0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TeachProgrammeManagerActivity.x(this.f8166a, view);
                }
            }, "确定", (View.OnClickListener) null, false, 64, (kotlin.jvm.internal.o) null)).show();
        } else {
            setResult(-1);
            finish();
        }
    }

    public final Object y(Continuation<? super kotlin.v> continuation) {
        Object objC = kotlinx.coroutines.f.c(kotlinx.coroutines.w0.b(), new TeachProgrammeManagerActivity$syncRes$2(null), continuation);
        return objC == kotlin.coroutines.intrinsics.b.d() ? objC : kotlin.v.f15822a;
    }
}
