package cn.mucang.android.jiakaoyi.teachingk2.unity.dialog;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import androidx.lifecycle.a0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.trace.x;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.DialogStepResultBinding;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ItemStepErrorBinding;
import cn.mucang.android.jiakaoyi.teachingk2.unity.analysis.AnalysisModel;
import cn.mucang.android.jiakaoyi.teachingk2.unity.models.replay.ReplayStepModel;
import com.tencent.open.SocialConstants;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.b.p;
import kotlin.jvm.b.q;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.y;
import kotlin.v;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001 B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bJ\b\u0010\u001b\u001a\u00020\u001cH\u0016J\u0012\u0010\u001d\u001a\u00020\u001c2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0015R\u001e\u0010\f\u001a\u0010\u0012\f\u0012\n \u000e*\u0004\u0018\u00010\n0\n0\rX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000fR\u001e\u0010\u0010\u001a\u0010\u0012\f\u0012\n \u000e*\u0004\u0018\u00010\n0\n0\rX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000fR\u001e\u0010\u0011\u001a\u0010\u0012\f\u0012\n \u000e*\u0004\u0018\u00010\n0\n0\rX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000fR\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082.¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/StepResultDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "showTraceButton", "", "list", "", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;", SocialConstants.PARAM_APP_DESC, "", "(Landroid/content/Context;ZLjava/util/List;Ljava/lang/String;)V", "cefangStep", "", "kotlin.jvm.PlatformType", "[Ljava/lang/String;", "daokuReverseStep", "daokuStep", "mainLaunch", "Lkotlinx/coroutines/Job;", "observer", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/TeachDialogShowEvent;", "time", "", "viewBinding", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogStepResultBinding;", "dismiss", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "ErrorItemBinder", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class StepResultDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f8509a;
    private final List<AnalysisModel> b;
    private final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String[] f8510d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String[] f8511e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String[] f8512f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private DialogStepResultBinding f8513g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private t1 f8514h;
    private int i;
    private final a0<cn.mucang.android.jiakaoyi.teachingk2.unity.business.f> j;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0017¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/StepResultDialog$ErrorItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemStepErrorBinding;", "(Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/StepResultDialog;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class a extends cn.mucang.android.jiakaoyi.framework.base.f<AnalysisModel, ItemStepErrorBinding> {
        final /* synthetic */ StepResultDialog b;

        public a(StepResultDialog r2) {
            r.e(r2, "this$0");
            this.b = r2;
        }

        @Override // com.drakeet.multitype.c
        public /* bridge */ /* synthetic */ void c(RecyclerView.c0 r1, Object r2) {
            n((cn.mucang.android.jiakaoyi.framework.base.h) r1, (AnalysisModel) r2);
        }

        @SuppressLint({"SetTextI18n"})
        public void n(cn.mucang.android.jiakaoyi.framework.base.h<ItemStepErrorBinding> r6, AnalysisModel r7) {
            r.e(r6, "holder");
            r.e(r7, "item");
            TextView r0 = ((ItemStepErrorBinding) r6.getViewBinding()).numberTv;
            StringBuilder r1 = new StringBuilder();
            r1.append(r6.getAdapterPosition() + 1);
            r1.append(12289);
            r0.setText(r1.toString());
            int r2 = r7.step;
            if (r2 != Step.K2_DaoCheRuKu.type) goto L9;
            if (r7.reverse == false) goto L7;
            String r3 = StepResultDialog.b(this.b)[r7.subStep];
            r.d(r3, "{\n                    da…ubStep]\n                }");
        L13:
            if (n0.g(r3) == false) goto L15;
            r3 = '[' + r3 + ']';
        L15:
            ((ItemStepErrorBinding) r6.getViewBinding()).titleTv.setText(r.m(r3, r7.deductName));
            y r4 = y.f14671a;
            String r5 = k0.a(R.string.teachbase_error_analysis2);
            r.d(r5, "getString(R.string.teachbase_error_analysis2)");
            int r8 = 0;
            String r9 = String.format(r5, Arrays.copyOf(new Object[0], 0));
            r.d(r9, "java.lang.String.format(format, *args)");
            SpannableString r10 = new SpannableString(r.m(r9, r7.errorAnalysis));
            r10.setSpan(new ForegroundColorSpan(ViewCompat.MEASURED_STATE_MASK), 0, 5, 17);
            ((ItemStepErrorBinding) r6.getViewBinding()).analysisTv.setText(r10);
            TextView r11 = ((ItemStepErrorBinding) r6.getViewBinding()).analysisTv;
            r.d(r11, "holder.viewBinding.analysisTv");
            if (n0.g(r7.errorAnalysis) == true) goto L19;
            r8 = 8;
        L19:
            r11.setVisibility(r8);
            return;
        L7:
            r3 = StepResultDialog.c(this.b)[r7.subStep];
            r.d(r3, "{\n                    da…ubStep]\n                }");
            goto L13
        L9:
            if (r2 != Step.K2_CeFangTingChe.type) goto L11;
            r3 = StepResultDialog.a(this.b)[r7.subStep];
            r.d(r3, "cefangStep[item.subStep]");
            goto L13
        L11:
            r3 = "";
            goto L13
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.StepResultDialog$onCreate$4, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @kotlin.coroutines.jvm.internal.d(c = "cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.StepResultDialog$onCreate$4", f = "StepResultDialog.kt", l = {cn.mucang.android.jiakaoyi.signal.communicate.receive.l.Receive_GEAR_DATA}, m = "invokeSuspend")
    static final class AnonymousClass4 extends SuspendLambda implements p<i0, kotlin.coroutines.c<? super v>, Object> {
        int label;
        final /* synthetic */ StepResultDialog this$0;

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.StepResultDialog$onCreate$4$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
        @kotlin.coroutines.jvm.internal.d(c = "cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.StepResultDialog$onCreate$4$1", f = "StepResultDialog.kt", l = {100, 101}, m = "invokeSuspend")
        static final class AnonymousClass1 extends SuspendLambda implements p<kotlinx.coroutines.flow.d<? super Integer>, kotlin.coroutines.c<? super v>, Object> {
            int I$0;
            private /* synthetic */ Object L$0;
            int label;
            final /* synthetic */ StepResultDialog this$0;

            AnonymousClass1(StepResultDialog r1, kotlin.coroutines.c<? super AnonymousClass1> r2) {
                this.this$0 = r1;
                super(2, r2);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final kotlin.coroutines.c<v> create(Object r3, kotlin.coroutines.c<?> r4) {
                AnonymousClass1 r0 = new AnonymousClass1(this.this$0, r4);
                r0.L$0 = r3;
                return r0;
            }

            @Override // kotlin.jvm.b.p
            public /* bridge */ /* synthetic */ Object invoke(kotlinx.coroutines.flow.d<? super Integer> r1, kotlin.coroutines.c<? super v> r2) {
                return invoke2(r1, r2);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(kotlinx.coroutines.flow.d<? super Integer> r1, kotlin.coroutines.c<? super v> r2) {
                return ((AnonymousClass1) create(r1, r2)).invokeSuspend(v.f15822a);
            }

            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005e -> B:20:0x0061). Please report as a decompilation issue!!! */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object r8) {
                Object r0 = kotlin.coroutines.intrinsics.a.d();
                int r1 = this.label;
                if (r1 == 0) goto L10;
                if (r1 == 1) goto L9;
                if (r1 != 2) goto L8;
                int r2 = this.I$0;
                kotlinx.coroutines.flow.d r4 = (kotlinx.coroutines.flow.d) this.L$0;
                kotlin.k.b(r8);
                kotlinx.coroutines.flow.d r9 = r4;
                AnonymousClass1 r5 = this;
            L20:
                if (1 > r2) goto L22;
            L13:
                int r6 = r2 - 1;
                Integer r3 = kotlin.coroutines.jvm.internal.a.d(r2);
                r5.L$0 = r9;
                r5.I$0 = r6;
                r5.label = 1;
                if (r9.emit(r3, r5) != r0) goto L16;
                return r0;
            L16:
                r2 = r6;
            L17:
                r5.L$0 = r9;
                r5.I$0 = r2;
                r5.label = 2;
                if (s0.a(1000, r5) != r0) goto L20;
                return r0;
            L22:
                return v.f15822a;
            L8:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            L9:
                r2 = this.I$0;
                kotlinx.coroutines.flow.d r7 = (kotlinx.coroutines.flow.d) this.L$0;
                kotlin.k.b(r8);
                r9 = r7;
                r5 = this;
                goto L17
            L10:
                kotlin.k.b(r8);
                r9 = (kotlinx.coroutines.flow.d) this.L$0;
                r2 = StepResultDialog.d(this.this$0);
                if (1 > r2) goto L22;
                r5 = this;
                goto L13
            }
        }

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.StepResultDialog$onCreate$4$2, reason: invalid class name */
        @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
        @kotlin.coroutines.jvm.internal.d(c = "cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.StepResultDialog$onCreate$4$2", f = "StepResultDialog.kt", l = {}, m = "invokeSuspend")
        static final class AnonymousClass2 extends SuspendLambda implements q<kotlinx.coroutines.flow.d<? super Integer>, Throwable, kotlin.coroutines.c<? super v>, Object> {
            int label;
            final /* synthetic */ StepResultDialog this$0;

            AnonymousClass2(StepResultDialog r1, kotlin.coroutines.c<? super AnonymousClass2> r2) {
                this.this$0 = r1;
                super(3, r2);
            }

            @Override // kotlin.jvm.b.q
            public /* bridge */ /* synthetic */ Object invoke(kotlinx.coroutines.flow.d<? super Integer> r1, Throwable r2, kotlin.coroutines.c<? super v> r3) {
                return invoke2(r1, r2, r3);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(kotlinx.coroutines.flow.d<? super Integer> r1, Throwable r2, kotlin.coroutines.c<? super v> r3) {
                return new AnonymousClass2(this.this$0, r3).invokeSuspend(v.f15822a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object r2) {
                kotlin.coroutines.intrinsics.a.d();
                if (this.label != 0) goto L7;
                kotlin.k.b(r2);
                this.this$0.dismiss();
                return v.f15822a;
            L7:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.StepResultDialog$onCreate$4$a */
        @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/FlowCollector;", "emit", "", "value", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
        public static final class a implements kotlinx.coroutines.flow.d<Integer> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ StepResultDialog f8515a;

            public a(StepResultDialog r1) {
                this.f8515a = r1;
            }

            @Override // kotlinx.coroutines.flow.d
            public Object emit(Integer r5, kotlin.coroutines.c r6) {
                int r7 = r5.intValue();
                DialogStepResultBinding r8 = StepResultDialog.e(this.f8515a);
                if (r8 == null) goto L6;
                TextView r9 = r8.timeTv;
                y r0 = y.f14671a;
                String r1 = k0.a(R.string.teachbase_close_xx);
                r.d(r1, "getString(R.string.teachbase_close_xx)");
                String r10 = String.format(r1, Arrays.copyOf(new Object[]{kotlin.coroutines.jvm.internal.a.d(r7)}, 1));
                r.d(r10, "java.lang.String.format(format, *args)");
                r9.setText(r10);
                return v.f15822a;
            L6:
                r.u("viewBinding");
                throw null;
            }
        }

        AnonymousClass4(StepResultDialog r1, kotlin.coroutines.c<? super AnonymousClass4> r2) {
            this.this$0 = r1;
            super(2, r2);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final kotlin.coroutines.c<v> create(Object r2, kotlin.coroutines.c<?> r3) {
            return new AnonymousClass4(this.this$0, r3);
        }

        @Override // kotlin.jvm.b.p
        public /* bridge */ /* synthetic */ Object invoke(i0 r1, kotlin.coroutines.c<? super v> r2) {
            return invoke2(r1, r2);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(i0 r1, kotlin.coroutines.c<? super v> r2) {
            return ((AnonymousClass4) create(r1, r2)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object r6) {
            Object r0 = kotlin.coroutines.intrinsics.a.d();
            int r1 = this.label;
            if (r1 == 0) goto L8;
            if (r1 != 1) goto L7;
            kotlin.k.b(r6);
        L12:
            return v.f15822a;
        L7:
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        L8:
            kotlin.k.b(r6);
            kotlinx.coroutines.flow.c r7 = kotlinx.coroutines.flow.f.x(kotlinx.coroutines.flow.f.t(new AnonymousClass1(this.this$0, null)), new AnonymousClass2(this.this$0, null));
            a r3 = new a(this.this$0);
            this.label = 1;
            if (r7.d(r3, this) != r0) goto L12;
            return r0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public StepResultDialog(Context r12, boolean r13, List<? extends AnalysisModel> r14, String r15) {
        r.e(r12, "context");
        r.e(r14, "list");
        super(r12, R.style.jiakaoyi__dialog);
        this.f8509a = r13;
        this.b = r14;
        this.c = r15;
        int r16 = R.string.teachingk2_has_not_started;
        int r17 = R.string.teachingk2_drive_into_project;
        int r1 = R.string.teachingk2_youdaoku;
        int r3 = R.string.teachingk2_zuochuku;
        int r5 = R.string.teachingk2_zuodaoku;
        int r7 = R.string.teachingk2_youchuku;
        this.f8510d = new String[]{k0.a(r16), k0.a(r17), k0.a(r1), k0.a(r3), k0.a(r5), k0.a(r7)};
        this.f8511e = new String[]{k0.a(r16), k0.a(r17), k0.a(r5), k0.a(r7), k0.a(r1), k0.a(r3)};
        this.f8512f = new String[]{k0.a(r16), k0.a(r17), k0.a(R.string.teachingk2_daorucefang), k0.a(R.string.teachingk2_shichucefang)};
        this.i = 5;
        this.j = new j(this);
    }

    public static final /* synthetic */ String[] a(StepResultDialog r0) {
        return r0.f8512f;
    }

    public static final /* synthetic */ String[] b(StepResultDialog r0) {
        return r0.f8511e;
    }

    public static final /* synthetic */ String[] c(StepResultDialog r0) {
        return r0.f8510d;
    }

    public static final /* synthetic */ int d(StepResultDialog r0) {
        return r0.i;
    }

    public static final /* synthetic */ DialogStepResultBinding e(StepResultDialog r0) {
        return r0.f8513g;
    }

    public static /* synthetic */ void f(StepResultDialog r0, cn.mucang.android.jiakaoyi.teachingk2.unity.business.f r1) {
        i(r0, r1);
    }

    public static /* synthetic */ void g(StepResultDialog r0, View r1) {
        k(r0, r1);
    }

    public static /* synthetic */ void h(StepResultDialog r0, View r1) {
        j(r0, r1);
    }

    private static final void i(StepResultDialog r0, cn.mucang.android.jiakaoyi.teachingk2.unity.business.f r1) {
        r.e(r0, "this$0");
        DialogExtensionKt.b(r0);
    }

    private static final void j(StepResultDialog r0, View r1) {
        r.e(r0, "this$0");
        r0.dismiss();
    }

    private static final void k(StepResultDialog r0, View r1) {
        r.e(r0, "this$0");
        r0.dismiss();
        if (x.b() == false) goto L5;
        ReplayStepModel r2 = new ReplayStepModel();
        r2.setData();
        cn.mucang.android.jiakaoyi.unity.c.d.e(r2);
        return;
    L5:
        u.h(k0.a(R.string.teachbase_miss_trace_data));
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        Result.a r0 = Result.Companion;     // Catch: Throwable -> L7
        super.dismiss();     // Catch: Throwable -> L7
        t1 r1 = this.f8514h;     // Catch: Throwable -> L7
        if (r1 == null) goto L5;
        t1.a.a(r1, null, 1, null);     // Catch: Throwable -> L7
        Result.m139constructorimpl(v.f15822a);     // Catch: Throwable -> L7
    L9:
        LiveBus.d(cn.mucang.android.jiakaoyi.teachingk2.unity.business.f.class).m(this.j);
        return;
    L5:
        r.u("mainLaunch");     // Catch: Throwable -> L7
        throw null;
    L7:
        th = move-exception;
        Result.a r2 = Result.Companion;
        Result.m139constructorimpl(kotlin.k.a(th));
        goto L9
    }

    @Override // android.app.Dialog
    @SuppressLint({"SetTextI18n"})
    protected void onCreate(Bundle r11) {
        super.onCreate(r11);
        Window r12 = getWindow();
        int r0 = 8;
        if (r12 == null) goto L6;
        r12.addFlags(8);
    L6:
        Window r13 = getWindow();
        if (r13 == null) goto L10;
        r13.requestFeature(1);
    L10:
        DialogStepResultBinding r14 = DialogStepResultBinding.inflate(getLayoutInflater());
        r.d(r14, "inflate(layoutInflater)");
        this.f8513g = r14;
        if (r14 == null) goto L48;
        setContentView(r14.getRoot());
        setCanceledOnTouchOutside(true);
        setCancelable(true);
        DialogExtensionKt.c(this);
        Window r15 = getWindow();
        if (r15 == null) goto L17;
        r15.setLayout((int) ((getContext().getResources().getDisplayMetrics().widthPixels * 1020.0f) / 1920.0f), -2);
    L17:
        if (n0.g(this.c) == false) goto L23;
        DialogStepResultBinding r16 = this.f8513g;
        if (r16 == null) goto L21;
        r16.descTv.setText(this.c);
        cn.mucang.android.jiakaoyi.framework.tts.g.r(this.c, TtsGrade.Teach);
        goto L23
    L21:
        r.u("viewBinding");
        throw null;
    L23:
        DialogStepResultBinding r17 = this.f8513g;
        if (r17 == null) goto L46;
        r17.leftTv.setOnClickListener(new l(this));
        DialogStepResultBinding r18 = this.f8513g;
        if (r18 == null) goto L44;
        TextView r19 = r18.rightTv;
        r.d(r19, "viewBinding.rightTv");
        if (this.f8509a == false) goto L30;
        r0 = 0;
    L30:
        r19.setVisibility(r0);
        DialogStepResultBinding r110 = this.f8513g;
        if (r110 == null) goto L42;
        r110.rightTv.setOnClickListener(new k(this));
        DialogStepResultBinding r111 = this.f8513g;
        if (r111 == null) goto L40;
        r111.deductRv.setLayoutManager(new LinearLayoutManager(getContext()));
        DialogStepResultBinding r112 = this.f8513g;
        if (r112 == null) goto L38;
        RecyclerView r113 = r112.deductRv;
        com.drakeet.multitype.f r1 = new com.drakeet.multitype.f(null, 0, null, 7, null);
        r1.g(AnalysisModel.class, new a(this));
        r1.i(this.b);
        v r2 = v.f15822a;
        r113.setAdapter(r1);
        this.f8514h = kotlinx.coroutines.f.b(j0.b(), null, null, new AnonymousClass4(this, null), 3, null);
        LiveBus.d(cn.mucang.android.jiakaoyi.teachingk2.unity.business.f.class).i(this.j);
        return;
    L38:
        r.u("viewBinding");
        throw null;
    L40:
        r.u("viewBinding");
        throw null;
    L42:
        r.u("viewBinding");
        throw null;
    L44:
        r.u("viewBinding");
        throw null;
    L46:
        r.u("viewBinding");
        throw null;
    L48:
        r.u("viewBinding");
        throw null;
    }

    public /* synthetic */ StepResultDialog(Context r1, boolean r2, List r3, String r4, int r5, kotlin.jvm.internal.o r6) {
        if ((r5 & 8) == 0) goto L5;
        r4 = null;
    L5:
        this(r1, r2, r3, r4);
    }
}
