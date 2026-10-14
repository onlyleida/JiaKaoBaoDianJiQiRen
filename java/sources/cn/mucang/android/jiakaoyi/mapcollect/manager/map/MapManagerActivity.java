package cn.mucang.android.jiakaoyi.mapcollect.manager.map;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.core.widget.StateLayout;
import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.mapcollect.databinding.ActivityMapManagerBinding;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.task.SafeRunnable;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 \u00142\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0014B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0014J\b\u0010\u0013\u001a\u00020\u0012H\u0014R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityMapManagerBinding;", "()V", "forChoose", "", "getForChoose", "()Z", "forChoose$delegate", "Lkotlin/Lazy;", "loadingDialog", "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;", "needRefresh", "viewModel", "Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;", "getStatName", "", "init", "", "onResume", "Companion", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class MapManagerActivity extends BaseViewBindingActivity<ActivityMapManagerBinding> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f5067f = new a(null);
    private MapViewModel c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private JLoadingDialog f5068d;
    private boolean b = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f5069e = kotlin.i.b(new Function0<Boolean>() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.MapManagerActivity$forChoose$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            return Boolean.valueOf(this.this$0.getIntent().getBooleanExtra("key.forChoose", false));
        }
    });

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity$Companion;", "", "()V", "KEY_CHOOSE_RESULT", "", "KEY_FOR_CHOOSE", "createIntentForResult", "Landroid/content/Intent;", "activity", "Landroid/app/Activity;", "launch", "", "context", "Landroid/content/Context;", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context) {
            kotlin.jvm.internal.r.e(context, "context");
            ActivityUtils.c(context, new Intent(context, (Class<?>) MapManagerActivity.class));
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f5070a;

        static {
            int[] iArr = new int[LoadingState.values().length];
            iArr[LoadingState.Loading.ordinal()] = 1;
            iArr[LoadingState.Fail.ordinal()] = 2;
            iArr[LoadingState.Success.ordinal()] = 3;
            f5070a = iArr;
        }
    }

    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0016¨\u0006\t"}, d2 = {"cn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity$init$3", "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;", "onScrolled", "", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "dx", "", "dy", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c extends RecyclerView.t {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ MapManagerActivity$init$adapter$1 f5071a;
        final /* synthetic */ MapManagerActivity b;

        c(MapManagerActivity$init$adapter$1 mapManagerActivity$init$adapter$1, MapManagerActivity mapManagerActivity) {
            this.f5071a = mapManagerActivity$init$adapter$1;
            this.b = mapManagerActivity;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.t
        public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
            kotlin.jvm.internal.r.e(recyclerView, "recyclerView");
            super.onScrolled(recyclerView, dx, dy);
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
            if (linearLayoutManager == null || linearLayoutManager.findLastVisibleItemPosition() <= getItemCount() - 2 || getItemCount() <= 0) {
                return;
            }
            MapViewModel mapViewModel = this.b.c;
            if (mapViewModel != null) {
                mapViewModel.q(false, this.b.m());
            } else {
                kotlin.jvm.internal.r.u("viewModel");
                throw null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean m() {
        return ((Boolean) this.f5069e.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(MapManagerActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(MapManagerActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        SiteMapEditDialog siteMapEditDialog = new SiteMapEditDialog();
        siteMapEditDialog.F(new MapManagerActivity$init$2$1(this$0, view));
        siteMapEditDialog.show(this$0.getSupportFragmentManager(), "type_collect");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(MapManagerActivity$init$adapter$1 adapter, MapManagerActivity this$0, List it) {
        kotlin.jvm.internal.r.e(adapter, "$adapter");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.d(it, "it");
        adapter.i(it);
        adapter.notifyDataSetChanged();
        if (cn.mucang.android.core.utils.g.b(it)) {
            this$0.g().stateLayout.d();
        } else {
            this$0.g().stateLayout.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(MapManagerActivity this$0, LoadingState loadingState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : b.f5070a[loadingState.ordinal()];
        if (i == 1) {
            this$0.g().stateLayout.f();
        } else {
            if (i != 2) {
                return;
            }
            this$0.g().stateLayout.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(MapManagerActivity this$0, LoadingState loadingState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : b.f5070a[loadingState.ordinal()];
        if (i == 1) {
            JLoadingDialog jLoadingDialog = new JLoadingDialog(this$0);
            this$0.f5068d = jLoadingDialog;
            if (jLoadingDialog == null) {
                return;
            }
            jLoadingDialog.b(loadingState.getMsg());
            return;
        }
        if (i == 2) {
            JLoadingDialog jLoadingDialog2 = this$0.f5068d;
            if (jLoadingDialog2 != null) {
                jLoadingDialog2.dismiss();
            }
            cn.mucang.android.core.utils.u.h(loadingState.getMsg());
            return;
        }
        if (i != 3) {
            return;
        }
        JLoadingDialog jLoadingDialog3 = this$0.f5068d;
        if (jLoadingDialog3 != null) {
            jLoadingDialog3.dismiss();
        }
        cn.mucang.android.core.utils.u.h(loadingState.getMsg());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(MapManagerActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        MapViewModel mapViewModel = this$0.c;
        if (mapViewModel != null) {
            mapViewModel.q(true, this$0.m());
        } else {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "场地地图管理";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [androidx.recyclerview.widget.RecyclerView$Adapter, cn.mucang.android.jiakaoyi.mapcollect.manager.map.MapManagerActivity$init$adapter$1] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        androidx.lifecycle.j0 j0VarA = new androidx.lifecycle.m0(this).a(MapViewModel.class);
        kotlin.jvm.internal.r.d(j0VarA, "ViewModelProvider(this).…MapViewModel::class.java)");
        this.c = (MapViewModel) j0VarA;
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.f0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MapManagerActivity.n(this.f5093a, view);
            }
        });
        if (m()) {
            g().titleLayout.titleTv.setText("选择场地");
            g().newSiteTv.setVisibility(8);
        } else {
            g().titleLayout.titleTv.setText("场地地图管理");
            g().newSiteTv.setVisibility(0);
        }
        g().newSiteTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.g0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MapManagerActivity.o(this.f5095a, view);
            }
        });
        final ?? r0 = new com.drakeet.multitype.f() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.MapManagerActivity$init$adapter$1
            {
                super(null, 0, null, 7, null);
                if (this.c.m()) {
                    g(ExamSiteModel.class, new MapChooseItemBinder(new Function1<ExamSiteModel, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.MapManagerActivity$init$adapter$1.1

                        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.mapcollect.manager.map.MapManagerActivity$init$adapter$1$1$1, reason: invalid class name and collision with other inner class name */
                        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "model", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;"}, k = 3, mv = {1, 5, 1}, xi = 48)
                        static final class C01181 extends Lambda implements Function1<ExamSiteModel, kotlin.v> {
                            final /* synthetic */ ExamSiteModel $it;
                            final /* synthetic */ MapManagerActivity this$0;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            C01181(MapManagerActivity mapManagerActivity, ExamSiteModel examSiteModel) {
                                super(1);
                                this.this$0 = mapManagerActivity;
                                this.$it = examSiteModel;
                            }

                            /* JADX INFO: Access modifiers changed from: private */
                            /* JADX INFO: renamed from: invoke$lambda-1, reason: not valid java name */
                            public static final void m26invoke$lambda1(ExamSiteModel model, final MapManagerActivity this$0, final ExamSiteModel it) {
                                kotlin.jvm.internal.r.e(model, "$model");
                                kotlin.jvm.internal.r.e(this$0, "this$0");
                                kotlin.jvm.internal.r.e(it, "$it");
                                cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.d(model, model.examSiteId);
                                cn.mucang.android.core.utils.u.c(new SafeRunnable(this$0, 
                                /*  JADX ERROR: Method code generation error
                                    jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x001e: INVOKE 
                                      (wrap cn.mucang.jiakaoyi.uilib.r.a:0x001b: CONSTRUCTOR 
                                      (r3v0 'this$0' cn.mucang.android.jiakaoyi.mapcollect.manager.map.MapManagerActivity)
                                      (wrap java.lang.Runnable:0x0018: CONSTRUCTOR 
                                      (r3v0 'this$0' cn.mucang.android.jiakaoyi.mapcollect.manager.map.MapManagerActivity A[DONT_INLINE])
                                      (r4v0 'it' cn.mucang.jiakaoyi.uilib.model.ExamSiteModel A[DONT_INLINE])
                                     A[MD:(cn.mucang.android.jiakaoyi.mapcollect.manager.map.MapManagerActivity, cn.mucang.jiakaoyi.uilib.model.ExamSiteModel):void (m), WRAPPED] (LINE:3) call: cn.mucang.android.jiakaoyi.mapcollect.manager.map.i0.<init>(cn.mucang.android.jiakaoyi.mapcollect.manager.map.MapManagerActivity, cn.mucang.jiakaoyi.uilib.model.ExamSiteModel):void type: CONSTRUCTOR)
                                     A[MD:(android.app.Activity, java.lang.Runnable):void (m), WRAPPED] (LINE:4) call: cn.mucang.jiakaoyi.uilib.r.a.<init>(android.app.Activity, java.lang.Runnable):void type: CONSTRUCTOR)
                                     STATIC call: cn.mucang.android.core.utils.u.c(java.lang.Runnable):void A[MD:(java.lang.Runnable):void (m)] (LINE:5) in method: cn.mucang.android.jiakaoyi.mapcollect.manager.map.MapManagerActivity.init.adapter.1.1.1.invoke$lambda-1(cn.mucang.jiakaoyi.uilib.model.ExamSiteModel, cn.mucang.android.jiakaoyi.mapcollect.manager.map.MapManagerActivity, cn.mucang.jiakaoyi.uilib.model.ExamSiteModel):void, file: classes3.dex
                                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:310)
                                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:273)
                                    	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:94)
                                    	at jadx.core.dex.nodes.IBlock.generate(IBlock.java:15)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                    	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
                                    	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
                                    	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
                                    	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
                                    	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
                                    	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:184)
                                    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
                                    	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                                    	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
                                    Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Expected class to be processed at this point, class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.i0, state: NOT_LOADED
                                    	at jadx.core.dex.nodes.ClassNode.ensureProcessed(ClassNode.java:306)
                                    	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:807)
                                    	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:730)
                                    	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:418)
                                    	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:145)
                                    	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:121)
                                    	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:108)
                                    	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:1143)
                                    	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:782)
                                    	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:418)
                                    	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:145)
                                    	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:121)
                                    	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:108)
                                    	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:1143)
                                    	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:910)
                                    	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:422)
                                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:303)
                                    	... 15 more
                                    */
                                /*
                                    java.lang.String r0 = "$model"
                                    kotlin.jvm.internal.r.e(r2, r0)
                                    java.lang.String r0 = "this$0"
                                    kotlin.jvm.internal.r.e(r3, r0)
                                    java.lang.String r0 = "$it"
                                    kotlin.jvm.internal.r.e(r4, r0)
                                    long r0 = r2.examSiteId
                                    cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.d(r2, r0)
                                    cn.mucang.jiakaoyi.uilib.r.a r2 = new cn.mucang.jiakaoyi.uilib.r.a
                                    cn.mucang.android.jiakaoyi.mapcollect.manager.map.i0 r0 = new cn.mucang.android.jiakaoyi.mapcollect.manager.map.i0
                                    r0.<init>(r3, r4)
                                    r2.<init>(r3, r0)
                                    cn.mucang.android.core.utils.u.c(r2)
                                    return
                                */
                                throw new UnsupportedOperationException("Method not decompiled: cn.mucang.android.jiakaoyi.mapcollect.manager.map.MapManagerActivity$init$adapter$1.AnonymousClass1.C01181.m26invoke$lambda1(cn.mucang.jiakaoyi.uilib.model.ExamSiteModel, cn.mucang.android.jiakaoyi.mapcollect.manager.map.MapManagerActivity, cn.mucang.jiakaoyi.uilib.model.ExamSiteModel):void");
                            }

                            /* JADX INFO: Access modifiers changed from: private */
                            /* JADX INFO: renamed from: invoke$lambda-1$lambda-0, reason: not valid java name */
                            public static final void m27invoke$lambda1$lambda0(MapManagerActivity this$0, ExamSiteModel it) {
                                kotlin.jvm.internal.r.e(this$0, "this$0");
                                kotlin.jvm.internal.r.e(it, "$it");
                                MapViewModel mapViewModel = this$0.c;
                                if (mapViewModel == null) {
                                    kotlin.jvm.internal.r.u("viewModel");
                                    throw null;
                                }
                                LoadingViewModel.h(mapViewModel, false, null, 2, null);
                                Intent intent = new Intent();
                                intent.putExtra("key.chooseResult", it);
                                this$0.setResult(-1, intent);
                                ExamSiteUtil.r(it);
                                this$0.finish();
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ kotlin.v invoke(ExamSiteModel examSiteModel) {
                                invoke2(examSiteModel);
                                return kotlin.v.f15822a;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(final ExamSiteModel model) {
                                kotlin.jvm.internal.r.e(model, "model");
                                if (cn.mucang.android.core.utils.n0.e(model.mapData)) {
                                    cn.mucang.android.core.utils.u.h("没有考场数据");
                                    return;
                                }
                                MapViewModel mapViewModel = this.this$0.c;
                                if (mapViewModel == null) {
                                    kotlin.jvm.internal.r.u("viewModel");
                                    throw null;
                                }
                                mapViewModel.e(false, "正在加载考场数据...");
                                final MapManagerActivity mapManagerActivity = this.this$0;
                                final ExamSiteModel examSiteModel = this.$it;
                                cn.mucang.android.jiakaoyi.framework.utils.n0.a(
                                /*  JADX ERROR: Method code generation error
                                    jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x002a: INVOKE 
                                      (wrap java.lang.Runnable:0x0027: CONSTRUCTOR 
                                      (r4v0 'model' cn.mucang.jiakaoyi.uilib.model.ExamSiteModel A[DONT_INLINE])
                                      (r0v5 'mapManagerActivity' cn.mucang.android.jiakaoyi.mapcollect.manager.map.MapManagerActivity A[DONT_INLINE])
                                      (r1v1 'examSiteModel' cn.mucang.jiakaoyi.uilib.model.ExamSiteModel A[DONT_INLINE])
                                     A[MD:(cn.mucang.jiakaoyi.uilib.model.ExamSiteModel, cn.mucang.android.jiakaoyi.mapcollect.manager.map.MapManagerActivity, cn.mucang.jiakaoyi.uilib.model.ExamSiteModel):void (m), WRAPPED] call: cn.mucang.android.jiakaoyi.mapcollect.manager.map.j0.<init>(cn.mucang.jiakaoyi.uilib.model.ExamSiteModel, cn.mucang.android.jiakaoyi.mapcollect.manager.map.MapManagerActivity, cn.mucang.jiakaoyi.uilib.model.ExamSiteModel):void type: CONSTRUCTOR)
                                     STATIC call: cn.mucang.android.jiakaoyi.framework.utils.n0.a(java.lang.Runnable):void A[MD:(java.lang.Runnable):void (m)] in method: cn.mucang.android.jiakaoyi.mapcollect.manager.map.MapManagerActivity.init.adapter.1.1.1.invoke(cn.mucang.jiakaoyi.uilib.model.ExamSiteModel):void, file: classes3.dex
                                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:310)
                                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:273)
                                    	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:94)
                                    	at jadx.core.dex.nodes.IBlock.generate(IBlock.java:15)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                    	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
                                    	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
                                    	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
                                    	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
                                    	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
                                    	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:184)
                                    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
                                    	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                                    	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
                                    Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Expected class to be processed at this point, class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.j0, state: NOT_LOADED
                                    	at jadx.core.dex.nodes.ClassNode.ensureProcessed(ClassNode.java:306)
                                    	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:807)
                                    	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:730)
                                    	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:418)
                                    	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:145)
                                    	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:121)
                                    	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:108)
                                    	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:1143)
                                    	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:910)
                                    	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:422)
                                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:303)
                                    	... 23 more
                                    */
                                /*
                                    this = this;
                                    java.lang.String r0 = "model"
                                    kotlin.jvm.internal.r.e(r4, r0)
                                    java.lang.String r0 = r4.mapData
                                    boolean r0 = cn.mucang.android.core.utils.n0.e(r0)
                                    if (r0 == 0) goto L13
                                    java.lang.String r4 = "没有考场数据"
                                    cn.mucang.android.core.utils.u.h(r4)
                                    return
                                L13:
                                    cn.mucang.android.jiakaoyi.mapcollect.manager.map.MapManagerActivity r0 = r3.this$0
                                    cn.mucang.android.jiakaoyi.mapcollect.manager.map.MapViewModel r0 = cn.mucang.android.jiakaoyi.mapcollect.manager.map.MapManagerActivity.k(r0)
                                    if (r0 == 0) goto L2e
                                    r1 = 0
                                    java.lang.String r2 = "正在加载考场数据..."
                                    r0.e(r1, r2)
                                    cn.mucang.android.jiakaoyi.mapcollect.manager.map.MapManagerActivity r0 = r3.this$0
                                    cn.mucang.jiakaoyi.uilib.model.ExamSiteModel r1 = r3.$it
                                    cn.mucang.android.jiakaoyi.mapcollect.manager.map.j0 r2 = new cn.mucang.android.jiakaoyi.mapcollect.manager.map.j0
                                    r2.<init>(r4, r0, r1)
                                    cn.mucang.android.jiakaoyi.framework.utils.n0.a(r2)
                                    return
                                L2e:
                                    java.lang.String r4 = "viewModel"
                                    kotlin.jvm.internal.r.u(r4)
                                    r4 = 0
                                    throw r4
                                */
                                throw new UnsupportedOperationException("Method not decompiled: cn.mucang.android.jiakaoyi.mapcollect.manager.map.MapManagerActivity$init$adapter$1.AnonymousClass1.C01181.invoke2(cn.mucang.jiakaoyi.uilib.model.ExamSiteModel):void");
                            }
                        }

                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ kotlin.v invoke(ExamSiteModel examSiteModel) {
                            invoke2(examSiteModel);
                            return kotlin.v.f15822a;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(ExamSiteModel it) {
                            kotlin.jvm.internal.r.e(it, "it");
                            MapManagerActivity mapManagerActivity = mapManagerActivity;
                            ExamSiteUtil.b(mapManagerActivity, it, false, new C01181(mapManagerActivity, it));
                        }
                    }));
                } else {
                    g(ExamSiteModel.class, new MapItemBinder());
                }
            }
        };
        g().recyclerView.setAdapter(r0);
        g().recyclerView.setLayoutManager(new LinearLayoutManager(this));
        g().recyclerView.addOnScrollListener(new c(r0, this));
        MapViewModel mapViewModel = this.c;
        if (mapViewModel == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        mapViewModel.p().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.k0
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                MapManagerActivity.p(r0, this, (List) obj);
            }
        });
        MapViewModel mapViewModel2 = this.c;
        if (mapViewModel2 == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        mapViewModel2.b().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.l0
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                MapManagerActivity.q(this.f5115a, (LoadingState) obj);
            }
        });
        MapViewModel mapViewModel3 = this.c;
        if (mapViewModel3 == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        mapViewModel3.a().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.d0
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                MapManagerActivity.r(this.f5089a, (LoadingState) obj);
            }
        });
        g().stateLayout.setOnRefreshListener(new StateLayout.c() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.e0
            @Override // cn.mucang.android.core.widget.StateLayout.c
            public final void a() {
                MapManagerActivity.s(this.f5091a);
            }
        });
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.b) {
            this.b = false;
            MapViewModel mapViewModel = this.c;
            if (mapViewModel != null) {
                mapViewModel.q(true, m());
            } else {
                kotlin.jvm.internal.r.u("viewModel");
                throw null;
            }
        }
    }
}
