package cn.mucang.jiakaoyi.uilib.rule;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.jiakaoyi.uilib.model.RuleConfigEntity;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.mucang.android.jiakaoyi.uilib.databinding.ActivityModifyPersonalBinding;
import java.io.Serializable;
import java.util.List;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000 \u000e2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000eB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\rH\u0015R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u000f"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/rule/RulePersonalModifyActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityModifyPersonalBinding;", "()V", "keMu", "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "getKeMu", "()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "keMu$delegate", "Lkotlin/Lazy;", "getStatName", "", "init", "", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RulePersonalModifyActivity extends BaseViewBindingActivity<ActivityModifyPersonalBinding> {
    public static final a c = new a(null);
    private final Lazy b = kotlin.i.b(new Function0<KeMu>() { // from class: cn.mucang.jiakaoyi.uilib.rule.RulePersonalModifyActivity$keMu$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final KeMu invoke() {
            Serializable serializableExtra = this.this$0.getIntent().getSerializableExtra("keMu");
            Objects.requireNonNull(serializableExtra, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.engine.model.KeMu");
            return (KeMu) serializableExtra;
        }
    });

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/rule/RulePersonalModifyActivity$Companion;", "", "()V", "KEY_KEMU", "", "launch", "", "context", "Landroid/content/Context;", "keMu", "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context, KeMu keMu) {
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(keMu, "keMu");
            Intent intent = new Intent(context, (Class<?>) RulePersonalModifyActivity.class);
            intent.putExtra("keMu", keMu);
            ActivityUtils.c(context, intent);
        }
    }

    @Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"cn/mucang/jiakaoyi/uilib/rule/RulePersonalModifyActivity$init$dataAdapter$1", "Lcom/drakeet/multitype/MultiTypeAdapter;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b extends com.drakeet.multitype.f {
        b() {
            super(null, 0, null, 7, null);
            g(RuleConfigEntity.class, new RuleModifyItemBinder());
            g(Long.class, new ModifyTimeBinder());
        }
    }

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.rule.RulePersonalModifyActivity$init$3, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.rule.RulePersonalModifyActivity$init$3", f = "RulePersonalModifyActivity.kt", l = {67, 79}, m = "invokeSuspend")
    static final class AnonymousClass3 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
        final /* synthetic */ b $dataAdapter;
        final /* synthetic */ JLoadingDialog $loadingDialog;
        int label;

        /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.rule.RulePersonalModifyActivity$init$3$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
        @DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.rule.RulePersonalModifyActivity$init$3$1", f = "RulePersonalModifyActivity.kt", l = {}, m = "invokeSuspend")
        static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
            final /* synthetic */ b $dataAdapter;
            final /* synthetic */ JLoadingDialog $loadingDialog;
            final /* synthetic */ List<RuleConfigEntity> $personalModifyLogs;
            int label;
            final /* synthetic */ RulePersonalModifyActivity this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(JLoadingDialog jLoadingDialog, List<RuleConfigEntity> list, RulePersonalModifyActivity rulePersonalModifyActivity, b bVar, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.$loadingDialog = jLoadingDialog;
                this.$personalModifyLogs = list;
                this.this$0 = rulePersonalModifyActivity;
                this.$dataAdapter = bVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.$loadingDialog, this.$personalModifyLogs, this.this$0, this.$dataAdapter, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
                return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                kotlin.coroutines.intrinsics.b.d();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.k.b(obj);
                this.$loadingDialog.dismiss();
                List<RuleConfigEntity> personalModifyLogs = this.$personalModifyLogs;
                kotlin.jvm.internal.r.d(personalModifyLogs, "personalModifyLogs");
                if (!personalModifyLogs.isEmpty()) {
                    this.this$0.g().stateLayout.c();
                    b bVar = this.$dataAdapter;
                    List<RuleConfigEntity> personalModifyLogs2 = this.$personalModifyLogs;
                    kotlin.jvm.internal.r.d(personalModifyLogs2, "personalModifyLogs");
                    bVar.i(personalModifyLogs2);
                    this.$dataAdapter.notifyDataSetChanged();
                } else {
                    this.this$0.g().stateLayout.d();
                }
                return kotlin.v.f15822a;
            }
        }

        /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.rule.RulePersonalModifyActivity$init$3$2, reason: invalid class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
        @DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.rule.RulePersonalModifyActivity$init$3$2", f = "RulePersonalModifyActivity.kt", l = {}, m = "invokeSuspend")
        static final class AnonymousClass2 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
            int label;
            final /* synthetic */ RulePersonalModifyActivity this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass2(RulePersonalModifyActivity rulePersonalModifyActivity, Continuation<? super AnonymousClass2> continuation) {
                super(2, continuation);
                this.this$0 = rulePersonalModifyActivity;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass2(this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
                return ((AnonymousClass2) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                kotlin.coroutines.intrinsics.b.d();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.k.b(obj);
                this.this$0.g().stateLayout.e();
                return kotlin.v.f15822a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(JLoadingDialog jLoadingDialog, b bVar, Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
            this.$loadingDialog = jLoadingDialog;
            this.$dataAdapter = bVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return RulePersonalModifyActivity.this.new AnonymousClass3(this.$loadingDialog, this.$dataAdapter, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
            return ((AnonymousClass3) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objD = kotlin.coroutines.intrinsics.b.d();
            int i = this.label;
            try {
                if (i != 0) {
                    if (i == 1) {
                        kotlin.k.b(obj);
                    } else {
                        if (i != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        kotlin.k.b(obj);
                    }
                    return kotlin.v.f15822a;
                }
                kotlin.k.b(obj);
                List<RuleConfigEntity> listN = new cn.mucang.jiakaoyi.uilib.api.n(RulePersonalModifyActivity.this.k()).n(ExamSiteUtil.n(RulePersonalModifyActivity.this.k(), 0L));
                d2 d2VarC = w0.c();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$loadingDialog, listN, RulePersonalModifyActivity.this, this.$dataAdapter, null);
                this.label = 1;
                if (kotlinx.coroutines.f.c(d2VarC, anonymousClass1, this) == objD) {
                    return objD;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                d2 d2VarC2 = w0.c();
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(RulePersonalModifyActivity.this, null);
                this.label = 2;
                if (kotlinx.coroutines.f.c(d2VarC2, anonymousClass2, this) == objD) {
                    return objD;
                }
            }
            return kotlin.v.f15822a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final KeMu k() {
        return (KeMu) this.b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(RulePersonalModifyActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        RuleHistoryModifyLogActivity.b.a(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(RulePersonalModifyActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "个人修改";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    @SuppressLint({"NotifyDataSetChanged"})
    protected void init() {
        super.init();
        b bVar = new b();
        g().titleLayout.actionTv.setText("历史修改记录");
        g().titleLayout.actionTv.setVisibility(0);
        g().titleLayout.actionTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.rule.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RulePersonalModifyActivity.l(this.f9541a, view);
            }
        });
        g().titleLayout.titleTv.setText("当前个人修改");
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.rule.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RulePersonalModifyActivity.m(this.f9537a, view);
            }
        });
        g().ruleRecyclerView.setAdapter(bVar);
        JLoadingDialog jLoadingDialog = new JLoadingDialog(this);
        JLoadingDialog.c(jLoadingDialog, null, 1, null);
        kotlinx.coroutines.g.b(kotlinx.coroutines.j0.a(w0.b()), null, null, new AnonymousClass3(jLoadingDialog, bVar, null), 3, null);
    }
}
