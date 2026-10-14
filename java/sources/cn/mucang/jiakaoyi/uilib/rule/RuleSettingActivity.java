package cn.mucang.jiakaoyi.uilib.rule;

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
import cn.mucang.android.jiakaoyi.engine.config.route.RuleConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.value.BooleanValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.FloatValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.IntegerValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.OptionsValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.RangeValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.jiakaoyi.uilib.diff.DataType;
import cn.mucang.jiakaoyi.uilib.diff.RuleDeductDiffActivity;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.model.RuleConfigEntity;
import cn.mucang.jiakaoyi.uilib.model.StepItem;
import cn.mucang.jiakaoyi.uilib.rule.dialog.ModifyRulesDialog;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mucang.android.jiakaoyi.uilib.databinding.RuleSettingActivityBinding;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
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
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 !2\u00020\u00012\u00020\u0002:\u0001!B\u0005¢\u0006\u0002\u0010\u0003J%\u0010\u0013\u001a\u0002H\u0014\"\b\b\u0000\u0010\u0014*\u00020\u00152\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u0002H\u00140\u0017H\u0016¢\u0006\u0002\u0010\u0018J\n\u0010\u0019\u001a\u0004\u0018\u00010\u000bH\u0002J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\b\u0010\u001c\u001a\u00020\u001dH\u0016J\u0012\u0010\u001e\u001a\u00020\u001d2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0015R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\f\u001a\u00020\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\t\u001a\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;", "Landroidx/lifecycle/ViewModelProvider$Factory;", "()V", "keMu", "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "getKeMu", "()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "keMu$delegate", "Lkotlin/Lazy;", "loadingDialog", "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;", "teaching", "", "getTeaching", "()Z", "teaching$delegate", "viewModel", "Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;", "create", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/ViewModel;", "modelClass", "Ljava/lang/Class;", "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;", "getLoadingDialog", "getStatName", "", "onBackPressed", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RuleSettingActivity extends BaseActivity implements m0.b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f9496e = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private JLoadingDialog f9497a;
    private RuleSettingViewModel b;
    private final Lazy c = kotlin.i.b(new Function0<Boolean>() { // from class: cn.mucang.jiakaoyi.uilib.rule.RuleSettingActivity$teaching$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            return Boolean.valueOf(this.this$0.getIntent().getBooleanExtra("key_teaching", false));
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f9498d = kotlin.i.b(new Function0<KeMu>() { // from class: cn.mucang.jiakaoyi.uilib.rule.RuleSettingActivity$keMu$2
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

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J*\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u0010H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$Companion;", "", "()V", "KEY_EXAM_SITE", "", "KEY_KEMU", "KEY_TEACHING", "launch", "", "context", "Landroid/content/Context;", "examSite", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "keMu", "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "teaching", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public static /* synthetic */ void b(a aVar, Context context, ExamSiteModel examSiteModel, KeMu keMu, boolean z, int i, Object obj) {
            if ((i & 8) != 0) {
                z = false;
            }
            aVar.a(context, examSiteModel, keMu, z);
        }

        public final void a(Context context, ExamSiteModel examSite, KeMu keMu, boolean z) {
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(examSite, "examSite");
            kotlin.jvm.internal.r.e(keMu, "keMu");
            Intent intent = new Intent(context, (Class<?>) RuleSettingActivity.class);
            intent.putExtra("key_exam_site", examSite);
            intent.putExtra("key_kemu", keMu);
            intent.putExtra("key_teaching", z);
            ActivityUtils.c(context, intent);
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f9499a;

        static {
            int[] iArr = new int[LoadingState.values().length];
            iArr[LoadingState.Loading.ordinal()] = 1;
            iArr[LoadingState.Fail.ordinal()] = 2;
            iArr[LoadingState.Success.ordinal()] = 3;
            f9499a = iArr;
        }
    }

    @Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016J*\u0010\f\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016¨\u0006\u000e"}, d2 = {"cn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onCreate$3", "Landroid/text/TextWatcher;", "afterTextChanged", "", "s", "Landroid/text/Editable;", "beforeTextChanged", "", TtmlNode.START, "", "count", TtmlNode.ANNOTATION_POSITION_AFTER, "onTextChanged", TtmlNode.ANNOTATION_POSITION_BEFORE, "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c implements TextWatcher {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ RuleSettingActivityBinding f9500a;
        final /* synthetic */ RuleSettingActivity b;

        c(RuleSettingActivityBinding ruleSettingActivityBinding, RuleSettingActivity ruleSettingActivity) {
            this.f9500a = ruleSettingActivityBinding;
            this.b = ruleSettingActivity;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s) {
            if ((s == null ? 0 : s.length()) > 0) {
                this.f9500a.titleLayout.clearTv.setVisibility(0);
            } else {
                this.f9500a.titleLayout.clearTv.setVisibility(8);
            }
            RuleSettingViewModel ruleSettingViewModel = this.b.b;
            if (ruleSettingViewModel == null) {
                kotlin.jvm.internal.r.u("viewModel");
                throw null;
            }
            String strValueOf = String.valueOf(s);
            Objects.requireNonNull(strValueOf, "null cannot be cast to non-null type kotlin.CharSequence");
            ruleSettingViewModel.F(StringsKt__StringsKt.J0(strValueOf).toString());
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s, int start, int before, int count) {
        }
    }

    @Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"cn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onCreate$dataAdapter$1", "Lcom/drakeet/multitype/MultiTypeAdapter;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class d extends com.drakeet.multitype.f {
        d() {
            super(null, 0, null, 7, null);
            FragmentManager supportFragmentManager = RuleSettingActivity.this.getSupportFragmentManager();
            kotlin.jvm.internal.r.d(supportFragmentManager, "supportFragmentManager");
            g(IntegerValue.class, new IntegerItemBinder(supportFragmentManager, false, false, 6, null));
            FragmentManager supportFragmentManager2 = RuleSettingActivity.this.getSupportFragmentManager();
            kotlin.jvm.internal.r.d(supportFragmentManager2, "supportFragmentManager");
            g(OptionsValue.class, new OptionItemBinder(supportFragmentManager2, false, false, 6, null));
            FragmentManager supportFragmentManager3 = RuleSettingActivity.this.getSupportFragmentManager();
            kotlin.jvm.internal.r.d(supportFragmentManager3, "supportFragmentManager");
            g(RangeValue.class, new RangeItemBinder(supportFragmentManager3, false, false, 6, null));
            FragmentManager supportFragmentManager4 = RuleSettingActivity.this.getSupportFragmentManager();
            kotlin.jvm.internal.r.d(supportFragmentManager4, "supportFragmentManager");
            g(BooleanValue.class, new SwitchItemBinder(supportFragmentManager4, false, false, 6, null));
            FragmentManager supportFragmentManager5 = RuleSettingActivity.this.getSupportFragmentManager();
            kotlin.jvm.internal.r.d(supportFragmentManager5, "supportFragmentManager");
            g(StringValue.class, new TextItemBinder(supportFragmentManager5, false, false, 6, null));
            FragmentManager supportFragmentManager6 = RuleSettingActivity.this.getSupportFragmentManager();
            kotlin.jvm.internal.r.d(supportFragmentManager6, "supportFragmentManager");
            g(FloatValue.class, new FloatItemBinder(supportFragmentManager6, false, false, 6, null));
        }
    }

    @Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"cn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onCreate$stepAdapter$1", "Lcom/drakeet/multitype/MultiTypeAdapter;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class e extends com.drakeet.multitype.f {
        e() {
            super(null, 0, null, 7, null);
            g(StepItem.class, new RuleStepItemBinder());
        }
    }

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.rule.RuleSettingActivity$onBackPressed$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.rule.RuleSettingActivity$onBackPressed$1", f = "RuleSettingActivity.kt", l = {240}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
        int label;

        /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.rule.RuleSettingActivity$onBackPressed$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
        @DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.rule.RuleSettingActivity$onBackPressed$1$1", f = "RuleSettingActivity.kt", l = {}, m = "invokeSuspend")
        static final class C01601 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
            final /* synthetic */ List<RuleConfigEntity> $changeList;
            int label;
            final /* synthetic */ RuleSettingActivity this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C01601(List<? extends RuleConfigEntity> list, RuleSettingActivity ruleSettingActivity, Continuation<? super C01601> continuation) {
                super(2, continuation);
                this.$changeList = list;
                this.this$0 = ruleSettingActivity;
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX INFO: renamed from: invokeSuspend$lambda-0, reason: not valid java name */
            public static final void m109invokeSuspend$lambda0(final RuleSettingActivity ruleSettingActivity, Boolean bool) {
                if (!kotlin.jvm.internal.r.a(bool, Boolean.TRUE)) {
                    ruleSettingActivity.finish();
                    return;
                }
                RuleSettingViewModel ruleSettingViewModel = ruleSettingActivity.b;
                if (ruleSettingViewModel == null) {
                    kotlin.jvm.internal.r.u("viewModel");
                    throw null;
                }
                ruleSettingViewModel.G(new Function1<Boolean, kotlin.v>() { // from class: cn.mucang.jiakaoyi.uilib.rule.RuleSettingActivity$onBackPressed$1$1$1$1
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
                            ruleSettingActivity.setResult(-1);
                            ruleSettingActivity.finish();
                        }
                    }
                });
                ruleSettingActivity.finish();
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
                return new C01601(this.$changeList, this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
                return ((C01601) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                kotlin.coroutines.intrinsics.b.d();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.k.b(obj);
                List<RuleConfigEntity> list = this.$changeList;
                if (list == null || !(!list.isEmpty())) {
                    this.this$0.finish();
                } else {
                    ModifyRulesDialog.a aVar = ModifyRulesDialog.c;
                    List<RuleConfigEntity> list2 = this.$changeList;
                    FragmentManager supportFragmentManager = this.this$0.getSupportFragmentManager();
                    kotlin.jvm.internal.r.d(supportFragmentManager, "supportFragmentManager");
                    final RuleSettingActivity ruleSettingActivity = this.this$0;
                    aVar.b(list2, false, supportFragmentManager, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.jiakaoyi.uilib.rule.r
                        @Override // cn.mucang.android.jiakaoyi.framework.h.b
                        public final void callback(Object obj2) {
                            RuleSettingActivity.AnonymousClass1.C01601.m109invokeSuspend$lambda0(ruleSettingActivity, (Boolean) obj2);
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
            return RuleSettingActivity.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            ArrayList arrayList;
            Object objD = kotlin.coroutines.intrinsics.b.d();
            int i = this.label;
            if (i == 0) {
                kotlin.k.b(obj);
                RuleSettingViewModel ruleSettingViewModel = RuleSettingActivity.this.b;
                if (ruleSettingViewModel == null) {
                    kotlin.jvm.internal.r.u("viewModel");
                    throw null;
                }
                List<RuleConfig<Object>> listW = ruleSettingViewModel.w();
                if (listW == null) {
                    arrayList = null;
                } else {
                    arrayList = new ArrayList(kotlin.collections.v.u(listW, 10));
                    Iterator<T> it = listW.iterator();
                    while (it.hasNext()) {
                        arrayList.add(cn.mucang.jiakaoyi.uilib.f.c((RuleConfig) it.next()));
                    }
                }
                d2 d2VarC = w0.c();
                C01601 c01601 = new C01601(arrayList, RuleSettingActivity.this, null);
                this.label = 1;
                if (kotlinx.coroutines.f.c(d2VarC, c01601, this) == objD) {
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
    public static final void A(RuleSettingActivity this$0, RuleSettingActivityBinding viewBinding, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(viewBinding, "$viewBinding");
        RuleSettingViewModel ruleSettingViewModel = this$0.b;
        if (ruleSettingViewModel == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        RuleLevel ruleLevelI = ruleSettingViewModel.I();
        if (ruleLevelI != null) {
            RuleLevel ruleLevel = RuleLevel.Normal;
            if (ruleLevelI == ruleLevel) {
                viewBinding.highRuleTv.setText(RuleLevel.High.getLevelName());
            } else {
                viewBinding.highRuleTv.setText(ruleLevel.getLevelName());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(e stepAdapter, List it) {
        kotlin.jvm.internal.r.e(stepAdapter, "$stepAdapter");
        kotlin.jvm.internal.r.d(it, "it");
        ArrayList arrayList = new ArrayList();
        for (Object obj : it) {
            StepItem stepItem = (StepItem) obj;
            if ((stepItem.getStep() == Step.K2_BianXianShiBie || stepItem.getStep() == Step.K2_YuanHuanLianXi) ? false : true) {
                arrayList.add(obj);
            }
        }
        stepAdapter.i(arrayList);
        stepAdapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(d dataAdapter, RuleSettingActivityBinding viewBinding, List it) {
        kotlin.jvm.internal.r.e(dataAdapter, "$dataAdapter");
        kotlin.jvm.internal.r.e(viewBinding, "$viewBinding");
        kotlin.jvm.internal.r.d(it, "it");
        dataAdapter.i(it);
        dataAdapter.notifyDataSetChanged();
        if (it.isEmpty()) {
            viewBinding.stateLayout.d();
        } else {
            viewBinding.stateLayout.c();
            viewBinding.recyclerView.scrollToPosition(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(RuleSettingActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlinx.coroutines.g.b(kotlinx.coroutines.j0.a(w0.b()), null, null, new RuleSettingActivity$onCreate$8$1(this$0, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(final RuleSettingActivity this$0, ExamSiteModel examSite, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(examSite, "$examSite");
        RuleDeductDiffActivity.f9287e.c(this$0, examSite.examSiteId, false, this$0.h(), DataType.RULE.getType(), this$0.j(), new f.a.a.a.j.c() { // from class: cn.mucang.jiakaoyi.uilib.rule.n
            @Override // f.a.a.a.j.c
            public final void onActivityResult(int i, int i2, Intent intent) {
                RuleSettingActivity.F(this.f9558a, i, i2, intent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F(RuleSettingActivity this$0, int i, int i2, Intent intent) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        RuleSettingViewModel ruleSettingViewModel = this$0.b;
        if (ruleSettingViewModel != null) {
            ruleSettingViewModel.E();
        } else {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
    }

    private final KeMu h() {
        return (KeMu) this.f9498d.getValue();
    }

    private final JLoadingDialog i() {
        if (this.f9497a == null) {
            this.f9497a = new JLoadingDialog(this);
        }
        return this.f9497a;
    }

    private final boolean j() {
        return ((Boolean) this.c.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(RuleSettingActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(RuleSettingActivityBinding viewBinding, View view) {
        kotlin.jvm.internal.r.e(viewBinding, "$viewBinding");
        viewBinding.titleLayout.queryEt.setText("");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(RuleSettingActivityBinding viewBinding, RuleSettingActivity this$0, LoadingState loadingState) {
        kotlin.jvm.internal.r.e(viewBinding, "$viewBinding");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : b.f9499a[loadingState.ordinal()];
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
        RuleSettingViewModel ruleSettingViewModel = this$0.b;
        if (ruleSettingViewModel == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        if (ruleSettingViewModel.y().e() != null) {
            RuleSettingViewModel ruleSettingViewModel2 = this$0.b;
            if (ruleSettingViewModel2 == null) {
                kotlin.jvm.internal.r.u("viewModel");
                throw null;
            }
            List<RuleConfig<Object>> listE = ruleSettingViewModel2.y().e();
            kotlin.jvm.internal.r.c(listE);
            if (!listE.isEmpty()) {
                viewBinding.stateLayout.c();
                return;
            }
        }
        viewBinding.stateLayout.d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(RuleSettingActivity this$0, LoadingState loadingState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : b.f9499a[loadingState.ordinal()];
        if (i == 1) {
            JLoadingDialog jLoadingDialogI = this$0.i();
            if (jLoadingDialogI == null) {
                return;
            }
            jLoadingDialogI.b(loadingState.getMsg());
            return;
        }
        if (i == 2) {
            JLoadingDialog jLoadingDialog = this$0.f9497a;
            if (jLoadingDialog != null) {
                jLoadingDialog.dismiss();
            }
            cn.mucang.android.core.utils.u.h(loadingState.getMsg());
            return;
        }
        if (i != 3) {
            return;
        }
        JLoadingDialog jLoadingDialog2 = this$0.f9497a;
        if (jLoadingDialog2 != null) {
            jLoadingDialog2.dismiss();
        }
        cn.mucang.android.core.utils.u.h(loadingState.getMsg());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(RuleSettingActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        RulePersonalModifyActivity.c.a(this$0, this$0.h());
    }

    @Override // androidx.lifecycle.m0.b
    public <T extends androidx.lifecycle.j0> T create(Class<T> modelClass) throws IllegalAccessException, InstantiationException, InvocationTargetException {
        kotlin.jvm.internal.r.e(modelClass, "modelClass");
        Serializable serializableExtra = getIntent().getSerializableExtra("key_exam_site");
        Objects.requireNonNull(serializableExtra, "null cannot be cast to non-null type cn.mucang.jiakaoyi.uilib.model.ExamSiteModel");
        Serializable serializableExtra2 = getIntent().getSerializableExtra("key_kemu");
        Objects.requireNonNull(serializableExtra2, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.engine.model.KeMu");
        T tNewInstance = modelClass.getConstructor(ExamSiteModel.class, KeMu.class, Boolean.TYPE).newInstance((ExamSiteModel) serializableExtra, (KeMu) serializableExtra2, Boolean.valueOf(getIntent().getBooleanExtra("key_teaching", false)));
        kotlin.jvm.internal.r.d(tNewInstance, "modelClass.getConstructo…examSite, keMu, teaching)");
        return tNewInstance;
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "评判规则";
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        kotlinx.coroutines.g.b(kotlinx.coroutines.j0.a(w0.b()), null, null, new AnonymousClass1(null), 3, null);
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity, cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    @SuppressLint({"NotifyDataSetChanged"})
    protected void onCreate(Bundle savedInstanceState) {
        StringBuilder sb;
        RuleSettingViewModel ruleSettingViewModel;
        super.onCreate(savedInstanceState);
        final RuleSettingActivityBinding ruleSettingActivityBindingInflate = RuleSettingActivityBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(ruleSettingActivityBindingInflate, "inflate(layoutInflater)");
        setContentView(ruleSettingActivityBindingInflate.getRoot());
        Serializable serializableExtra = getIntent().getSerializableExtra("key_exam_site");
        Objects.requireNonNull(serializableExtra, "null cannot be cast to non-null type cn.mucang.jiakaoyi.uilib.model.ExamSiteModel");
        final ExamSiteModel examSiteModel = (ExamSiteModel) serializableExtra;
        androidx.lifecycle.j0 j0VarA = new m0(this, this).a(RuleSettingViewModel.class);
        kotlin.jvm.internal.r.d(j0VarA, "ViewModelProvider(this, …del::class.java\n        )");
        RuleSettingViewModel ruleSettingViewModel2 = (RuleSettingViewModel) j0VarA;
        this.b = ruleSettingViewModel2;
        if (ruleSettingViewModel2 == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        if (n0.e(ruleSettingViewModel2.getC().examSiteName)) {
            ruleSettingActivityBindingInflate.titleLayout.titleTv.setText(j() ? "教学设置" : "评判规则");
        } else {
            TextView textView = ruleSettingActivityBindingInflate.titleLayout.titleTv;
            if (j()) {
                sb = new StringBuilder();
                sb.append("教学设置（");
                ruleSettingViewModel = this.b;
                if (ruleSettingViewModel == null) {
                    kotlin.jvm.internal.r.u("viewModel");
                    throw null;
                }
            } else {
                sb = new StringBuilder();
                sb.append("评判规则（");
                ruleSettingViewModel = this.b;
                if (ruleSettingViewModel == null) {
                    kotlin.jvm.internal.r.u("viewModel");
                    throw null;
                }
            }
            sb.append((Object) ruleSettingViewModel.getC().examSiteName);
            sb.append((char) 65289);
            textView.setText(sb.toString());
        }
        ruleSettingActivityBindingInflate.titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.rule.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RuleSettingActivity.v(this.f9559a, view);
            }
        });
        ruleSettingActivityBindingInflate.titleLayout.clearTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.rule.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RuleSettingActivity.w(ruleSettingActivityBindingInflate, view);
            }
        });
        ruleSettingActivityBindingInflate.titleLayout.queryEt.setHint("请输入关键字或规则码");
        Editable text = ruleSettingActivityBindingInflate.titleLayout.queryEt.getText();
        if ((text == null ? 0 : text.length()) > 0) {
            ruleSettingActivityBindingInflate.titleLayout.clearTv.setVisibility(0);
        } else {
            ruleSettingActivityBindingInflate.titleLayout.clearTv.setVisibility(8);
        }
        ruleSettingActivityBindingInflate.titleLayout.queryEt.addTextChangedListener(new c(ruleSettingActivityBindingInflate, this));
        ruleSettingActivityBindingInflate.actionTv.setText("个人修改");
        ruleSettingActivityBindingInflate.actionTv.setVisibility(0);
        ruleSettingActivityBindingInflate.actionTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.rule.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RuleSettingActivity.z(this.f9548a, view);
            }
        });
        if (AppUtils.h()) {
            ruleSettingActivityBindingInflate.highRuleTv.setVisibility(0);
            ruleSettingActivityBindingInflate.highRuleTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.rule.p
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RuleSettingActivity.A(this.f9560a, ruleSettingActivityBindingInflate, view);
                }
            });
        }
        final e eVar = new e();
        final d dVar = new d();
        ruleSettingActivityBindingInflate.stepRecyclerView.setAdapter(eVar);
        ruleSettingActivityBindingInflate.recyclerView.setAdapter(dVar);
        RuleSettingViewModel ruleSettingViewModel3 = this.b;
        if (ruleSettingViewModel3 == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        ruleSettingViewModel3.A().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.jiakaoyi.uilib.rule.k
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                RuleSettingActivity.B(eVar, (List) obj);
            }
        });
        ruleSettingActivityBindingInflate.stateLayout.setEmptyText("未查询到数据");
        RuleSettingViewModel ruleSettingViewModel4 = this.b;
        if (ruleSettingViewModel4 == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        ruleSettingViewModel4.y().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.jiakaoyi.uilib.rule.j
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                RuleSettingActivity.C(dVar, ruleSettingActivityBindingInflate, (List) obj);
            }
        });
        ruleSettingActivityBindingInflate.saveTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.rule.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RuleSettingActivity.D(this.f9553a, view);
            }
        });
        ruleSettingActivityBindingInflate.resetTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.rule.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RuleSettingActivity.E(this.f9547a, examSiteModel, view);
            }
        });
        RuleSettingViewModel ruleSettingViewModel5 = this.b;
        if (ruleSettingViewModel5 == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        ruleSettingViewModel5.b().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.jiakaoyi.uilib.rule.t
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                RuleSettingActivity.x(ruleSettingActivityBindingInflate, this, (LoadingState) obj);
            }
        });
        RuleSettingViewModel ruleSettingViewModel6 = this.b;
        if (ruleSettingViewModel6 == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        ruleSettingViewModel6.a().h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.jiakaoyi.uilib.rule.q
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                RuleSettingActivity.y(this.f9561a, (LoadingState) obj);
            }
        });
        RuleSettingViewModel ruleSettingViewModel7 = this.b;
        if (ruleSettingViewModel7 != null) {
            ruleSettingViewModel7.E();
        } else {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
    }
}
