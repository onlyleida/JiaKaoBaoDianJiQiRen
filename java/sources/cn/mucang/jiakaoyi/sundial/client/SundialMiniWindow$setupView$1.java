package cn.mucang.jiakaoyi.sundial.client;

import android.widget.LinearLayout;
import android.widget.TextView;
import cn.mucang.android.core.utils.u;
import cn.mucang.jiakaoyi.sundial.R;
import cn.mucang.jiakaoyi.sundial.client.model.LeaningTime;
import cn.mucang.jiakaoyi.sundial.databinding.LayoutMiniSundialWindowBinding;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.v;
import kotlinx.coroutines.flow.b2;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.sundial.client.SundialMiniWindow$setupView$1", f = "SundialMiniWindow.kt", l = {}, m = "invokeSuspend")
final class SundialMiniWindow$setupView$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ SundialMiniWindow this$0;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.sundial.client.SundialMiniWindow$setupView$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.jiakaoyi.sundial.client.SundialMiniWindow$setupView$1$1", f = "SundialMiniWindow.kt", l = {245}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        int label;
        final /* synthetic */ SundialMiniWindow this$0;

        /* JADX INFO: renamed from: cn.mucang.jiakaoyi.sundial.client.SundialMiniWindow$setupView$1$1$a */
        @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/FlowCollector;", "emit", "", "value", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
        public static final class a implements kotlinx.coroutines.flow.d<Boolean> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ SundialMiniWindow f9135a;

            public a(SundialMiniWindow sundialMiniWindow) {
                this.f9135a = sundialMiniWindow;
            }

            @Override // kotlinx.coroutines.flow.d
            public Object emit(Boolean bool, Continuation continuation) {
                LinearLayout linearLayout;
                LinearLayout linearLayout2;
                v vVar = null;
                if (bool.booleanValue()) {
                    LayoutMiniSundialWindowBinding layoutMiniSundialWindowBinding = this.f9135a.f9128a;
                    TextView textView = layoutMiniSundialWindowBinding == null ? null : layoutMiniSundialWindowBinding.tvTime;
                    if (textView != null) {
                        textView.setText("练车计时");
                    }
                    LayoutMiniSundialWindowBinding layoutMiniSundialWindowBinding2 = this.f9135a.f9128a;
                    if (layoutMiniSundialWindowBinding2 != null && (linearLayout = layoutMiniSundialWindowBinding2.llDetail) != null) {
                        linearLayout.setBackgroundResource(R.drawable.shape_sundial_float_w);
                        vVar = v.f15822a;
                    }
                    if (vVar == kotlin.coroutines.intrinsics.b.d()) {
                        return vVar;
                    }
                } else {
                    LayoutMiniSundialWindowBinding layoutMiniSundialWindowBinding3 = this.f9135a.f9128a;
                    TextView textView2 = layoutMiniSundialWindowBinding3 == null ? null : layoutMiniSundialWindowBinding3.tvTime;
                    if (textView2 != null) {
                        textView2.setText("非计时学员");
                    }
                    LayoutMiniSundialWindowBinding layoutMiniSundialWindowBinding4 = this.f9135a.f9128a;
                    if (layoutMiniSundialWindowBinding4 != null && (linearLayout2 = layoutMiniSundialWindowBinding4.llDetail) != null) {
                        linearLayout2.setBackgroundResource(R.drawable.shape_sundial_float_w_red);
                        vVar = v.f15822a;
                    }
                    if (vVar == kotlin.coroutines.intrinsics.b.d()) {
                        return vVar;
                    }
                }
                return v.f15822a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(SundialMiniWindow sundialMiniWindow, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = sundialMiniWindow;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objD = kotlin.coroutines.intrinsics.b.d();
            int i = this.label;
            if (i == 0) {
                kotlin.k.b(obj);
                b2<Boolean> b2VarA = SundialClient.f9111a.A();
                a aVar = new a(this.this$0);
                this.label = 1;
                if (b2VarA.d(aVar, this) == objD) {
                    return objD;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.k.b(obj);
            }
            return v.f15822a;
        }
    }

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.sundial.client.SundialMiniWindow$setupView$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.jiakaoyi.sundial.client.SundialMiniWindow$setupView$1$2", f = "SundialMiniWindow.kt", l = {245}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        int label;
        final /* synthetic */ SundialMiniWindow this$0;

        /* JADX INFO: renamed from: cn.mucang.jiakaoyi.sundial.client.SundialMiniWindow$setupView$1$2$a */
        @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
        static final class a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ SundialMiniWindow f9136a;
            final /* synthetic */ LeaningTime b;

            a(SundialMiniWindow sundialMiniWindow, LeaningTime leaningTime) {
                this.f9136a = sundialMiniWindow;
                this.b = leaningTime;
            }

            @Override // java.lang.Runnable
            public final void run() {
                LinearLayout linearLayout;
                LinearLayout linearLayout2;
                LayoutMiniSundialWindowBinding layoutMiniSundialWindowBinding = this.f9136a.f9128a;
                if (layoutMiniSundialWindowBinding != null && (linearLayout2 = layoutMiniSundialWindowBinding.llDetail) != null) {
                    linearLayout2.setBackgroundResource(R.drawable.shape_sundial_float_w);
                }
                LayoutMiniSundialWindowBinding layoutMiniSundialWindowBinding2 = this.f9136a.f9128a;
                TextView textView = layoutMiniSundialWindowBinding2 == null ? null : layoutMiniSundialWindowBinding2.tvTime;
                if (textView != null) {
                    textView.setSelected(this.b.getIsLearning());
                }
                LayoutMiniSundialWindowBinding layoutMiniSundialWindowBinding3 = this.f9136a.f9128a;
                TextView textView2 = layoutMiniSundialWindowBinding3 != null ? layoutMiniSundialWindowBinding3.tvTime : null;
                if (textView2 == null) {
                    return;
                }
                String strM = "练车计时";
                if (this.b.getIsLearning()) {
                    if (this.b.getTime() > 0) {
                        strM = this.f9136a.m(this.b.getTime());
                    }
                } else if (!SundialClient.f9111a.A().getValue().booleanValue()) {
                    LayoutMiniSundialWindowBinding layoutMiniSundialWindowBinding4 = this.f9136a.f9128a;
                    if (layoutMiniSundialWindowBinding4 != null && (linearLayout = layoutMiniSundialWindowBinding4.llDetail) != null) {
                        linearLayout.setBackgroundResource(R.drawable.shape_sundial_float_w_red);
                    }
                    strM = "非计时学员";
                }
                textView2.setText(strM);
            }
        }

        /* JADX INFO: renamed from: cn.mucang.jiakaoyi.sundial.client.SundialMiniWindow$setupView$1$2$b */
        @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/FlowCollector;", "emit", "", "value", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
        public static final class b implements kotlinx.coroutines.flow.d<LeaningTime> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ SundialMiniWindow f9137a;

            public b(SundialMiniWindow sundialMiniWindow) {
                this.f9137a = sundialMiniWindow;
            }

            @Override // kotlinx.coroutines.flow.d
            public Object emit(LeaningTime leaningTime, Continuation continuation) {
                u.f(new a(this.f9137a, leaningTime));
                return v.f15822a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(SundialMiniWindow sundialMiniWindow, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.this$0 = sundialMiniWindow;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
            return ((AnonymousClass2) create(i0Var, continuation)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objD = kotlin.coroutines.intrinsics.b.d();
            int i = this.label;
            if (i == 0) {
                kotlin.k.b(obj);
                b2<LeaningTime> b2VarS = SundialClient.f9111a.s();
                b bVar = new b(this.this$0);
                this.label = 1;
                if (b2VarS.d(bVar, this) == objD) {
                    return objD;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.k.b(obj);
            }
            return v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SundialMiniWindow$setupView$1(SundialMiniWindow sundialMiniWindow, Continuation<? super SundialMiniWindow$setupView$1> continuation) {
        super(2, continuation);
        this.this$0 = sundialMiniWindow;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        SundialMiniWindow$setupView$1 sundialMiniWindow$setupView$1 = new SundialMiniWindow$setupView$1(this.this$0, continuation);
        sundialMiniWindow$setupView$1.L$0 = obj;
        return sundialMiniWindow$setupView$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((SundialMiniWindow$setupView$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        i0 i0Var = (i0) this.L$0;
        kotlinx.coroutines.g.b(i0Var, null, null, new AnonymousClass1(this.this$0, null), 3, null);
        kotlinx.coroutines.g.b(i0Var, null, null, new AnonymousClass2(this.this$0, null), 3, null);
        return v.f15822a;
    }
}
