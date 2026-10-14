package cn.mucang.android.jiakaoyi.teachingk2.ui;

import android.widget.TextView;
import cn.mucang.android.jiakaoyi.teachbase.R;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.StringCompanionObject;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.ui.CheckActivity$showResult$3", f = "CheckActivity.kt", l = {Videoio.CAP_PROP_XI_CC_MATRIX_32}, m = "invokeSuspend")
final class CheckActivity$showResult$3 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
    int label;
    final /* synthetic */ CheckActivity this$0;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.ui.CheckActivity$showResult$3$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.ui.CheckActivity$showResult$3$1", f = "CheckActivity.kt", l = {338, 339}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.d<? super Integer>, Continuation<? super kotlin.v>, Object> {
        int I$0;
        private /* synthetic */ Object L$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.flow.d<? super Integer> dVar, Continuation<? super kotlin.v> continuation) {
            return ((AnonymousClass1) create(dVar, continuation)).invokeSuspend(kotlin.v.f15822a);
        }

        /* JADX WARN: Code duplicated, block: B:13:0x0049 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:14:0x004a  */
        /* JADX WARN: Code duplicated, block: B:17:0x0059 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:19:0x005c  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0057 -> B:18:0x005a). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:19:0x005c
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
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
                goto L5a
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
                goto L4b
            L2e:
                kotlin.k.b(r8)
                java.lang.Object r8 = r7.L$0
                kotlinx.coroutines.flow.d r8 = (kotlinx.coroutines.flow.d) r8
                r1 = 5
                r4 = r7
            L37:
                int r5 = r1 + (-1)
                java.lang.Integer r1 = kotlin.coroutines.jvm.internal.a.d(r1)
                r4.L$0 = r8
                r4.I$0 = r5
                r4.label = r3
                java.lang.Object r1 = r8.emit(r1, r4)
                if (r1 != r0) goto L4a
                return r0
            L4a:
                r1 = r5
            L4b:
                r5 = 1000(0x3e8, double:4.94E-321)
                r4.L$0 = r8
                r4.I$0 = r1
                r4.label = r2
                java.lang.Object r5 = kotlinx.coroutines.s0.a(r5, r4)
                if (r5 != r0) goto L5a
                return r0
            L5a:
                if (r3 <= r1) goto L37
                kotlin.v r8 = kotlin.v.f15822a
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: cn.mucang.android.jiakaoyi.teachingk2.ui.CheckActivity$showResult$3.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.ui.CheckActivity$showResult$3$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.ui.CheckActivity$showResult$3$2", f = "CheckActivity.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.d<? super Integer>, Continuation<? super kotlin.v>, Object> {
        int label;
        final /* synthetic */ CheckActivity this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(CheckActivity checkActivity, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.this$0 = checkActivity;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.flow.d<? super Integer> dVar, Continuation<? super kotlin.v> continuation) {
            return ((AnonymousClass2) create(dVar, continuation)).invokeSuspend(kotlin.v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
            this.this$0.g().jumpTv.setText(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_detected_complete_5s));
            return kotlin.v.f15822a;
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.ui.CheckActivity$showResult$3$3, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "", "cause", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.ui.CheckActivity$showResult$3$3", f = "CheckActivity.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass3 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.d<? super Integer>, Throwable, Continuation<? super kotlin.v>, Object> {
        /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ CheckActivity this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(CheckActivity checkActivity, Continuation<? super AnonymousClass3> continuation) {
            super(3, continuation);
            this.this$0 = checkActivity;
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(kotlinx.coroutines.flow.d<? super Integer> dVar, Throwable th, Continuation<? super kotlin.v> continuation) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.this$0, continuation);
            anonymousClass3.L$0 = th;
            return anonymousClass3.invokeSuspend(kotlin.v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
            if (((Throwable) this.L$0) == null) {
                this.this$0.g().jumpTv.performClick();
            }
            return kotlin.v.f15822a;
        }
    }

    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/FlowCollector;", "emit", "", "value", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    public static final class a implements kotlinx.coroutines.flow.d<Integer> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CheckActivity f8132a;

        public a(CheckActivity checkActivity) {
            this.f8132a = checkActivity;
        }

        @Override // kotlinx.coroutines.flow.d
        public Object emit(Integer num, Continuation continuation) {
            int iIntValue = num.intValue();
            TextView textView = this.f8132a.g().jumpTv;
            StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
            String strA = cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_detected_complete_xx);
            kotlin.jvm.internal.r.d(strA, "getString(R.string.teachbase_detected_complete_xx)");
            String str = String.format(strA, Arrays.copyOf(new Object[]{kotlin.coroutines.jvm.internal.a.d(iIntValue)}, 1));
            kotlin.jvm.internal.r.d(str, "java.lang.String.format(format, *args)");
            textView.setText(str);
            return kotlin.v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CheckActivity$showResult$3(CheckActivity checkActivity, Continuation<? super CheckActivity$showResult$3> continuation) {
        super(2, continuation);
        this.this$0 = checkActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new CheckActivity$showResult$3(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((CheckActivity$showResult$3) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            kotlinx.coroutines.flow.c cVarX = kotlinx.coroutines.flow.f.x(kotlinx.coroutines.flow.f.z(kotlinx.coroutines.flow.f.t(new AnonymousClass1(null)), new AnonymousClass2(this.this$0, null)), new AnonymousClass3(this.this$0, null));
            a aVar = new a(this.this$0);
            this.label = 1;
            if (cVarX.d(aVar, this) == objD) {
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
