package kotlinx.coroutines.flow.internal;

import java.util.Objects;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.v;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.t;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.internal.ThreadContextKt;
import kotlinx.coroutines.w;
import kotlinx.coroutines.y1;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\b\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0002*\u00020\u0003H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"T1", "T2", "R", "Lkotlinx/coroutines/i0;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1", "<anonymous>"}, k = 3, mv = {1, 1, 15})
final class CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ kotlinx.coroutines.flow.d $this_unsafeFlow;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    private i0 p$;
    final /* synthetic */ g this$0;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1$1, reason: invalid class name */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\t\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0002*\b\u0012\u0004\u0012\u00020\u00040\u0003H\u008a@¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"T1", "T2", "R", "Lkotlinx/coroutines/channels/n;", "", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1$second$1", "<anonymous>"}, k = 3, mv = {1, 1, 15})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.channels.n<? super Object>, Continuation<? super v>, Object> {
        Object L$0;
        Object L$1;
        int label;
        private kotlinx.coroutines.channels.n p$;

        /* JADX INFO: Add missing generic type declarations: [T2] */
        /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1$1$a */
        public static final class a<T2> implements kotlinx.coroutines.flow.d<T2> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ kotlinx.coroutines.channels.n f15967a;

            public a(kotlinx.coroutines.channels.n nVar) {
                this.f15967a = nVar;
            }

            @Override // kotlinx.coroutines.flow.d
            public Object emit(Object obj, Continuation continuation) {
                t tVarK = this.f15967a.k();
                if (obj == null) {
                    obj = p.f15980a;
                }
                Object objF = tVarK.F(obj, continuation);
                return objF == kotlin.coroutines.intrinsics.b.d() ? objF : v.f15822a;
            }
        }

        AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1.this.new AnonymousClass1(continuation);
            anonymousClass1.p$ = (kotlinx.coroutines.channels.n) obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.channels.n<? super Object> nVar, Continuation<? super v> continuation) {
            return ((AnonymousClass1) create(nVar, continuation)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objD = kotlin.coroutines.intrinsics.b.d();
            int i = this.label;
            if (i == 0) {
                kotlin.k.b(obj);
                kotlinx.coroutines.channels.n nVar = this.p$;
                kotlinx.coroutines.flow.c cVar = CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1.this.this$0.f15975a;
                a aVar = new a(nVar);
                this.L$0 = nVar;
                this.L$1 = cVar;
                this.label = 1;
                if (cVar.d(aVar, this) == objD) {
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

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1$3, reason: invalid class name */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0010\b\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"T1", "T2", "R", "Lkotlin/v;", "it", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1$2", "<anonymous>"}, k = 3, mv = {1, 1, 15})
    static final class AnonymousClass3 extends SuspendLambda implements Function2<v, Continuation<? super v>, Object> {
        final /* synthetic */ Object $cnt;
        final /* synthetic */ CoroutineContext $scopeContext;
        final /* synthetic */ kotlinx.coroutines.channels.p $second;
        Object L$0;
        Object L$1;
        int label;
        private v p$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(CoroutineContext coroutineContext, Object obj, kotlinx.coroutines.channels.p pVar, Continuation continuation) {
            super(2, continuation);
            this.$scopeContext = coroutineContext;
            this.$cnt = obj;
            this.$second = pVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            AnonymousClass3 anonymousClass3 = CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1.this.new AnonymousClass3(this.$scopeContext, this.$cnt, this.$second, continuation);
            anonymousClass3.p$0 = (v) obj;
            return anonymousClass3;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(v vVar, Continuation<? super v> continuation) {
            return ((AnonymousClass3) create(vVar, continuation)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objD = kotlin.coroutines.intrinsics.b.d();
            int i = this.label;
            if (i == 0) {
                kotlin.k.b(obj);
                v vVar = this.p$0;
                kotlinx.coroutines.flow.c cVar = CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1.this.this$0.b;
                Object obj2 = new kotlinx.coroutines.flow.d<T1>() { // from class: kotlinx.coroutines.flow.internal.CombineKt$zipImpl$.inlined.unsafeFlow.1.lambda.1.3.1

                    /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1$3$1$1, reason: invalid class name and collision with other inner class name */
                    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0010\b\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"T1", "T2", "R", "Lkotlin/v;", "it", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1$2$invokeSuspend$$inlined$collect$1$lambda$1", "<anonymous>"}, k = 3, mv = {1, 1, 15})
                    static final class C03661 extends SuspendLambda implements Function2<v, Continuation<? super v>, Object> {
                        final /* synthetic */ Object $value;
                        Object L$0;
                        Object L$1;
                        Object L$2;
                        int label;
                        private v p$0;
                        final /* synthetic */ AnonymousClass1 this$0;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        C03661(Object obj, Continuation continuation, AnonymousClass1 anonymousClass1) {
                            super(2, continuation);
                            this.$value = obj;
                            this.this$0 = anonymousClass1;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
                            C03661 c03661 = new C03661(this.$value, continuation, this.this$0);
                            c03661.p$0 = (v) obj;
                            return c03661;
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(v vVar, Continuation<? super v> continuation) {
                            return ((C03661) create(vVar, continuation)).invokeSuspend(v.f15822a);
                        }

                        /* JADX WARN: Code duplicated, block: B:27:0x0094 A[RETURN] */
                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) throws Throwable {
                            v vVar;
                            Object obj2;
                            kotlinx.coroutines.flow.d dVar;
                            Object objD = kotlin.coroutines.intrinsics.b.d();
                            int i = this.label;
                            if (i != 0) {
                                if (i == 1) {
                                    v vVar2 = (v) this.L$0;
                                    kotlin.k.b(obj);
                                    vVar = vVar2;
                                } else if (i == 2) {
                                    dVar = (kotlinx.coroutines.flow.d) this.L$2;
                                    obj2 = this.L$1;
                                    vVar = (v) this.L$0;
                                    kotlin.k.b(obj);
                                    this.L$0 = vVar;
                                    this.L$1 = obj2;
                                    this.label = 3;
                                    if (dVar.emit(obj, this) == objD) {
                                        return objD;
                                    }
                                } else {
                                    if (i != 3) {
                                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                    }
                                    kotlin.k.b(obj);
                                }
                                return v.f15822a;
                            }
                            kotlin.k.b(obj);
                            v vVar3 = this.p$0;
                            kotlinx.coroutines.channels.p pVar = AnonymousClass3.this.$second;
                            this.L$0 = vVar3;
                            this.label = 1;
                            Object objJ0 = kotlinx.coroutines.channels.i.j0(pVar, this);
                            if (objJ0 == objD) {
                                return objD;
                            }
                            vVar = vVar3;
                            obj = objJ0;
                            if (obj == null) {
                                throw new AbortFlowException(CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1.this.$this_unsafeFlow);
                            }
                            CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1 combineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1 = CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1.this;
                            kotlinx.coroutines.flow.d dVar2 = combineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1.$this_unsafeFlow;
                            Function3 function3 = combineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1.this$0.c;
                            Object obj3 = this.$value;
                            Object obj4 = obj == p.f15980a ? null : obj;
                            this.L$0 = vVar;
                            this.L$1 = obj;
                            this.L$2 = dVar2;
                            this.label = 2;
                            kotlin.jvm.internal.q.c(6);
                            kotlin.jvm.internal.q.c(6);
                            Object objInvoke = function3.invoke(obj3, obj4, this);
                            kotlin.jvm.internal.q.c(7);
                            kotlin.jvm.internal.q.c(7);
                            if (objInvoke == objD) {
                                return objD;
                            }
                            obj2 = obj;
                            obj = objInvoke;
                            dVar = dVar2;
                            this.L$0 = vVar;
                            this.L$1 = obj2;
                            this.label = 3;
                            if (dVar.emit(obj, this) == objD) {
                                return objD;
                            }
                            return v.f15822a;
                        }
                    }

                    @Override // kotlinx.coroutines.flow.d
                    public Object emit(Object obj3, Continuation continuation) {
                        AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                        CoroutineContext coroutineContext = anonymousClass3.$scopeContext;
                        v vVar2 = v.f15822a;
                        Object objB = d.b(coroutineContext, vVar2, anonymousClass3.$cnt, new C03661(obj3, null, this), continuation);
                        return objB == kotlin.coroutines.intrinsics.b.d() ? objB : vVar2;
                    }
                };
                this.L$0 = vVar;
                this.L$1 = cVar;
                this.label = 1;
                if (cVar.d(obj2, this) == objD) {
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
    CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1(kotlinx.coroutines.flow.d dVar, Continuation continuation, g gVar) {
        super(2, continuation);
        this.$this_unsafeFlow = dVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1 combineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1 = new CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1(this.$this_unsafeFlow, continuation, this.this$0);
        combineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1.p$ = (i0) obj;
        return combineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x00a2 A[PHI: r1
      0x00a2: PHI (r1v13 kotlinx.coroutines.channels.p) = (r1v12 kotlinx.coroutines.channels.p), (r1v14 kotlinx.coroutines.channels.p) binds: [B:28:0x00b4, B:20:0x00a0] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1, types: [kotlinx.coroutines.channels.p] */
    /* JADX WARN: Type inference failed for: r1v5 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlinx.coroutines.channels.p pVar;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        ?? r1 = this.label;
        try {
            if (r1 == 0) {
                kotlin.k.b(obj);
                i0 i0Var = this.p$;
                kotlinx.coroutines.channels.p pVarE = ProduceKt.e(i0Var, null, 0, new AnonymousClass1(null), 3, null);
                final w wVarB = y1.b(null, 1, null);
                Objects.requireNonNull(pVarE, "null cannot be cast to non-null type kotlinx.coroutines.channels.SendChannel<*>");
                ((t) pVarE).t(new Function1<Throwable, v>() { // from class: kotlinx.coroutines.flow.internal.CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1.2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ v invoke(Throwable th) {
                        invoke2(th);
                        return v.f15822a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Throwable th) {
                        if (wVarB.isActive()) {
                            wVarB.a(new AbortFlowException(CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1.this.$this_unsafeFlow));
                        }
                    }
                });
                try {
                    CoroutineContext coroutineContext = i0Var.getCoroutineContext();
                    Object objB = ThreadContextKt.b(coroutineContext);
                    CoroutineContext coroutineContextPlus = i0Var.getCoroutineContext().plus(wVarB);
                    v vVar = v.f15822a;
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3(coroutineContext, objB, pVarE, null);
                    this.L$0 = i0Var;
                    this.L$1 = pVarE;
                    this.L$2 = wVarB;
                    this.L$3 = coroutineContext;
                    this.L$4 = objB;
                    this.label = 1;
                    if (d.c(coroutineContextPlus, vVar, null, anonymousClass3, this, 4, null) == objD) {
                        return objD;
                    }
                    pVar = pVarE;
                    if (!pVar.g()) {
                        kotlinx.coroutines.channels.p.a.a(pVar, null, 1, null);
                    }
                } catch (AbortFlowException e2) {
                    e = e2;
                    pVar = pVarE;
                    l.a(e, this.$this_unsafeFlow);
                    if (!pVar.g()) {
                    }
                    return v.f15822a;
                } catch (Throwable th) {
                    th = th;
                    r1 = pVarE;
                    if (!r1.g()) {
                        kotlinx.coroutines.channels.p.a.a(r1, null, 1, null);
                    }
                    throw th;
                }
            } else {
                if (r1 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                pVar = (kotlinx.coroutines.channels.p) this.L$1;
                try {
                    kotlin.k.b(obj);
                    if (!pVar.g()) {
                        kotlinx.coroutines.channels.p.a.a(pVar, null, 1, null);
                    }
                } catch (AbortFlowException e3) {
                    e = e3;
                    l.a(e, this.$this_unsafeFlow);
                    if (!pVar.g()) {
                    }
                    return v.f15822a;
                }
            }
            return v.f15822a;
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
