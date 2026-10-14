package cn.mucang.android.jiakaoyi.teachingk2.autoteach.dialog;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.autoteach.dialog.TeachResumeDialog$init$1", f = "TeachResumeDialog.kt", l = {78}, m = "invokeSuspend")
final class TeachResumeDialog$init$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    int label;
    final /* synthetic */ TeachResumeDialog this$0;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.autoteach.dialog.TeachResumeDialog$init$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.autoteach.dialog.TeachResumeDialog$init$1$1", f = "TeachResumeDialog.kt", l = {49, 50}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.d<? super Integer>, Continuation<? super v>, Object> {
        int I$0;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ TeachResumeDialog this$0;

        AnonymousClass1(TeachResumeDialog teachResumeDialog, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.flow.d<? super Integer> dVar, Continuation<? super v> continuation) {
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
                cn.mucang.android.jiakaoyi.teachingk2.autoteach.dialog.f r1 = r7.this$0
                int r1 = cn.mucang.android.jiakaoyi.teachingk2.autoteach.dialog.TeachResumeDialog.a(r1)
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
            throw new UnsupportedOperationException("Method not decompiled: cn.mucang.android.jiakaoyi.teachingk2.autoteach.dialog.TeachResumeDialog$init$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.autoteach.dialog.TeachResumeDialog$init$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.autoteach.dialog.TeachResumeDialog$init$1$2", f = "TeachResumeDialog.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.d<? super Integer>, Throwable, Continuation<? super v>, Object> {
        int label;
        final /* synthetic */ TeachResumeDialog this$0;

        AnonymousClass2(TeachResumeDialog teachResumeDialog, Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(kotlinx.coroutines.flow.d<? super Integer> dVar, Throwable th, Continuation<? super v> continuation) {
            return new AnonymousClass2(this.this$0, continuation).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            k.b(obj);
            this.this$0.b();
            throw null;
        }
    }

    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/FlowCollector;", "emit", "", "value", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    public static final class a implements kotlinx.coroutines.flow.d<Integer> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ TeachResumeDialog f6283a;

        public a(TeachResumeDialog teachResumeDialog) {
        }

        @Override // kotlinx.coroutines.flow.d
        public Object emit(Integer num, Continuation continuation) {
            num.intValue();
            this.f6283a.c();
            throw null;
        }
    }

    TeachResumeDialog$init$1(TeachResumeDialog teachResumeDialog, Continuation<? super TeachResumeDialog$init$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new TeachResumeDialog$init$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((TeachResumeDialog$init$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            k.b(obj);
            kotlinx.coroutines.flow.c cVarX = kotlinx.coroutines.flow.f.x(kotlinx.coroutines.flow.f.t(new AnonymousClass1(this.this$0, null)), new AnonymousClass2(this.this$0, null));
            a aVar = new a(this.this$0);
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
