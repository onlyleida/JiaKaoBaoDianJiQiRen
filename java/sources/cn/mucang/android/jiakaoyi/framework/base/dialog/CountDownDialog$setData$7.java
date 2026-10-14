package cn.mucang.android.jiakaoyi.framework.base.dialog;

import cn.mucang.android.jiakaoyi.framework.databinding.GpsMissCommonBinding;
import com.alibaba.fastjson.asm.Opcodes;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.framework.base.dialog.CountDownDialog$setData$7", f = "CountDownDialog.kt", l = {Opcodes.FCMPL}, m = "invokeSuspend")
final class CountDownDialog$setData$7 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
    int label;
    final /* synthetic */ CountDownDialog this$0;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.base.dialog.CountDownDialog$setData$7$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.framework.base.dialog.CountDownDialog$setData$7$1", f = "CountDownDialog.kt", l = {78, 79}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.d<? super Integer>, Continuation<? super kotlin.v>, Object> {
        int I$0;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ CountDownDialog this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(CountDownDialog countDownDialog, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = countDownDialog;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.flow.d<? super Integer> dVar, Continuation<? super kotlin.v> continuation) {
            return ((AnonymousClass1) create(dVar, continuation)).invokeSuspend(kotlin.v.f15822a);
        }

        /* JADX WARN: Code duplicated, block: B:19:0x0064 A[RETURN] */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0065, code lost:
        
            if (1 > r1) goto L21;
         */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0062 -> B:20:0x0065). Please report as a decompilation issue!!! */
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
                goto L65
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
                goto L56
            L2e:
                kotlin.k.b(r8)
                java.lang.Object r8 = r7.L$0
                kotlinx.coroutines.flow.d r8 = (kotlinx.coroutines.flow.d) r8
                cn.mucang.android.jiakaoyi.framework.base.dialog.CountDownDialog r1 = r7.this$0
                cn.mucang.android.jiakaoyi.framework.base.dialog.CountDownDialog$a r1 = cn.mucang.android.jiakaoyi.framework.base.dialog.CountDownDialog.a(r1)
                int r1 = r1.getSecond()
                if (r3 > r1) goto L67
                r4 = r7
            L42:
                int r5 = r1 + (-1)
                java.lang.Integer r1 = kotlin.coroutines.jvm.internal.a.d(r1)
                r4.L$0 = r8
                r4.I$0 = r5
                r4.label = r3
                java.lang.Object r1 = r8.emit(r1, r4)
                if (r1 != r0) goto L55
                return r0
            L55:
                r1 = r5
            L56:
                r5 = 1000(0x3e8, double:4.94E-321)
                r4.L$0 = r8
                r4.I$0 = r1
                r4.label = r2
                java.lang.Object r5 = kotlinx.coroutines.s0.a(r5, r4)
                if (r5 != r0) goto L65
                return r0
            L65:
                if (r3 <= r1) goto L42
            L67:
                kotlin.v r8 = kotlin.v.f15822a
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: cn.mucang.android.jiakaoyi.framework.base.dialog.CountDownDialog$setData$7.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.base.dialog.CountDownDialog$setData$7$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.framework.base.dialog.CountDownDialog$setData$7$2", f = "CountDownDialog.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.d<? super Integer>, Throwable, Continuation<? super kotlin.v>, Object> {
        int label;
        final /* synthetic */ CountDownDialog this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(CountDownDialog countDownDialog, Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
            this.this$0 = countDownDialog;
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(kotlinx.coroutines.flow.d<? super Integer> dVar, Throwable th, Continuation<? super kotlin.v> continuation) {
            return new AnonymousClass2(this.this$0, continuation).invokeSuspend(kotlin.v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVarC;
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
            if (this.this$0.f3363a.getSecond() == 1 && (bVarC = this.this$0.f3363a.c()) != null) {
                bVarC.callback(kotlin.coroutines.jvm.internal.a.a(true));
            }
            return kotlin.v.f15822a;
        }
    }

    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/FlowCollector;", "emit", "", "value", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    public static final class a implements kotlinx.coroutines.flow.d<Integer> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CountDownDialog f3370a;

        public a(CountDownDialog countDownDialog) {
            this.f3370a = countDownDialog;
        }

        @Override // kotlinx.coroutines.flow.d
        public Object emit(Integer num, Continuation continuation) {
            int iIntValue = num.intValue();
            this.f3370a.f3363a.k(iIntValue);
            GpsMissCommonBinding gpsMissCommonBinding = this.f3370a.b;
            if (gpsMissCommonBinding != null) {
                gpsMissCommonBinding.secondText.setText(String.valueOf(iIntValue));
                return kotlin.v.f15822a;
            }
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CountDownDialog$setData$7(CountDownDialog countDownDialog, Continuation<? super CountDownDialog$setData$7> continuation) {
        super(2, continuation);
        this.this$0 = countDownDialog;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new CountDownDialog$setData$7(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((CountDownDialog$setData$7) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
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
            kotlin.k.b(obj);
        }
        return kotlin.v.f15822a;
    }
}
