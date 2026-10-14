package cn.mucang.android.jiakaoyi.teachingk2.p007unity.dialog;

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
import cn.mucang.android.jiakaoyi.engine.trace.TraceCacheManager;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.l;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.DialogStepResultBinding;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ItemStepErrorBinding;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.analysis.AnalysisModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.business.TeachDialogShowEvent;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.replay.ReplayStepModel;
import com.tencent.open.SocialConstants;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.b;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.flow.c;
import kotlinx.coroutines.flow.d;
import kotlinx.coroutines.flow.f;
import kotlinx.coroutines.g;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.j0;
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
    private final a0<TeachDialogShowEvent> j;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0017¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/StepResultDialog$ErrorItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemStepErrorBinding;", "(Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/StepResultDialog;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class a extends ViewBindingBinder<AnalysisModel, ItemStepErrorBinding> {
        final /* synthetic */ StepResultDialog b;

        public a(StepResultDialog this$0) {
            r.e(this$0, "this$0");
            this.b = this$0;
        }

        @Override // com.drakeet.multitype.c
        @SuppressLint({"SetTextI18n"})
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public void c(ViewBindingHolder<ItemStepErrorBinding> holder, AnalysisModel item) {
            String str;
            r.e(holder, "holder");
            r.e(item, "item");
            TextView textView = ((ItemStepErrorBinding) holder.getViewBinding()).numberTv;
            StringBuilder sb = new StringBuilder();
            sb.append(holder.getAdapterPosition() + 1);
            sb.append((char) 12289);
            textView.setText(sb.toString());
            int i = item.step;
            if (i == Step.K2_DaoCheRuKu.type) {
                if (item.reverse) {
                    str = this.b.f8511e[item.subStep];
                    r.d(str, "{\n                    da…ubStep]\n                }");
                } else {
                    str = this.b.f8510d[item.subStep];
                    r.d(str, "{\n                    da…ubStep]\n                }");
                }
            } else if (i == Step.K2_CeFangTingChe.type) {
                str = this.b.f8512f[item.subStep];
                r.d(str, "cefangStep[item.subStep]");
            } else {
                str = "";
            }
            if (n0.g(str)) {
                str = '[' + str + ']';
            }
            ((ItemStepErrorBinding) holder.getViewBinding()).titleTv.setText(r.m(str, item.deductName));
            StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
            String strA = k0.a(R.string.teachbase_error_analysis2);
            r.d(strA, "getString(R.string.teachbase_error_analysis2)");
            String str2 = String.format(strA, Arrays.copyOf(new Object[0], 0));
            r.d(str2, "java.lang.String.format(format, *args)");
            SpannableString spannableString = new SpannableString(r.m(str2, item.errorAnalysis));
            spannableString.setSpan(new ForegroundColorSpan(ViewCompat.MEASURED_STATE_MASK), 0, 5, 17);
            ((ItemStepErrorBinding) holder.getViewBinding()).analysisTv.setText(spannableString);
            TextView textView2 = ((ItemStepErrorBinding) holder.getViewBinding()).analysisTv;
            r.d(textView2, "holder.viewBinding.analysisTv");
            textView2.setVisibility(n0.g(item.errorAnalysis) ? 0 : 8);
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.StepResultDialog$onCreate$4, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.StepResultDialog$onCreate$4", f = "StepResultDialog.kt", l = {l.Receive_GEAR_DATA}, m = "invokeSuspend")
    static final class AnonymousClass4 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        int label;

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.StepResultDialog$onCreate$4$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
        @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.StepResultDialog$onCreate$4$1", f = "StepResultDialog.kt", l = {100, 101}, m = "invokeSuspend")
        static final class AnonymousClass1 extends SuspendLambda implements Function2<d<? super Integer>, Continuation<? super v>, Object> {
            int I$0;
            private /* synthetic */ Object L$0;
            int label;
            final /* synthetic */ StepResultDialog this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(StepResultDialog stepResultDialog, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = stepResultDialog;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Object obj, Continuation<?> continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, continuation);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(d<? super Integer> dVar, Continuation<? super v> continuation) {
                return ((AnonymousClass1) create(dVar, continuation)).invokeSuspend(v.f15822a);
            }

            /* JADX WARN: Code duplicated, block: B:19:0x0060 A[RETURN] */
            /* JADX WARN: Code restructure failed: missing block: B:20:0x0061, code lost:
            
                if (1 > r1) goto L21;
             */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005e -> B:20:0x0061). Please report as a decompilation issue!!! */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invokeSuspend(java.lang.Object r8) throws java.lang.Throwable {
                /*
                    r7 = this;
                    java.lang.Object r0 = kotlin.coroutines.intrinsics.a.d()
                    int r1 = r7.label
                    r2 = 2
                    r3 = 1
                    if (r1 == 0) goto L2e
                    if (r1 == r3) goto L22
                    if (r1 != r2) goto L1a
                    int r1 = r7.I$0
                    java.lang.Object r4 = r7.L$0
                    kotlinx.coroutines.flow.d r4 = (kotlinx.coroutines.flow.d) r4
                    kotlin.k.b(r8)
                    r8 = r4
                    r4 = r7
                    goto L61
                L1a:
                    java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                    java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                    r8.<init>(r0)
                    throw r8
                L22:
                    int r1 = r7.I$0
                    java.lang.Object r4 = r7.L$0
                    kotlinx.coroutines.flow.d r4 = (kotlinx.coroutines.flow.d) r4
                    kotlin.k.b(r8)
                    r8 = r4
                    r4 = r7
                    goto L52
                L2e:
                    kotlin.k.b(r8)
                    java.lang.Object r8 = r7.L$0
                    kotlinx.coroutines.flow.d r8 = (kotlinx.coroutines.flow.d) r8
                    cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.StepResultDialog r1 = r7.this$0
                    int r1 = cn.mucang.android.jiakaoyi.teachingk2.p007unity.dialog.StepResultDialog.d(r1)
                    if (r3 > r1) goto L63
                    r4 = r7
                L3e:
                    int r5 = r1 + (-1)
                    java.lang.Integer r1 = kotlin.coroutines.jvm.internal.a.d(r1)
                    r4.L$0 = r8
                    r4.I$0 = r5
                    r4.label = r3
                    java.lang.Object r1 = r8.emit(r1, r4)
                    if (r1 != r0) goto L51
                    return r0
                L51:
                    r1 = r5
                L52:
                    r5 = 1000(0x3e8, double:4.94E-321)
                    r4.L$0 = r8
                    r4.I$0 = r1
                    r4.label = r2
                    java.lang.Object r5 = kotlinx.coroutines.s0.a(r5, r4)
                    if (r5 != r0) goto L61
                    return r0
                L61:
                    if (r3 <= r1) goto L3e
                L63:
                    kotlin.v r8 = kotlin.v.f15822a
                    return r8
                */
                throw new UnsupportedOperationException("Method not decompiled: cn.mucang.android.jiakaoyi.teachingk2.p007unity.dialog.StepResultDialog.AnonymousClass4.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.StepResultDialog$onCreate$4$2, reason: invalid class name */
        @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
        @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.StepResultDialog$onCreate$4$2", f = "StepResultDialog.kt", l = {}, m = "invokeSuspend")
        static final class AnonymousClass2 extends SuspendLambda implements Function3<d<? super Integer>, Throwable, Continuation<? super v>, Object> {
            int label;
            final /* synthetic */ StepResultDialog this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass2(StepResultDialog stepResultDialog, Continuation<? super AnonymousClass2> continuation) {
                super(3, continuation);
                this.this$0 = stepResultDialog;
            }

            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(d<? super Integer> dVar, Throwable th, Continuation<? super v> continuation) {
                return new AnonymousClass2(this.this$0, continuation).invokeSuspend(v.f15822a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                b.d();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                k.b(obj);
                this.this$0.dismiss();
                return v.f15822a;
            }
        }

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.StepResultDialog$onCreate$4$a */
        @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/FlowCollector;", "emit", "", "value", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
        public static final class a implements d<Integer> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ StepResultDialog f8515a;

            public a(StepResultDialog stepResultDialog) {
                this.f8515a = stepResultDialog;
            }

            @Override // kotlinx.coroutines.flow.d
            public Object emit(Integer num, Continuation continuation) {
                int iIntValue = num.intValue();
                DialogStepResultBinding dialogStepResultBinding = this.f8515a.f8513g;
                if (dialogStepResultBinding == null) {
                    r.u("viewBinding");
                    throw null;
                }
                TextView textView = dialogStepResultBinding.timeTv;
                StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
                String strA = k0.a(R.string.teachbase_close_xx);
                r.d(strA, "getString(R.string.teachbase_close_xx)");
                String str = String.format(strA, Arrays.copyOf(new Object[]{kotlin.coroutines.jvm.internal.a.d(iIntValue)}, 1));
                r.d(str, "java.lang.String.format(format, *args)");
                textView.setText(str);
                return v.f15822a;
            }
        }

        AnonymousClass4(Continuation<? super AnonymousClass4> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return StepResultDialog.this.new AnonymousClass4(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
            return ((AnonymousClass4) create(i0Var, continuation)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objD = b.d();
            int i = this.label;
            if (i == 0) {
                k.b(obj);
                c cVarX = f.x(f.t(new AnonymousClass1(StepResultDialog.this, null)), new AnonymousClass2(StepResultDialog.this, null));
                a aVar = new a(StepResultDialog.this);
                this.label = 1;
                if (cVarX.d(aVar, this) == objD) {
                    return objD;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                k.b(obj);
            }
            return v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public StepResultDialog(Context context, boolean z, List<? extends AnalysisModel> list, String str) {
        super(context, R.style.jiakaoyi__dialog);
        r.e(context, "context");
        r.e(list, "list");
        this.f8509a = z;
        this.b = list;
        this.c = str;
        int i = R.string.teachingk2_has_not_started;
        int i2 = R.string.teachingk2_drive_into_project;
        int i3 = R.string.teachingk2_youdaoku;
        int i4 = R.string.teachingk2_zuochuku;
        int i5 = R.string.teachingk2_zuodaoku;
        int i6 = R.string.teachingk2_youchuku;
        this.f8510d = new String[]{k0.a(i), k0.a(i2), k0.a(i3), k0.a(i4), k0.a(i5), k0.a(i6)};
        this.f8511e = new String[]{k0.a(i), k0.a(i2), k0.a(i5), k0.a(i6), k0.a(i3), k0.a(i4)};
        this.f8512f = new String[]{k0.a(i), k0.a(i2), k0.a(R.string.teachingk2_daorucefang), k0.a(R.string.teachingk2_shichucefang)};
        this.i = 5;
        this.j = new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.j
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                StepResultDialog.i(this.f8528a, (TeachDialogShowEvent) obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(StepResultDialog this$0, TeachDialogShowEvent teachDialogShowEvent) {
        r.e(this$0, "this$0");
        DialogExtensionKt.b(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(StepResultDialog this$0, View view) {
        r.e(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(StepResultDialog this$0, View view) {
        r.e(this$0, "this$0");
        this$0.dismiss();
        if (!TraceCacheManager.b()) {
            u.h(k0.a(R.string.teachbase_miss_trace_data));
            return;
        }
        ReplayStepModel replayStepModel = new ReplayStepModel();
        replayStepModel.setData();
        cn.mucang.android.jiakaoyi.unity.c.d.e(replayStepModel);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        try {
            Result.Companion companion = Result.INSTANCE;
            super.dismiss();
            t1 t1Var = this.f8514h;
            if (t1Var == null) {
                r.u("mainLaunch");
                throw null;
            }
            t1.a.a(t1Var, null, 1, null);
            Result.m139constructorimpl(v.f15822a);
            LiveBus.d(TeachDialogShowEvent.class).m(this.j);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(k.a(th));
        }
    }

    @Override // android.app.Dialog
    @SuppressLint({"SetTextI18n"})
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Window window = getWindow();
        if (window != null) {
            window.addFlags(8);
        }
        Window window2 = getWindow();
        if (window2 != null) {
            window2.requestFeature(1);
        }
        DialogStepResultBinding dialogStepResultBindingInflate = DialogStepResultBinding.inflate(getLayoutInflater());
        r.d(dialogStepResultBindingInflate, "inflate(layoutInflater)");
        this.f8513g = dialogStepResultBindingInflate;
        if (dialogStepResultBindingInflate == null) {
            r.u("viewBinding");
            throw null;
        }
        setContentView(dialogStepResultBindingInflate.getRoot());
        setCanceledOnTouchOutside(true);
        setCancelable(true);
        DialogExtensionKt.c(this);
        Window window3 = getWindow();
        if (window3 != null) {
            window3.setLayout((int) ((getContext().getResources().getDisplayMetrics().widthPixels * 1020.0f) / 1920.0f), -2);
        }
        if (n0.g(this.c)) {
            DialogStepResultBinding dialogStepResultBinding = this.f8513g;
            if (dialogStepResultBinding == null) {
                r.u("viewBinding");
                throw null;
            }
            dialogStepResultBinding.descTv.setText(this.c);
            TtsManager.r(this.c, TtsGrade.Teach);
        }
        DialogStepResultBinding dialogStepResultBinding2 = this.f8513g;
        if (dialogStepResultBinding2 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogStepResultBinding2.leftTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StepResultDialog.j(this.f8530a, view);
            }
        });
        DialogStepResultBinding dialogStepResultBinding3 = this.f8513g;
        if (dialogStepResultBinding3 == null) {
            r.u("viewBinding");
            throw null;
        }
        TextView textView = dialogStepResultBinding3.rightTv;
        r.d(textView, "viewBinding.rightTv");
        textView.setVisibility(this.f8509a ? 0 : 8);
        DialogStepResultBinding dialogStepResultBinding4 = this.f8513g;
        if (dialogStepResultBinding4 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogStepResultBinding4.rightTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.dialog.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StepResultDialog.k(this.f8529a, view);
            }
        });
        DialogStepResultBinding dialogStepResultBinding5 = this.f8513g;
        if (dialogStepResultBinding5 == null) {
            r.u("viewBinding");
            throw null;
        }
        dialogStepResultBinding5.deductRv.setLayoutManager(new LinearLayoutManager(getContext()));
        DialogStepResultBinding dialogStepResultBinding6 = this.f8513g;
        if (dialogStepResultBinding6 == null) {
            r.u("viewBinding");
            throw null;
        }
        RecyclerView recyclerView = dialogStepResultBinding6.deductRv;
        com.drakeet.multitype.f fVar = new com.drakeet.multitype.f(null, 0, null, 7, null);
        fVar.g(AnalysisModel.class, new a(this));
        fVar.i(this.b);
        v vVar = v.f15822a;
        recyclerView.setAdapter(fVar);
        this.f8514h = g.b(j0.b(), null, null, new AnonymousClass4(null), 3, null);
        LiveBus.d(TeachDialogShowEvent.class).i(this.j);
    }

    public /* synthetic */ StepResultDialog(Context context, boolean z, List list, String str, int i, o oVar) {
        this(context, z, list, (i & 8) != 0 ? null : str);
    }
}
