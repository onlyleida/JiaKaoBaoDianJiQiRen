package cn.mucang.android.jiakaoyi.teachingk2.collect.v2;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.Group;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.viewpager.widget.ViewPager;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.NewErrorFragment;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.VariableFragment;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.NormalVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.TraceVariable;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.ActivityEditTeachModelBinding;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u001c2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001cB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\r\u001a\u00020\u0005H\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0014J\b\u0010\u0012\u001a\u00020\u0011H\u0002J\b\u0010\u0013\u001a\u00020\u0011H\u0016J\b\u0010\u0014\u001a\u00020\u0011H\u0014J\b\u0010\u0015\u001a\u00020\u0011H\u0014J\b\u0010\u0016\u001a\u00020\u0011H\u0014J\b\u0010\u0017\u001a\u00020\u0011H\u0002J\b\u0010\u0018\u001a\u00020\u0011H\u0002J\u0012\u0010\u0019\u001a\u00020\u00112\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityEditTeachModelBinding;", "()V", "dataChanged", "", "mMoveStep", "", "mapPreviewer", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepMapPreviewer;", "model", "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;", "relateModel", "checkMoveStepValid", "getStatName", "", "init", "", "initViewPager", "onBackPressed", "onDestroy", "onPause", "onResume", "saveModel", "sendData", "setRelationPoint", "normal", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;", "Companion", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class EditTeachModelActivity extends BaseViewBindingActivity<ActivityEditTeachModelBinding> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f6748g = new a(null);
    private StepMapPreviewer b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TeachModel f6749d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TeachModel f6750e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f6751f = 5;

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0007¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity$Companion;", "", "()V", "launch", "", "context", "Landroid/content/Context;", "model", "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;", "traceVariable", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context, TeachModel model, TraceVariable traceVariable) {
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(model, "model");
            TeachModelEditor.q(model, traceVariable);
            ActivityUtils.c(context, new Intent(context, (Class<?>) EditTeachModelActivity.class));
        }
    }

    @Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003H\u0016¨\u0006\u0007"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity$initViewPager$1", "Landroidx/fragment/app/FragmentPagerAdapter;", "getCount", "", "getItem", "Landroidx/fragment/app/Fragment;", "position", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b extends androidx.fragment.app.p {
        b(FragmentManager fragmentManager) {
            super(fragmentManager, 1);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return TeachModelEditor.f6857a.g().isGlobal() ? 2 : 3;
        }

        @Override // androidx.fragment.app.p
        public Fragment getItem(int position) {
            if (position != 0) {
                return position != 1 ? new NewErrorFragment() : new cn.mucang.android.jiakaoyi.teachingk2.collect.render.e2();
            }
            return new VariableFragment();
        }
    }

    @Metadata(d1 = {"\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J \u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H\u0016¨\u0006\f"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity$initViewPager$2", "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;", "onPageScrollStateChanged", "", "state", "", "onPageScrolled", "position", "positionOffset", "", "positionOffsetPixels", "onPageSelected", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c implements ViewPager.OnPageChangeListener {
        c() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int state) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
            EditTeachModelActivity.this.g().variableTab.setSelected(position == 0);
            EditTeachModelActivity.this.g().formTab.setSelected(position == 1);
            EditTeachModelActivity.this.g().errorTab.setSelected(position == 2);
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.EditTeachModelActivity$init$8, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.collect.v2.EditTeachModelActivity$init$8", f = "EditTeachModelActivity.kt", l = {115}, m = "invokeSuspend")
    static final class AnonymousClass8 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
        int label;

        AnonymousClass8(Continuation<? super AnonymousClass8> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return EditTeachModelActivity.this.new AnonymousClass8(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
            return ((AnonymousClass8) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objD = kotlin.coroutines.intrinsics.b.d();
            int i = this.label;
            if (i == 0) {
                kotlin.k.b(obj);
                this.label = 1;
                if (kotlinx.coroutines.s0.a(100L, this) == objD) {
                    return objD;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.k.b(obj);
            }
            EditTeachModelActivity.this.N();
            return kotlin.v.f15822a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J(EditTeachModelActivity this$0, DialogInterface dialogInterface, int i) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        super.onBackPressed();
    }

    private final void K() {
        if (this.f6749d == null) {
            return;
        }
        new cn.mucang.android.jiakaoyi.framework.base.dialog.u(this).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.j0
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() throws ApiException, InternalException, HttpException {
                EditTeachModelActivity.L(this.f6835a);
            }
        }, "正在保存...", "保存失败");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L(final EditTeachModelActivity this$0) throws ApiException, InternalException, HttpException {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        new cn.mucang.android.jiakaoyi.teachingk2.collect.render.api.b().v(this$0.f6749d);
        if (this$0.f6750e != null) {
            new cn.mucang.android.jiakaoyi.teachingk2.collect.render.api.b().v(this$0.f6750e);
            this$0.f6750e = null;
        }
        cn.mucang.android.core.utils.u.h("更新成功");
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.r0
            @Override // java.lang.Runnable
            public final void run() {
                EditTeachModelActivity.M(this.f6887a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M(EditTeachModelActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.c = false;
        LiveBus.d(TeachModelChanged.class).l(new TeachModelChanged(this$0.f6749d));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void N() {
        this.f6750e = null;
        this.c = false;
        TeachModelEditor teachModelEditor = TeachModelEditor.f6857a;
        TeachModel teachModelC = teachModelEditor.c();
        TeachModel teachModelCopy = teachModelC == null ? null : teachModelC.copy();
        this.f6749d = teachModelCopy;
        if (teachModelCopy != null) {
            TeachModel teachModelC2 = teachModelEditor.c();
            teachModelCopy.order = (teachModelC2 != null ? Integer.valueOf(teachModelC2.order) : null).intValue();
        }
        LiveBus.d(cn.mucang.android.jiakaoyi.teachingk2.collect.render.f2.f.class).l(new cn.mucang.android.jiakaoyi.teachingk2.collect.render.f2.f(this.f6749d));
    }

    private final void O(NormalVariable normalVariable) {
        if (normalVariable == null) {
            return;
        }
        List<TeachModel> listI = TeachModelEditor.i();
        NormalVariable normalVariable2 = null;
        boolean z = normalVariable.reportKey > 0;
        for (TeachModel teachModel : listI) {
            if (!z) {
                NormalVariable normalVariable3 = teachModel.getNormalVariable();
                if (normalVariable3 != null && normalVariable3.reportKey == normalVariable.key) {
                    normalVariable2 = teachModel.getNormalVariable();
                    this.f6750e = teachModel;
                    break;
                }
            } else {
                NormalVariable normalVariable4 = teachModel.getNormalVariable();
                if (normalVariable4 != null && normalVariable4.key == normalVariable.reportKey) {
                    normalVariable2 = teachModel.getNormalVariable();
                    this.f6750e = teachModel;
                    break;
                }
            }
        }
        if (normalVariable2 == null) {
            return;
        }
        normalVariable2.setPos(normalVariable.posOnLine, normalVariable.forwardPoint);
    }

    private final boolean k() {
        String string = g().moveEt.getText().toString();
        if (TextUtils.isEmpty(string)) {
            cn.mucang.android.core.utils.u.h("请设置移动步长");
            return false;
        }
        this.f6751f = Integer.parseInt(string);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(EditTeachModelActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(EditTeachModelActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.N();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(EditTeachModelActivity this$0, View view) {
        TraceVariable c2;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.k()) {
            int i = this$0.f6751f;
            TeachModel teachModel = this$0.f6749d;
            NormalVariable normalVariable = teachModel == null ? null : teachModel.getNormalVariable();
            StepMapPreviewer stepMapPreviewer = this$0.b;
            if (cn.mucang.android.jiakaoyi.teachingk2.collect.v2.o3.a.a(true, i, normalVariable, (stepMapPreviewer == null || (c2 = stepMapPreviewer.getC()) == null) ? null : c2.traces)) {
                TeachModel teachModel2 = this$0.f6749d;
                this$0.O(teachModel2 != null ? teachModel2.getNormalVariable() : null);
                this$0.c = true;
                StepMapPreviewer stepMapPreviewer2 = this$0.b;
                if (stepMapPreviewer2 == null) {
                    return;
                }
                TeachModel teachModel3 = this$0.f6749d;
                kotlin.jvm.internal.r.c(teachModel3);
                stepMapPreviewer2.k(kotlin.collections.u.p(teachModel3), this$0.f6749d);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(EditTeachModelActivity this$0, View view) {
        TraceVariable c2;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.k()) {
            int i = this$0.f6751f;
            TeachModel teachModel = this$0.f6749d;
            NormalVariable normalVariable = teachModel == null ? null : teachModel.getNormalVariable();
            StepMapPreviewer stepMapPreviewer = this$0.b;
            if (cn.mucang.android.jiakaoyi.teachingk2.collect.v2.o3.a.a(false, i, normalVariable, (stepMapPreviewer == null || (c2 = stepMapPreviewer.getC()) == null) ? null : c2.traces)) {
                TeachModel teachModel2 = this$0.f6749d;
                this$0.O(teachModel2 != null ? teachModel2.getNormalVariable() : null);
                this$0.c = true;
                StepMapPreviewer stepMapPreviewer2 = this$0.b;
                if (stepMapPreviewer2 == null) {
                    return;
                }
                TeachModel teachModel3 = this$0.f6749d;
                kotlin.jvm.internal.r.c(teachModel3);
                stepMapPreviewer2.k(kotlin.collections.u.p(teachModel3), this$0.f6749d);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(EditTeachModelActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.c) {
            this$0.K();
        } else {
            cn.mucang.android.core.utils.u.h("暂无修改，无需保存");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(EditTeachModelActivity this$0, Boolean bool) {
        TeachModel teachModelC;
        NormalVariable normalVariable;
        Pos pos;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        StepMapPreviewer stepMapPreviewer = this$0.b;
        if (stepMapPreviewer != null) {
            TeachModelEditor teachModelEditor = TeachModelEditor.f6857a;
            TeachModel teachModelC2 = teachModelEditor.c();
            kotlin.jvm.internal.r.c(teachModelC2);
            List<? extends TeachModel> listP = kotlin.collections.u.p(teachModelC2);
            TeachModel teachModelC3 = teachModelEditor.c();
            kotlin.jvm.internal.r.c(teachModelC3);
            stepMapPreviewer.k(listP, teachModelC3);
        }
        StepMapPreviewer stepMapPreviewer2 = this$0.b;
        if (stepMapPreviewer2 != null) {
            stepMapPreviewer2.m(TeachModelEditor.f6857a.d());
        }
        TeachModelEditor teachModelEditor2 = TeachModelEditor.f6857a;
        if (!teachModelEditor2.g().isGlobal() || (teachModelC = teachModelEditor2.c()) == null || (normalVariable = teachModelC.getNormalVariable()) == null || (pos = normalVariable.posOnLine) == null) {
            return;
        }
        this$0.g().map.setCurrentZoom(AppUtils.b() ? 0.1f : 0.2f);
        this$0.g().map.v((float) pos.x, (float) pos.y);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(EditTeachModelActivity this$0, cn.mucang.android.jiakaoyi.teachingk2.collect.render.f2.e eVar) {
        TeachModel teachModel;
        StepMapPreviewer stepMapPreviewer;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.c = true;
        if (!this$0.g().variableTab.isSelected() || (teachModel = this$0.f6749d) == null || (stepMapPreviewer = this$0.b) == null) {
            return;
        }
        stepMapPreviewer.k(kotlin.collections.u.p(teachModel), teachModel);
    }

    private final void s() {
        g().variableTab.setSelected(true);
        g().formTab.setSelected(false);
        g().errorTab.setSelected(false);
        g().viewPager.setAdapter(new b(getSupportFragmentManager()));
        g().viewPager.setOffscreenPageLimit(2);
        g().viewPager.addOnPageChangeListener(new c());
        g().viewPager.setCurrentItem(0);
        g().variableTab.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.k0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditTeachModelActivity.v(this.f6839a, view);
            }
        });
        g().formTab.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.u0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditTeachModelActivity.t(this.f6899a, view);
            }
        });
        g().errorTab.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.i0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditTeachModelActivity.u(this.f6830a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(EditTeachModelActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.g().viewPager.setCurrentItem(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(EditTeachModelActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.g().viewPager.setCurrentItem(2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(EditTeachModelActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.g().viewPager.setCurrentItem(0);
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "教学点编辑";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        TeachModelEditor teachModelEditor = TeachModelEditor.f6857a;
        if (teachModelEditor.c() == null) {
            cn.mucang.android.core.utils.u.h("暂无教学点数据");
            finish();
            return;
        }
        if (teachModelEditor.g().isGlobal()) {
            Group group = g().moveGroup;
            kotlin.jvm.internal.r.d(group, "viewBinding.moveGroup");
            group.setVisibility(8);
            TextView textView = g().errorTab;
            kotlin.jvm.internal.r.d(textView, "viewBinding.errorTab");
            textView.setVisibility(8);
        }
        g().titleTv.setText(teachModelEditor.j());
        g().moveEt.setText(String.valueOf(this.f6751f));
        g().backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.l0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditTeachModelActivity.l(this.f6849a, view);
            }
        });
        g().cancelTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.m0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditTeachModelActivity.m(this.f6854a, view);
            }
        });
        g().moveForward.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.o0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditTeachModelActivity.n(this.f6869a, view);
            }
        });
        g().moveBack.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.n0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditTeachModelActivity.o(this.f6864a, view);
            }
        });
        g().saveTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.s0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditTeachModelActivity.p(this.f6891a, view);
            }
        });
        MapView mapView = g().map;
        kotlin.jvm.internal.r.d(mapView, "viewBinding.map");
        StepMapPreviewer stepMapPreviewer = new StepMapPreviewer(mapView);
        this.b = stepMapPreviewer;
        if (stepMapPreviewer != null) {
            stepMapPreviewer.d(((TeachModel) kotlin.collections.s.c0(TeachModelEditor.i())).step, ((TeachModel) kotlin.collections.s.c0(TeachModelEditor.i())).stepDirection, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.p0
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public final void callback(Object obj) {
                    EditTeachModelActivity.q(this.f6873a, (Boolean) obj);
                }
            });
        }
        s();
        LiveBus.d(cn.mucang.android.jiakaoyi.teachingk2.collect.render.f2.e.class).h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.t0
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                EditTeachModelActivity.r(this.f6895a, (cn.mucang.android.jiakaoyi.teachingk2.collect.render.f2.e) obj);
            }
        });
        kotlinx.coroutines.g.b(kotlinx.coroutines.j0.b(), null, null, new AnonymousClass8(null), 3, null);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.c) {
            new androidx.appcompat.app.c.a(this).setMessage("当前有未保存内容，是否确认退出？").setPositiveButton("取消", (DialogInterface.OnClickListener) null).setNegativeButton("直接退出", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.q0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    EditTeachModelActivity.J(this.f6880a, dialogInterface, i);
                }
            }).create().show();
        } else {
            super.onBackPressed();
        }
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
