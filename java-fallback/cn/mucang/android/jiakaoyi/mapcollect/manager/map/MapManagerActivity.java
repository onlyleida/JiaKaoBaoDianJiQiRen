package cn.mucang.android.jiakaoyi.mapcollect.manager.map;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.android.jiakaoyi.mapcollect.databinding.ActivityMapManagerBinding;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 \u00142\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0014B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0014J\b\u0010\u0013\u001a\u00020\u0012H\u0014R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityMapManagerBinding;", "()V", "forChoose", "", "getForChoose", "()Z", "forChoose$delegate", "Lkotlin/Lazy;", "loadingDialog", "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;", "needRefresh", "viewModel", "Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapViewModel;", "getStatName", "", "init", "", "onResume", "Companion", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class MapManagerActivity extends cn.mucang.android.jiakaoyi.framework.base.m.c<ActivityMapManagerBinding> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f5067f = null;
    private boolean b;
    private MapViewModel c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.framework.base.dialog.t f5068d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final kotlin.f f5069e;

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity$Companion;", "", "()V", "KEY_CHOOSE_RESULT", "", "KEY_FOR_CHOOSE", "createIntentForResult", "Landroid/content/Intent;", "activity", "Landroid/app/Activity;", "launch", "", "context", "Landroid/content/Context;", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o r1) {
            this();
        }

        public final void a(Context r3) {
            kotlin.jvm.internal.r.e(r3, "context");
            cn.mucang.android.jiakaoyi.framework.utils.l.c(r3, new Intent(r3, MapManagerActivity.class));
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f5070a = null;

        static {
            int[] r0 = new int[LoadingState.values().length];
            r0[LoadingState.Loading.ordinal()] = 1;
            r0[LoadingState.Fail.ordinal()] = 2;
            r0[LoadingState.Success.ordinal()] = 3;
            f5070a = r0;
        }
    }

    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0016¨\u0006\t"}, d2 = {"cn/mucang/android/jiakaoyi/mapcollect/manager/map/MapManagerActivity$init$3", "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;", "onScrolled", "", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "dx", "", "dy", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c extends RecyclerView.t {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ MapManagerActivity$init$adapter$1 f5071a;
        final /* synthetic */ MapManagerActivity b;

        c(MapManagerActivity$init$adapter$1 r1, MapManagerActivity r2) {
            this.f5071a = r1;
            this.b = r2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.t
        public void onScrolled(RecyclerView r2, int r3, int r4) {
            kotlin.jvm.internal.r.e(r2, "recyclerView");
            super.onScrolled(r2, r3, r4);
            LinearLayoutManager r5 = (LinearLayoutManager) r2.getLayoutManager();
            if (r5 != null) goto L5;
            return;
        L5:
            if (r5.findLastVisibleItemPosition() > (getItemCount() - 2)) goto L7;
            return;
        L7:
            if (getItemCount() <= 0) goto L15;
            MapViewModel r6 = MapManagerActivity.k(this.b);
            if (r6 == null) goto L11;
            r6.q(false, MapManagerActivity.j(this.b));
            return;
        L11:
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
    }

    static {
        f5067f = new a(null);
    }

    public MapManagerActivity() {
        this.b = true;
        this.f5069e = kotlin.h.b(new MapManagerActivity$forChoose$2(this));
    }

    public static final /* synthetic */ boolean j(MapManagerActivity r0) {
        return r0.m();
    }

    public static final /* synthetic */ MapViewModel k(MapManagerActivity r0) {
        return r0.c;
    }

    public static final /* synthetic */ void l(MapManagerActivity r0, boolean r1) {
        r0.b = r1;
    }

    private final boolean m() {
        return ((Boolean) this.f5069e.getValue()).booleanValue();
    }

    private static final void n(MapManagerActivity r0, View r1) {
        kotlin.jvm.internal.r.e(r0, "this$0");
        r0.finish();
    }

    private static final void o(MapManagerActivity r2, View r3) {
        kotlin.jvm.internal.r.e(r2, "this$0");
        SiteMapEditDialog r0 = new SiteMapEditDialog();
        r0.F(new MapManagerActivity$init$2$1(r2, r3));
        r0.show(r2.getSupportFragmentManager(), "type_collect");
    }

    private static final void p(MapManagerActivity$init$adapter$1 r1, MapManagerActivity r2, List r3) {
        kotlin.jvm.internal.r.e(r1, "$adapter");
        kotlin.jvm.internal.r.e(r2, "this$0");
        kotlin.jvm.internal.r.d(r3, "it");
        r1.i(r3);
        r1.notifyDataSetChanged();
        if (cn.mucang.android.core.utils.g.b(r3) == false) goto L5;
        r2.g().stateLayout.d();
        return;
    L5:
        r2.g().stateLayout.c();
    }

    private static final void q(MapManagerActivity r1, LoadingState r2) {
        kotlin.jvm.internal.r.e(r1, "this$0");
        if (r2 != null) goto L5;
        int r3 = -1;
    L7:
        if (r3 != 1) goto L9;
        r1.g().stateLayout.f();
        return;
    L9:
        if (r3 != 2) goto L15;
        r1.g().stateLayout.e();
        return;
    L15:
        return;
    L5:
        r3 = b.f5070a[r2.ordinal()];
        goto L7
    }

    private static final void r(MapManagerActivity r2, LoadingState r3) {
        kotlin.jvm.internal.r.e(r2, "this$0");
        if (r3 != null) goto L5;
        int r0 = -1;
    L7:
        if (r0 != 1) goto L9;
        cn.mucang.android.jiakaoyi.framework.base.dialog.t r1 = new cn.mucang.android.jiakaoyi.framework.base.dialog.t(r2);
        r2.f5068d = r1;
        if (r1 == null) goto L31;
        r1.b(r3.getMsg());
        return;
    L31:
        return;
    L9:
        if (r0 != 2) goto L11;
        cn.mucang.android.jiakaoyi.framework.base.dialog.t r4 = r2.f5068d;
        if (r4 == null) goto L22;
        r4.dismiss();
    L22:
        cn.mucang.android.core.utils.u.h(r3.getMsg());
        return;
    L11:
        if (r0 != 3) goto L30;
        cn.mucang.android.jiakaoyi.framework.base.dialog.t r5 = r2.f5068d;
        if (r5 == null) goto L17;
        r5.dismiss();
    L17:
        cn.mucang.android.core.utils.u.h(r3.getMsg());
        return;
    L30:
        return;
    L5:
        r0 = b.f5070a[r3.ordinal()];
        goto L7
    }

    private static final void s(MapManagerActivity r2) {
        kotlin.jvm.internal.r.e(r2, "this$0");
        MapViewModel r0 = r2.c;
        if (r0 == null) goto L6;
        r0.q(true, r2.m());
        return;
    L6:
        kotlin.jvm.internal.r.u("viewModel");
        throw null;
    }

    public static /* synthetic */ void t(MapManagerActivity r0, LoadingState r1) {
        r(r0, r1);
    }

    public static /* synthetic */ void u(MapManagerActivity r0) {
        s(r0);
    }

    public static /* synthetic */ void v(MapManagerActivity r0, View r1) {
        n(r0, r1);
    }

    public static /* synthetic */ void w(MapManagerActivity r0, View r1) {
        o(r0, r1);
    }

    public static /* synthetic */ void x(MapManagerActivity$init$adapter$1 r0, MapManagerActivity r1, List r2) {
        p(r0, r1, r2);
    }

    public static /* synthetic */ void y(MapManagerActivity r0, LoadingState r1) {
        q(r0, r1);
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
    @Override // cn.mucang.android.jiakaoyi.framework.base.m.c
    protected void init() {
        super.init();
        androidx.lifecycle.j0 r0 = new androidx.lifecycle.m0(this).a(MapViewModel.class);
        kotlin.jvm.internal.r.d(r0, "ViewModelProvider(this).…MapViewModel::class.java)");
        this.c = (MapViewModel) r0;
        g().titleLayout.backIv.setOnClickListener(new f0(this));
        if (m() == false) goto L5;
        g().titleLayout.titleTv.setText("选择场地");
        g().newSiteTv.setVisibility(8);
    L6:
        g().newSiteTv.setOnClickListener(new g0(this));
        final ?? r1 = new MapManagerActivity$init$adapter$1(this);
        g().recyclerView.setAdapter(r1);
        g().recyclerView.setLayoutManager(new LinearLayoutManager(this));
        g().recyclerView.addOnScrollListener(new c(r1, this));
        MapViewModel r2 = this.c;
        if (r2 == null) goto L18;
        r2.p().h(this, new k0(r1, this));
        MapViewModel r3 = this.c;
        if (r3 == null) goto L16;
        r3.b().h(this, new l0(this));
        MapViewModel r4 = this.c;
        if (r4 == null) goto L14;
        r4.a().h(this, new d0(this));
        g().stateLayout.setOnRefreshListener(new e0(this));
        return;
    L14:
        kotlin.jvm.internal.r.u("viewModel");
        throw null;
    L16:
        kotlin.jvm.internal.r.u("viewModel");
        throw null;
    L18:
        kotlin.jvm.internal.r.u("viewModel");
        throw null;
    L5:
        g().titleLayout.titleTv.setText("场地地图管理");
        g().newSiteTv.setVisibility(0);
        goto L6
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.b == false) goto L9;
        this.b = false;
        MapViewModel r0 = this.c;
        if (r0 == null) goto L7;
        r0.q(true, m());
        return;
    L7:
        kotlin.jvm.internal.r.u("viewModel");
        throw null;
    }
}
