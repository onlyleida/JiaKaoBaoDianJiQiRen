package kotlinx.coroutines.flow;

import java.util.NoSuchElementException;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.flow.internal.AbortFlowException;

/* JADX INFO: loaded from: classes6.dex */
final /* synthetic */ class FlowKt__ReduceKt {

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static final class a<T> implements kotlinx.coroutines.flow.d<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Ref$ObjectRef f15938a;

        public a(Ref$ObjectRef ref$ObjectRef) {
            this.f15938a = ref$ObjectRef;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlinx.coroutines.flow.d
        public Object emit(Object obj, Continuation continuation) {
            this.f15938a.element = obj;
            if (kotlin.coroutines.jvm.internal.a.a(false).booleanValue()) {
                return kotlin.v.f15822a;
            }
            throw new AbortFlowException(this);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static final class b<T> implements kotlinx.coroutines.flow.d<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Ref$ObjectRef f15939a;

        public b(Ref$ObjectRef ref$ObjectRef) {
            this.f15939a = ref$ObjectRef;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlinx.coroutines.flow.d
        public Object emit(Object obj, Continuation continuation) {
            this.f15939a.element = obj;
            if (kotlin.coroutines.jvm.internal.a.a(false).booleanValue()) {
                return kotlin.v.f15822a;
            }
            throw new AbortFlowException(this);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static final class c<T> implements kotlinx.coroutines.flow.d<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Ref$ObjectRef f15940a;

        public c(Ref$ObjectRef ref$ObjectRef) {
            this.f15940a = ref$ObjectRef;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlinx.coroutines.flow.d
        public Object emit(Object obj, Continuation continuation) {
            Ref$ObjectRef ref$ObjectRef = this.f15940a;
            if (!(ref$ObjectRef.element == kotlinx.coroutines.flow.internal.p.f15980a)) {
                throw new IllegalArgumentException("Flow has more than one element".toString());
            }
            ref$ObjectRef.element = obj;
            return kotlin.v.f15822a;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static final class d<T> implements kotlinx.coroutines.flow.d<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Ref$ObjectRef f15941a;

        public d(Ref$ObjectRef ref$ObjectRef) {
            this.f15941a = ref$ObjectRef;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlinx.coroutines.flow.d
        public Object emit(Object obj, Continuation continuation) {
            boolean z;
            Ref$ObjectRef ref$ObjectRef = this.f15941a;
            T t = ref$ObjectRef.element;
            T t2 = (T) kotlinx.coroutines.flow.internal.p.f15980a;
            if (t == t2) {
                ref$ObjectRef.element = obj;
                z = true;
            } else {
                ref$ObjectRef.element = t2;
                z = false;
            }
            if (kotlin.coroutines.jvm.internal.a.a(z).booleanValue()) {
                return kotlin.v.f15822a;
            }
            throw new AbortFlowException(this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final <T> Object a(kotlinx.coroutines.flow.c<? extends T> cVar, Continuation<? super T> continuation) throws Throwable {
        FlowKt__ReduceKt$first$1 flowKt__ReduceKt$first$1;
        Ref$ObjectRef ref$ObjectRef;
        AbortFlowException e2;
        kotlinx.coroutines.flow.d<? super Object> dVar;
        if (continuation instanceof FlowKt__ReduceKt$first$1) {
            flowKt__ReduceKt$first$1 = (FlowKt__ReduceKt$first$1) continuation;
            int i = flowKt__ReduceKt$first$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                flowKt__ReduceKt$first$1.label = i - Integer.MIN_VALUE;
            } else {
                flowKt__ReduceKt$first$1 = new FlowKt__ReduceKt$first$1(continuation);
            }
        } else {
            flowKt__ReduceKt$first$1 = new FlowKt__ReduceKt$first$1(continuation);
        }
        Object obj = flowKt__ReduceKt$first$1.result;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i2 = flowKt__ReduceKt$first$1.label;
        if (i2 == 0) {
            kotlin.k.b(obj);
            Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            ref$ObjectRef2.element = (T) kotlinx.coroutines.flow.internal.p.f15980a;
            kotlinx.coroutines.flow.d<? super Object> aVar = new a<>(ref$ObjectRef2);
            try {
                flowKt__ReduceKt$first$1.L$0 = cVar;
                flowKt__ReduceKt$first$1.L$1 = ref$ObjectRef2;
                flowKt__ReduceKt$first$1.L$2 = cVar;
                flowKt__ReduceKt$first$1.L$3 = aVar;
                flowKt__ReduceKt$first$1.label = 1;
                if (cVar.d(aVar, flowKt__ReduceKt$first$1) == objD) {
                    return objD;
                }
                ref$ObjectRef = ref$ObjectRef2;
            } catch (AbortFlowException e3) {
                ref$ObjectRef = ref$ObjectRef2;
                e2 = e3;
                dVar = aVar;
                kotlinx.coroutines.flow.internal.l.a(e2, dVar);
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            dVar = (a) flowKt__ReduceKt$first$1.L$3;
            ref$ObjectRef = (Ref$ObjectRef) flowKt__ReduceKt$first$1.L$1;
            try {
                kotlin.k.b(obj);
            } catch (AbortFlowException e4) {
                e2 = e4;
                kotlinx.coroutines.flow.internal.l.a(e2, dVar);
            }
        }
        T t = ref$ObjectRef.element;
        if (t != kotlinx.coroutines.flow.internal.p.f15980a) {
            return t;
        }
        throw new NoSuchElementException("Expected at least one element");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final <T> Object b(kotlinx.coroutines.flow.c<? extends T> cVar, Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, Continuation<? super T> continuation) throws Throwable {
        FlowKt__ReduceKt$first$3 flowKt__ReduceKt$first$3;
        Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function3;
        Ref$ObjectRef ref$ObjectRef;
        AbortFlowException e2;
        kotlinx.coroutines.flow.d<? super Object> dVar;
        if (continuation instanceof FlowKt__ReduceKt$first$3) {
            flowKt__ReduceKt$first$3 = (FlowKt__ReduceKt$first$3) continuation;
            int i = flowKt__ReduceKt$first$3.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                flowKt__ReduceKt$first$3.label = i - Integer.MIN_VALUE;
            } else {
                flowKt__ReduceKt$first$3 = new FlowKt__ReduceKt$first$3(continuation);
            }
        } else {
            flowKt__ReduceKt$first$3 = new FlowKt__ReduceKt$first$3(continuation);
        }
        Object obj = flowKt__ReduceKt$first$3.result;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i2 = flowKt__ReduceKt$first$3.label;
        if (i2 == 0) {
            kotlin.k.b(obj);
            Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            ref$ObjectRef2.element = (T) kotlinx.coroutines.flow.internal.p.f15980a;
            kotlinx.coroutines.flow.d<? super Object> flowKt__ReduceKt$first$$inlined$collectWhile$2 = new FlowKt__ReduceKt$first$$inlined$collectWhile$2<>(function2, ref$ObjectRef2);
            try {
                flowKt__ReduceKt$first$3.L$0 = cVar;
                flowKt__ReduceKt$first$3.L$1 = function2;
                flowKt__ReduceKt$first$3.L$2 = ref$ObjectRef2;
                flowKt__ReduceKt$first$3.L$3 = cVar;
                flowKt__ReduceKt$first$3.L$4 = flowKt__ReduceKt$first$$inlined$collectWhile$2;
                flowKt__ReduceKt$first$3.label = 1;
                if (cVar.d(flowKt__ReduceKt$first$$inlined$collectWhile$2, flowKt__ReduceKt$first$3) == objD) {
                    return objD;
                }
                function3 = function2;
                ref$ObjectRef = ref$ObjectRef2;
            } catch (AbortFlowException e3) {
                function3 = function2;
                ref$ObjectRef = ref$ObjectRef2;
                e2 = e3;
                dVar = flowKt__ReduceKt$first$$inlined$collectWhile$2;
                kotlinx.coroutines.flow.internal.l.a(e2, dVar);
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            dVar = (FlowKt__ReduceKt$first$$inlined$collectWhile$2) flowKt__ReduceKt$first$3.L$4;
            ref$ObjectRef = (Ref$ObjectRef) flowKt__ReduceKt$first$3.L$2;
            function3 = (Function2) flowKt__ReduceKt$first$3.L$1;
            try {
                kotlin.k.b(obj);
            } catch (AbortFlowException e4) {
                e2 = e4;
                kotlinx.coroutines.flow.internal.l.a(e2, dVar);
            }
        }
        T t = ref$ObjectRef.element;
        if (t != kotlinx.coroutines.flow.internal.p.f15980a) {
            return t;
        }
        throw new NoSuchElementException("Expected at least one element matching the predicate " + function3);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final <T> Object c(kotlinx.coroutines.flow.c<? extends T> cVar, Continuation<? super T> continuation) throws Throwable {
        FlowKt__ReduceKt$firstOrNull$1 flowKt__ReduceKt$firstOrNull$1;
        Ref$ObjectRef ref$ObjectRef;
        AbortFlowException e2;
        kotlinx.coroutines.flow.d<? super Object> dVar;
        if (continuation instanceof FlowKt__ReduceKt$firstOrNull$1) {
            flowKt__ReduceKt$firstOrNull$1 = (FlowKt__ReduceKt$firstOrNull$1) continuation;
            int i = flowKt__ReduceKt$firstOrNull$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                flowKt__ReduceKt$firstOrNull$1.label = i - Integer.MIN_VALUE;
            } else {
                flowKt__ReduceKt$firstOrNull$1 = new FlowKt__ReduceKt$firstOrNull$1(continuation);
            }
        } else {
            flowKt__ReduceKt$firstOrNull$1 = new FlowKt__ReduceKt$firstOrNull$1(continuation);
        }
        Object obj = flowKt__ReduceKt$firstOrNull$1.result;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i2 = flowKt__ReduceKt$firstOrNull$1.label;
        if (i2 == 0) {
            kotlin.k.b(obj);
            Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            ref$ObjectRef2.element = null;
            kotlinx.coroutines.flow.d<? super Object> bVar = new b<>(ref$ObjectRef2);
            try {
                flowKt__ReduceKt$firstOrNull$1.L$0 = cVar;
                flowKt__ReduceKt$firstOrNull$1.L$1 = ref$ObjectRef2;
                flowKt__ReduceKt$firstOrNull$1.L$2 = cVar;
                flowKt__ReduceKt$firstOrNull$1.L$3 = bVar;
                flowKt__ReduceKt$firstOrNull$1.label = 1;
                if (cVar.d(bVar, flowKt__ReduceKt$firstOrNull$1) == objD) {
                    return objD;
                }
                ref$ObjectRef = ref$ObjectRef2;
            } catch (AbortFlowException e3) {
                ref$ObjectRef = ref$ObjectRef2;
                e2 = e3;
                dVar = bVar;
                kotlinx.coroutines.flow.internal.l.a(e2, dVar);
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            dVar = (b) flowKt__ReduceKt$firstOrNull$1.L$3;
            ref$ObjectRef = (Ref$ObjectRef) flowKt__ReduceKt$firstOrNull$1.L$1;
            try {
                kotlin.k.b(obj);
            } catch (AbortFlowException e4) {
                e2 = e4;
                kotlinx.coroutines.flow.internal.l.a(e2, dVar);
            }
        }
        return ref$ObjectRef.element;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final <T> Object d(kotlinx.coroutines.flow.c<? extends T> cVar, Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, Continuation<? super T> continuation) throws Throwable {
        FlowKt__ReduceKt$firstOrNull$3 flowKt__ReduceKt$firstOrNull$3;
        Ref$ObjectRef ref$ObjectRef;
        AbortFlowException e2;
        kotlinx.coroutines.flow.d<? super Object> dVar;
        if (continuation instanceof FlowKt__ReduceKt$firstOrNull$3) {
            flowKt__ReduceKt$firstOrNull$3 = (FlowKt__ReduceKt$firstOrNull$3) continuation;
            int i = flowKt__ReduceKt$firstOrNull$3.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                flowKt__ReduceKt$firstOrNull$3.label = i - Integer.MIN_VALUE;
            } else {
                flowKt__ReduceKt$firstOrNull$3 = new FlowKt__ReduceKt$firstOrNull$3(continuation);
            }
        } else {
            flowKt__ReduceKt$firstOrNull$3 = new FlowKt__ReduceKt$firstOrNull$3(continuation);
        }
        Object obj = flowKt__ReduceKt$firstOrNull$3.result;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i2 = flowKt__ReduceKt$firstOrNull$3.label;
        if (i2 == 0) {
            kotlin.k.b(obj);
            Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            ref$ObjectRef2.element = null;
            kotlinx.coroutines.flow.d<? super Object> flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2 = new FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2<>(function2, ref$ObjectRef2);
            try {
                flowKt__ReduceKt$firstOrNull$3.L$0 = cVar;
                flowKt__ReduceKt$firstOrNull$3.L$1 = function2;
                flowKt__ReduceKt$firstOrNull$3.L$2 = ref$ObjectRef2;
                flowKt__ReduceKt$firstOrNull$3.L$3 = cVar;
                flowKt__ReduceKt$firstOrNull$3.L$4 = flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2;
                flowKt__ReduceKt$firstOrNull$3.label = 1;
                if (cVar.d(flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2, flowKt__ReduceKt$firstOrNull$3) == objD) {
                    return objD;
                }
                ref$ObjectRef = ref$ObjectRef2;
            } catch (AbortFlowException e3) {
                ref$ObjectRef = ref$ObjectRef2;
                e2 = e3;
                dVar = flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2;
                kotlinx.coroutines.flow.internal.l.a(e2, dVar);
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            dVar = (FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2) flowKt__ReduceKt$firstOrNull$3.L$4;
            ref$ObjectRef = (Ref$ObjectRef) flowKt__ReduceKt$firstOrNull$3.L$2;
            try {
                kotlin.k.b(obj);
            } catch (AbortFlowException e4) {
                e2 = e4;
                kotlinx.coroutines.flow.internal.l.a(e2, dVar);
            }
        }
        return ref$ObjectRef.element;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T, R> Object e(kotlinx.coroutines.flow.c<? extends T> cVar, R r, Function3<? super R, ? super T, ? super Continuation<? super R>, ? extends Object> function3, Continuation<? super R> continuation) throws Throwable {
        FlowKt__ReduceKt$fold$1 flowKt__ReduceKt$fold$1;
        Ref$ObjectRef ref$ObjectRef;
        if (continuation instanceof FlowKt__ReduceKt$fold$1) {
            flowKt__ReduceKt$fold$1 = (FlowKt__ReduceKt$fold$1) continuation;
            int i = flowKt__ReduceKt$fold$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                flowKt__ReduceKt$fold$1.label = i - Integer.MIN_VALUE;
            } else {
                flowKt__ReduceKt$fold$1 = new FlowKt__ReduceKt$fold$1(continuation);
            }
        } else {
            flowKt__ReduceKt$fold$1 = new FlowKt__ReduceKt$fold$1(continuation);
        }
        Object obj = flowKt__ReduceKt$fold$1.result;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i2 = flowKt__ReduceKt$fold$1.label;
        if (i2 == 0) {
            kotlin.k.b(obj);
            Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            ref$ObjectRef2.element = r;
            kotlinx.coroutines.flow.d<? super Object> flowKt__ReduceKt$fold$$inlined$collect$1 = new FlowKt__ReduceKt$fold$$inlined$collect$1<>(ref$ObjectRef2, function3);
            flowKt__ReduceKt$fold$1.L$0 = cVar;
            flowKt__ReduceKt$fold$1.L$1 = r;
            flowKt__ReduceKt$fold$1.L$2 = function3;
            flowKt__ReduceKt$fold$1.L$3 = ref$ObjectRef2;
            flowKt__ReduceKt$fold$1.L$4 = cVar;
            flowKt__ReduceKt$fold$1.label = 1;
            if (cVar.d(flowKt__ReduceKt$fold$$inlined$collect$1, flowKt__ReduceKt$fold$1) == objD) {
                return objD;
            }
            ref$ObjectRef = ref$ObjectRef2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ref$ObjectRef = (Ref$ObjectRef) flowKt__ReduceKt$fold$1.L$3;
            Object obj2 = flowKt__ReduceKt$fold$1.L$1;
            kotlin.k.b(obj);
        }
        return ref$ObjectRef.element;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, kotlinx.coroutines.internal.y] */
    public static final <S, T extends S> Object f(kotlinx.coroutines.flow.c<? extends T> cVar, Function3<? super S, ? super T, ? super Continuation<? super S>, ? extends Object> function3, Continuation<? super S> continuation) throws Throwable {
        FlowKt__ReduceKt$reduce$1 flowKt__ReduceKt$reduce$1;
        Ref$ObjectRef ref$ObjectRef;
        if (continuation instanceof FlowKt__ReduceKt$reduce$1) {
            flowKt__ReduceKt$reduce$1 = (FlowKt__ReduceKt$reduce$1) continuation;
            int i = flowKt__ReduceKt$reduce$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                flowKt__ReduceKt$reduce$1.label = i - Integer.MIN_VALUE;
            } else {
                flowKt__ReduceKt$reduce$1 = new FlowKt__ReduceKt$reduce$1(continuation);
            }
        } else {
            flowKt__ReduceKt$reduce$1 = new FlowKt__ReduceKt$reduce$1(continuation);
        }
        Object obj = flowKt__ReduceKt$reduce$1.result;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i2 = flowKt__ReduceKt$reduce$1.label;
        if (i2 == 0) {
            kotlin.k.b(obj);
            Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            ref$ObjectRef2.element = kotlinx.coroutines.flow.internal.p.f15980a;
            kotlinx.coroutines.flow.d<? super Object> flowKt__ReduceKt$reduce$$inlined$collect$1 = new FlowKt__ReduceKt$reduce$$inlined$collect$1<>(ref$ObjectRef2, function3);
            flowKt__ReduceKt$reduce$1.L$0 = cVar;
            flowKt__ReduceKt$reduce$1.L$1 = function3;
            flowKt__ReduceKt$reduce$1.L$2 = ref$ObjectRef2;
            flowKt__ReduceKt$reduce$1.L$3 = cVar;
            flowKt__ReduceKt$reduce$1.label = 1;
            if (cVar.d(flowKt__ReduceKt$reduce$$inlined$collect$1, flowKt__ReduceKt$reduce$1) == objD) {
                return objD;
            }
            ref$ObjectRef = ref$ObjectRef2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ref$ObjectRef = (Ref$ObjectRef) flowKt__ReduceKt$reduce$1.L$2;
            kotlin.k.b(obj);
        }
        T t = ref$ObjectRef.element;
        if (t != kotlinx.coroutines.flow.internal.p.f15980a) {
            return t;
        }
        throw new NoSuchElementException("Empty flow can't be reduced");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final <T> Object g(kotlinx.coroutines.flow.c<? extends T> cVar, Continuation<? super T> continuation) throws Throwable {
        FlowKt__ReduceKt$single$1 flowKt__ReduceKt$single$1;
        Ref$ObjectRef ref$ObjectRef;
        if (continuation instanceof FlowKt__ReduceKt$single$1) {
            flowKt__ReduceKt$single$1 = (FlowKt__ReduceKt$single$1) continuation;
            int i = flowKt__ReduceKt$single$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                flowKt__ReduceKt$single$1.label = i - Integer.MIN_VALUE;
            } else {
                flowKt__ReduceKt$single$1 = new FlowKt__ReduceKt$single$1(continuation);
            }
        } else {
            flowKt__ReduceKt$single$1 = new FlowKt__ReduceKt$single$1(continuation);
        }
        Object obj = flowKt__ReduceKt$single$1.result;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i2 = flowKt__ReduceKt$single$1.label;
        if (i2 == 0) {
            kotlin.k.b(obj);
            Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            ref$ObjectRef2.element = (T) kotlinx.coroutines.flow.internal.p.f15980a;
            kotlinx.coroutines.flow.d<? super Object> cVar2 = new c<>(ref$ObjectRef2);
            flowKt__ReduceKt$single$1.L$0 = cVar;
            flowKt__ReduceKt$single$1.L$1 = ref$ObjectRef2;
            flowKt__ReduceKt$single$1.L$2 = cVar;
            flowKt__ReduceKt$single$1.label = 1;
            if (cVar.d(cVar2, flowKt__ReduceKt$single$1) == objD) {
                return objD;
            }
            ref$ObjectRef = ref$ObjectRef2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ref$ObjectRef = (Ref$ObjectRef) flowKt__ReduceKt$single$1.L$1;
            kotlin.k.b(obj);
        }
        T t = ref$ObjectRef.element;
        if (t != kotlinx.coroutines.flow.internal.p.f15980a) {
            return t;
        }
        throw new NoSuchElementException("Flow is empty");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final <T> Object h(kotlinx.coroutines.flow.c<? extends T> cVar, Continuation<? super T> continuation) throws Throwable {
        FlowKt__ReduceKt$singleOrNull$1 flowKt__ReduceKt$singleOrNull$1;
        Ref$ObjectRef ref$ObjectRef;
        AbortFlowException e2;
        kotlinx.coroutines.flow.d<? super Object> dVar;
        if (continuation instanceof FlowKt__ReduceKt$singleOrNull$1) {
            flowKt__ReduceKt$singleOrNull$1 = (FlowKt__ReduceKt$singleOrNull$1) continuation;
            int i = flowKt__ReduceKt$singleOrNull$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                flowKt__ReduceKt$singleOrNull$1.label = i - Integer.MIN_VALUE;
            } else {
                flowKt__ReduceKt$singleOrNull$1 = new FlowKt__ReduceKt$singleOrNull$1(continuation);
            }
        } else {
            flowKt__ReduceKt$singleOrNull$1 = new FlowKt__ReduceKt$singleOrNull$1(continuation);
        }
        Object obj = flowKt__ReduceKt$singleOrNull$1.result;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i2 = flowKt__ReduceKt$singleOrNull$1.label;
        if (i2 == 0) {
            kotlin.k.b(obj);
            Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            ref$ObjectRef2.element = (T) kotlinx.coroutines.flow.internal.p.f15980a;
            kotlinx.coroutines.flow.d<? super Object> dVar2 = new d<>(ref$ObjectRef2);
            try {
                flowKt__ReduceKt$singleOrNull$1.L$0 = cVar;
                flowKt__ReduceKt$singleOrNull$1.L$1 = ref$ObjectRef2;
                flowKt__ReduceKt$singleOrNull$1.L$2 = cVar;
                flowKt__ReduceKt$singleOrNull$1.L$3 = dVar2;
                flowKt__ReduceKt$singleOrNull$1.label = 1;
                if (cVar.d(dVar2, flowKt__ReduceKt$singleOrNull$1) == objD) {
                    return objD;
                }
                ref$ObjectRef = ref$ObjectRef2;
            } catch (AbortFlowException e3) {
                ref$ObjectRef = ref$ObjectRef2;
                e2 = e3;
                dVar = dVar2;
                kotlinx.coroutines.flow.internal.l.a(e2, dVar);
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            dVar = (d) flowKt__ReduceKt$singleOrNull$1.L$3;
            ref$ObjectRef = (Ref$ObjectRef) flowKt__ReduceKt$singleOrNull$1.L$1;
            try {
                kotlin.k.b(obj);
            } catch (AbortFlowException e4) {
                e2 = e4;
                kotlinx.coroutines.flow.internal.l.a(e2, dVar);
            }
        }
        T t = ref$ObjectRef.element;
        if (t == kotlinx.coroutines.flow.internal.p.f15980a) {
            return null;
        }
        return t;
    }
}
