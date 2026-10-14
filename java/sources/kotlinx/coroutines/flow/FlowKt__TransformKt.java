package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes6.dex */
final /* synthetic */ class FlowKt__TransformKt {
    public static final <T> c<T> a(final c<? extends T> cVar, final Function2<? super T, ? super Continuation<? super kotlin.v>, ? extends Object> function2) {
        return new c<T>() { // from class: kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1

            /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2, reason: invalid class name */
            public static final class AnonymousClass2 implements d<T> {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                final /* synthetic */ d f15948a;
                final /* synthetic */ FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1 b;

                /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1, reason: invalid class name */
                @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0096@¨\u0006\u0006"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "value", "Lkotlin/coroutines/c;", "Lkotlin/v;", "continuation", "", "kotlinx/coroutines/flow/FlowKt__TransformKt$unsafeTransform$$inlined$unsafeFlow$7$lambda$1$1", "emit"}, k = 3, mv = {1, 1, 15})
                @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2", f = "Transform.kt", l = {134, 135}, m = "emit")
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    Object L$1;
                    Object L$2;
                    Object L$3;
                    Object L$4;
                    Object L$5;
                    Object L$6;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(d dVar, FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1 flowKt__TransformKt$onEach$$inlined$unsafeTransform$1) {
                    this.f15948a = dVar;
                    this.b = flowKt__TransformKt$onEach$$inlined$unsafeTransform$1;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                /* JADX WARN: Multi-variable type inference failed */
                @Override // kotlinx.coroutines.flow.d
                public Object emit(Object obj, Continuation continuation) throws Throwable {
                    AnonymousClass1 anonymousClass1;
                    AnonymousClass2 anonymousClass2;
                    Object obj2;
                    Object obj3;
                    Object obj4;
                    d dVar;
                    Continuation continuation2;
                    Continuation continuation3;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        int i = anonymousClass1.label;
                        if ((i & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.label = i - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(continuation);
                    }
                    Object obj5 = anonymousClass1.result;
                    Object objD = kotlin.coroutines.intrinsics.b.d();
                    int i2 = anonymousClass1.label;
                    if (i2 != 0) {
                        if (i2 == 1) {
                            d dVar2 = (d) anonymousClass1.L$6;
                            obj2 = anonymousClass1.L$5;
                            continuation2 = (Continuation) anonymousClass1.L$4;
                            obj3 = anonymousClass1.L$3;
                            continuation3 = (AnonymousClass1) anonymousClass1.L$2;
                            obj4 = anonymousClass1.L$1;
                            anonymousClass2 = (AnonymousClass2) anonymousClass1.L$0;
                            kotlin.k.b(obj5);
                            dVar = dVar2;
                        } else {
                            if (i2 != 2) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            Object obj6 = anonymousClass1.L$5;
                            Object obj7 = anonymousClass1.L$3;
                            Object obj8 = anonymousClass1.L$1;
                            kotlin.k.b(obj5);
                        }
                        return kotlin.v.f15822a;
                    }
                    kotlin.k.b(obj5);
                    d dVar3 = this.f15948a;
                    Function2 function2 = function2;
                    anonymousClass1.L$0 = this;
                    anonymousClass1.L$1 = obj;
                    anonymousClass1.L$2 = anonymousClass1;
                    anonymousClass1.L$3 = obj;
                    anonymousClass1.L$4 = anonymousClass1;
                    anonymousClass1.L$5 = obj;
                    anonymousClass1.L$6 = dVar3;
                    anonymousClass1.label = 1;
                    kotlin.jvm.internal.q.c(6);
                    Object objInvoke = function2.invoke(obj, anonymousClass1);
                    kotlin.jvm.internal.q.c(7);
                    if (objInvoke == objD) {
                        return objD;
                    }
                    anonymousClass2 = this;
                    obj2 = obj;
                    obj3 = obj2;
                    obj4 = obj3;
                    dVar = dVar3;
                    continuation2 = anonymousClass1;
                    continuation3 = continuation2;
                    anonymousClass1.L$0 = anonymousClass2;
                    anonymousClass1.L$1 = obj4;
                    anonymousClass1.L$2 = continuation3;
                    anonymousClass1.L$3 = obj3;
                    anonymousClass1.L$4 = continuation2;
                    anonymousClass1.L$5 = obj2;
                    anonymousClass1.L$6 = dVar;
                    anonymousClass1.label = 2;
                    if (dVar.emit(obj2, anonymousClass1) == objD) {
                        return objD;
                    }
                    return kotlin.v.f15822a;
                }
            }

            @Override // kotlinx.coroutines.flow.c
            public Object d(d dVar, Continuation continuation) {
                Object objD = cVar.d(new AnonymousClass2(dVar, this), continuation);
                return objD == kotlin.coroutines.intrinsics.b.d() ? objD : kotlin.v.f15822a;
            }
        };
    }
}
