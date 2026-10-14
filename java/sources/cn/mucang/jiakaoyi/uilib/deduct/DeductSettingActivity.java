package cn.mucang.jiakaoyi.uilib.deduct;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.TextView;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.m0;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.jiakaoyi.uilib.diff.DataType;
import cn.mucang.jiakaoyi.uilib.diff.RuleDeductDiffActivity;
import cn.mucang.jiakaoyi.uilib.model.DeductEntity;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.model.StepItem;
import cn.mucang.jiakaoyi.uilib.rule.dialog.ModifyRulesDialog;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mucang.android.jiakaoyi.uilib.databinding.DeductSettingActivityBinding;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u001c2\u00020\u00012\u00020\u0002:\u0001\u001cB\u0005¢\u0006\u0002\u0010\u0003J%\u0010\u000e\u001a\u0002H\u000f\"\b\b\u0000\u0010\u000f*\u00020\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\u000f0\u0012H\u0016¢\u0006\u0002\u0010\u0013J\n\u0010\u0014\u001a\u0004\u0018\u00010\u000bH\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0018H\u0016J\u0012\u0010\u0019\u001a\u00020\u00182\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0015R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;", "Landroidx/lifecycle/ViewModelProvider$Factory;", "()V", "keMu", "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "getKeMu", "()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "keMu$delegate", "Lkotlin/Lazy;", "loadingDialog", "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;", "viewModel", "Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;", "create", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/ViewModel;", "modelClass", "Ljava/lang/Class;", "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;", "getLoadingDialog", "getStatName", "", "onBackPressed", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DeductSettingActivity extends BaseActivity implements m0.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f9225d = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f9226a = kotlin.i.b(new Function0<KeMu>() { // from class: cn.mucang.jiakaoyi.uilib.deduct.DeductSettingActivity$keMu$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final KeMu invoke() {
            Serializable serializableExtra = this.this$0.getIntent().getSerializableExtra("key_kemu");
            Objects.requireNonNull(serializableExtra, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.engine.model.KeMu");
            return (KeMu) serializableExtra;
        }
    });
    private JLoadingDialog b;
    private DeductSettingViewModel c;

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity$Companion;", "", "()V", "KEY_EXAM_SITE", "", "KEY_KEMU", "launch", "", "context", "Landroid/content/Context;", "examSite", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "keMu", "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context, ExamSiteModel examSite, KeMu keMu) {
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(examSite, "examSite");
            kotlin.jvm.internal.r.e(keMu, "keMu");
            Intent intent = new Intent(context, (Class<?>) DeductSettingActivity.class);
            intent.putExtra("key_exam_site", examSite);
            intent.putExtra("key_kemu", keMu);
            ActivityUtils.c(context, intent);
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f9227a;

        static {
            int[] iArr = new int[LoadingState.values().length];
            iArr[LoadingState.Loading.ordinal()] = 1;
            iArr[LoadingState.Fail.ordinal()] = 2;
            iArr[LoadingState.Success.ordinal()] = 3;
            f9227a = iArr;
        }
    }

    @Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016J*\u0010\f\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016¨\u0006\u000e"}, d2 = {"cn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity$onCreate$3", "Landroid/text/TextWatcher;", "afterTextChanged", "", "s", "Landroid/text/Editable;", "beforeTextChanged", "", TtmlNode.START, "", "count", TtmlNode.ANNOTATION_POSITION_AFTER, "onTextChanged", TtmlNode.ANNOTATION_POSITION_BEFORE, "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c implements TextWatcher {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ DeductSettingActivityBinding f9228a;
        final /* synthetic */ DeductSettingActivity b;

        c(DeductSettingActivityBinding deductSettingActivityBinding, DeductSettingActivity deductSettingActivity) {
            this.f9228a = deductSettingActivityBinding;
            this.b = deductSettingActivity;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s) {
            if ((s == null ? 0 : s.length()) > 0) {
                this.f9228a.titleLayout.clearTv.setVisibility(0);
            } else {
                this.f9228a.titleLayout.clearTv.setVisibility(8);
            }
            DeductSettingViewModel deductSettingViewModel = this.b.c;
            if (deductSettingViewModel == null) {
                kotlin.jvm.internal.r.u("viewModel");
                throw null;
            }
            String strValueOf = String.valueOf(s);
            Objects.requireNonNull(strValueOf, "null cannot be cast to non-null type kotlin.CharSequence");
            deductSettingViewModel.A(StringsKt__StringsKt.J0(strValueOf).toString());
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s, int start, int before, int count) {
        }
    }

    @Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"cn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity$onCreate$deductAdapter$1", "Lcom/drakeet/multitype/MultiTypeAdapter;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class d extends com.drakeet.multitype.f {
        d() {
            super(null, 0, null, 7, null);
            FragmentManager supportFragmentManager = DeductSettingActivity.this.getSupportFragmentManager();
            kotlin.jvm.internal.r.d(supportFragmentManager, "supportFragmentManager");
            g(DeductEntity.class, new DeductItemBinder(supportFragmentManager, DeductSettingActivity.this.i(), false, 4, null));
        }
    }

    @Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"cn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity$onCreate$stepAdapter$1", "Lcom/drakeet/multitype/MultiTypeAdapter;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class e extends com.drakeet.multitype.f {
        e() {
            super(null, 0, null, 7, null);
            g(StepItem.class, new StepItemBinder());
        }
    }

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.deduct.DeductSettingActivity$onBackPressed$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.deduct.DeductSettingActivity$onBackPressed$1", f = "DeductSettingActivity.kt", l = {211}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
        int label;

        /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.deduct.DeductSettingActivity$onBackPressed$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
        @DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.deduct.DeductSettingActivity$onBackPressed$1$1", f = "DeductSettingActivity.kt", l = {}, m = "invokeSuspend")
        static final class C01571 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
            final /* synthetic */ List<DeductEntity> $changeList;
            int label;
            final /* synthetic */ DeductSettingActivity this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C01571(List<? extends DeductEntity> list, DeductSettingActivity deductSettingActivity, Continuation<? super C01571> continuation) {
                super(2, continuation);
                this.$changeList = list;
                this.this$0 = deductSettingActivity;
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX INFO: renamed from: invokeSuspend$lambda-0, reason: not valid java name */
            public static final void m106invokeSuspend$lambda0(final DeductSettingActivity deductSettingActivity, Boolean bool) {
                if (!kotlin.jvm.internal.r.a(bool, Boolean.TRUE)) {
                    deductSettingActivity.finish();
                    return;
                }
                DeductSettingViewModel deductSettingViewModel = deductSettingActivity.c;
                if (deductSettingViewModel == null) {
                    kotlin.jvm.internal.r.u("viewModel");
                    throw null;
                }
                deductSettingViewModel.B(new Function1<Boolean, kotlin.v>() { // from class: cn.mucang.jiakaoyi.uilib.deduct.DeductSettingActivity$onBackPressed$1$1$1$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ kotlin.v invoke(Boolean bool2) {
                        invoke(bool2.booleanValue());
                        return kotlin.v.f15822a;
                    }

                    public final void invoke(boolean z) {
                        if (z) {
                            deductSettingActivity.setResult(-1);
                            deductSettingActivity.finish();
                        }
                    }
                });
                deductSettingActivity.finish();
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
                return new C01571(this.$changeList, this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
                return ((C01571) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                kotlin.coroutines.intrinsics.b.d();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.k.b(obj);
                List<DeductEntity> list = this.$changeList;
                if (list == null || !(!list.isEmpty())) {
                    this.this$0.finish();
                } else {
                    ModifyRulesDialog.a aVar = ModifyRulesDialog.c;
                    List<DeductEntity> list2 = this.$changeList;
                    FragmentManager supportFragmentManager = this.this$0.getSupportFragmentManager();
                    kotlin.jvm.internal.r.d(supportFragmentManager, "supportFragmentManager");
                    final DeductSettingActivity deductSettingActivity = this.this$0;
                    aVar.a(list2, false, supportFragmentManager, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.jiakaoyi.uilib.deduct.t
                        @Override // cn.mucang.android.jiakaoyi.framework.h.b
                        public final void callback(Object obj2) {
                            DeductSettingActivity.AnonymousClass1.C01571.m106invokeSuspend$lambda0(deductSettingActivity, (Boolean) obj2);
                        }
                    });
                }
                return kotlin.v.f15822a;
            }
        }

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return DeductSettingActivity.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objD = kotlin.coroutines.intrinsics.b.d();
            int i = this.label;
            if (i == 0) {
                kotlin.k.b(obj);
                DeductSettingViewModel deductSettingViewModel = DeductSettingActivity.this.c;
                if (deductSettingViewModel == null) {
                    kotlin.jvm.internal.r.u("viewModel");
                    throw null;
                }
                List<DeductEntity> listT = deductSettingViewModel.t();
                d2 d2VarC = w0.c();
                C01571 c01571 = new C01571(listT, DeductSettingActivity.this, null);
                this.label = 1;
                if (kotlinx.coroutines.f.c(d2VarC, c01571, this) == objD) {
                    return objD;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.k.b(obj);
            }
            return kotlin.v.f15822a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(DeductSettingActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlinx.coroutines.g.b(j0.a(w0.b()), null, null, new DeductSettingActivity$onCreate$7$1(this$0, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(final DeductSettingActivity this$0, ExamSiteModel examSite, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(examSite, "$examSite");
        RuleDeductDiffActivity.f9287e.c(this$0, examSite.examSiteId, false, this$0.i(), DataType.DEDUCT.getType(), false, new f.a.a.a.j.c() { // from class: cn.mucang.jiakaoyi.uilib.deduct.s
            @Override // f.a.a.a.j.c
            public final void onActivityResult(int i, int i2, Intent intent) {
                DeductSettingActivity.C(this.f9274a, i, i2, intent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(DeductSettingActivity this$0, int i, int i2, Intent intent) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        DeductSettingViewModel deductSettingViewModel = this$0.c;
        if (deductSettingViewModel != null) {
            deductSettingViewModel.z();
        } else {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(DeductSettingActivityBinding viewBinding, DeductSettingActivity this$0, LoadingState loadingState) {
        kotlin.jvm.internal.r.e(viewBinding, "$viewBinding");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : b.f9227a[loadingState.ordinal()];
        if (i == 1) {
            viewBinding.stateLayout.f();
            return;
        }
        if (i == 2) {
            viewBinding.stateLayout.e();
            return;
        }
        if (i != 3) {
            return;
        }
        DeductSettingViewModel deductSettingViewModel = this$0.c;
        if (deductSettingViewModel == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        if (deductSettingViewModel.u().e() != null) {
            DeductSettingViewModel deductSettingViewModel2 = this$0.c;
            if (deductSettingViewModel2 == null) {
                kotlin.jvm.internal.r.u("viewModel");
                throw null;
            }
            List<DeductEntity> listE = deductSettingViewModel2.u().e();
            kotlin.jvm.internal.r.c(listE);
            if (!listE.isEmpty()) {
                viewBinding.stateLayout.c();
                return;
            }
        }
        viewBinding.stateLayout.d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final KeMu i() {
        return (KeMu) this.f9226a.getValue();
    }

    private final JLoadingDialog j() {
        if (this.b == null) {
            this.b = new JLoadingDialog(this);
        }
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(DeductSettingActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(DeductSettingActivityBinding viewBinding, View view) {
        kotlin.jvm.internal.r.e(viewBinding, "$viewBinding");
        viewBinding.titleLayout.queryEt.setText("");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(DeductSettingActivity this$0, LoadingState loadingState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : b.f9227a[loadingState.ordinal()];
        if (i == 1) {
            JLoadingDialog jLoadingDialogJ = this$0.j();
            if (jLoadingDialogJ == null) {
                return;
            }
            jLoadingDialogJ.b(loadingState.getMsg());
            return;
        }
        if (i == 2) {
            JLoadingDialog jLoadingDialog = this$0.b;
            if (jLoadingDialog != null) {
                jLoadingDialog.dismiss();
            }
            cn.mucang.android.core.utils.u.h(loadingState.getMsg());
            return;
        }
        if (i != 3) {
            return;
        }
        JLoadingDialog jLoadingDialog2 = this$0.b;
        if (jLoadingDialog2 != null) {
            jLoadingDialog2.dismiss();
        }
        cn.mucang.android.core.utils.u.h(loadingState.getMsg());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(DeductSettingActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        DeductPersonalModifyActivity.c.a(this$0, this$0.i());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(e stepAdapter, List it) {
        kotlin.jvm.internal.r.e(stepAdapter, "$stepAdapter");
        kotlin.jvm.internal.r.d(it, "it");
        ArrayList arrayList = new ArrayList();
        for (Object obj : it) {
            StepItem stepItem = (StepItem) obj;
            if ((stepItem.getStep() == Step.K2_BianXianShiBie || stepItem.getStep() == Step.K2_YuanHuanLianXi || stepItem.getStep() == Step.K3_TeShuQuYu) ? false : true) {
                arrayList.add(obj);
            }
        }
        stepAdapter.i(arrayList);
        stepAdapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(d deductAdapter, DeductSettingActivityBinding viewBinding, List it) {
        kotlin.jvm.internal.r.e(deductAdapter, "$deductAdapter");
        kotlin.jvm.internal.r.e(viewBinding, "$viewBinding");
        kotlin.jvm.internal.r.d(it, "it");
        deductAdapter.i(it);
        deductAdapter.notifyDataSetChanged();
        if (it.isEmpty()) {
            viewBinding.stateLayout.d();
        } else {
            viewBinding.stateLayout.c();
            viewBinding.deductRecyclerView.scrollToPosition(0);
        }
    }

    @Override // androidx.lifecycle.m0.b
    public <T extends androidx.lifecycle.j0> T create(Class<T> modelClass) throws IllegalAccessException, InstantiationException, InvocationTargetException {
        kotlin.jvm.internal.r.e(modelClass, "modelClass");
        Serializable serializableExtra = getIntent().getSerializableExtra("key_exam_site");
        Objects.requireNonNull(serializableExtra, "null cannot be cast to non-null type cn.mucang.jiakaoyi.uilib.model.ExamSiteModel");
        Serializable serializableExtra2 = getIntent().getSerializableExtra("key_kemu");
        Objects.requireNonNull(serializableExtra2, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.engine.model.KeMu");
        T tNewInstance = modelClass.getConstructor(ExamSiteModel.class, KeMu.class).newInstance((ExamSiteModel) serializableExtra, (KeMu) serializableExtra2);
        kotlin.jvm.internal.r.d(tNewInstance, "modelClass.getConstructo…wInstance(examSite, keMu)");
        return tNewInstance;
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "扣分设置";
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        kotlinx.coroutines.g.b(j0.a(w0.b()), null, null, new AnonymousClass1(null), 3, null);
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    @SuppressLint({"NotifyDataSetChanged"})
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        final DeductSettingActivityBinding deductSettingActivityBindingInflate = DeductSettingActivityBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(deductSettingActivityBindingInflate, "inflate(layoutInflater)");
        setContentView(deductSettingActivityBindingInflate.getRoot());
        Serializable serializableExtra = getIntent().getSerializableExtra("key_exam_site");
        Objects.requireNonNull(serializableExtra, "null cannot be cast to non-null type cn.mucang.jiakaoyi.uilib.model.ExamSiteModel");
        final ExamSiteModel examSiteModel = (ExamSiteModel) serializableExtra;
        androidx.lifecycle.j0 j0VarA = new m0(this, this).a(DeductSettingViewModel.class);
        kotlin.jvm.internal.r.d(j0VarA, "ViewModelProvider(this, …del::class.java\n        )");
        DeductSettingViewModel deductSettingViewModel = (DeductSettingViewModel) j0VarA;
        this.c = deductSettingViewModel;
        if (deductSettingViewModel == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        if (n0.e(deductSettingViewModel.getC().examSiteName)) {
            deductSettingActivityBindingInflate.titleLayout.titleTv.setText("扣分设置");
        } else {
            TextView textView = deductSettingActivityBindingInflate.titleLayout.titleTv;
            StringBuilder sb = new StringBuilder();
            sb.append("扣分设置（");
            DeductSettingViewModel deductSettingViewModel2 = this.c;
            if (deductSettingViewModel2 == null) {
                kotlin.jvm.internal.r.u("viewModel");
                throw null;
            }
            sb.append((Object) deductSettingViewModel2.getC().examSiteName);
            sb.append((char) 65289);
            textView.setText(sb.toString());
        }
        deductSettingActivityBindingInflate.titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.deduct.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DeductSettingActivity.u(this.f9265a, view);
            }
        });
        if (i() != KeMu.K3) {
            deductSettingActivityBindingInflate.ruleRelevancy.setVisibility(0);
        }
        deductSettingActivityBindingInflate.titleLayout.clearTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.deduct.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DeductSettingActivity.v(deductSettingActivityBindingInflate, view);
            }
        });
        deductSettingActivityBindingInflate.titleLayout.queryEt.setHint("请输入关键字或扣分码");
        Editable text = deductSettingActivityBindingInflate.titleLayout.queryEt.getText();
        if ((text == null ? 0 : text.length()) > 0) {
            deductSettingActivityBindingInflate.titleLayout.clearTv.setVisibility(0);
        } else {
            deductSettingActivityBindingInflate.titleLayout.clearTv.setVisibility(8);
        }
        deductSettingActivityBindingInflate.titleLayout.queryEt.addTextChangedListener(new c(deductSettingActivityBindingInflate, this));
        deductSettingActivityBindingInflate.actionTv.setText("个人修改");
        deductSettingActivityBindingInflate.actionTv.setVisibility(0);
        deductSettingActivityBindingInflate.actionTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.deduct.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DeductSettingActivity.x(this.f9269a, view);
            }
        });
        final e eVar = new e();
        final d dVar = new d();
        deductSettingActivityBindingInflate.stepRecyclerView.setAdapter(eVar);
        deductSettingActivityBindingInflate.deductRecyclerView.setAdapter(dVar);
        DeductSettingViewModel deductSettingViewModel3 = this.c;
        if (deductSettingViewModel3 == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        deductSettingViewModel3.x().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.jiakaoyi.uilib.deduct.q
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                DeductSettingActivity.y(eVar, (List) obj);
            }
        });
        deductSettingActivityBindingInflate.stateLayout.setEmptyText("未查询到数据");
        DeductSettingViewModel deductSettingViewModel4 = this.c;
        if (deductSettingViewModel4 == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        deductSettingViewModel4.u().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.jiakaoyi.uilib.deduct.m
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                DeductSettingActivity.z(dVar, deductSettingActivityBindingInflate, (List) obj);
            }
        });
        deductSettingActivityBindingInflate.saveTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.deduct.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DeductSettingActivity.A(this.f9270a, view);
            }
        });
        deductSettingActivityBindingInflate.resetTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.deduct.r
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DeductSettingActivity.B(this.f9273a, examSiteModel, view);
            }
        });
        DeductSettingViewModel deductSettingViewModel5 = this.c;
        if (deductSettingViewModel5 == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        deductSettingViewModel5.b().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.jiakaoyi.uilib.deduct.l
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                DeductSettingActivity.D(deductSettingActivityBindingInflate, this, (LoadingState) obj);
            }
        });
        DeductSettingViewModel deductSettingViewModel6 = this.c;
        if (deductSettingViewModel6 == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        deductSettingViewModel6.a().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.jiakaoyi.uilib.deduct.k
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                DeductSettingActivity.w(this.f9266a, (LoadingState) obj);
            }
        });
        DeductSettingViewModel deductSettingViewModel7 = this.c;
        if (deductSettingViewModel7 != null) {
            deductSettingViewModel7.z();
        } else {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
    }
}
