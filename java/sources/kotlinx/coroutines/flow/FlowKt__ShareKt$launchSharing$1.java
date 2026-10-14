package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import com.google.mlkit.common.MlKitException;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/i0;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1", f = "Share.kt", l = {MlKitException.CODE_SCANNER_PIPELINE_INFERENCE_ERROR, 210, 211, 217}, m = "invokeSuspend")
final class FlowKt__ShareKt$launchSharing$1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ Object $initialValue;
    final /* synthetic */ a2 $shared;
    final /* synthetic */ h2 $started;
    final /* synthetic */ c $upstream;
    Object L$0;
    int label;
    private kotlinx.coroutines.i0 p$;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$1, reason: invalid class name */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\u0010\u0006\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "", "it", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$1", f = "Share.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<Integer, Continuation<? super Boolean>, Object> {
        int label;
        private int p$0;

        AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(continuation);
            Number number = (Number) obj;
            number.intValue();
            anonymousClass1.p$0 = number.intValue();
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Integer num, Continuation<? super Boolean> continuation) {
            return ((AnonymousClass1) create(num, continuation)).invokeSuspend(kotlin.v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
            return kotlin.coroutines.jvm.internal.a.a(this.p$0 > 0);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2, reason: invalid class name */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0006\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/SharingCommand;", "it", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2", f = "Share.kt", l = {219}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<SharingCommand, Continuation<? super kotlin.v>, Object> {
        Object L$0;
        int label;
        private SharingCommand p$0;

        AnonymousClass2(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = FlowKt__ShareKt$launchSharing$1.this.new AnonymousClass2(continuation);
            anonymousClass2.p$0 = (SharingCommand) obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SharingCommand sharingCommand, Continuation<? super kotlin.v> continuation) {
            return ((AnonymousClass2) create(sharingCommand, continuation)).invokeSuspend(kotlin.v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objD = kotlin.coroutines.intrinsics.b.d();
            int i = this.label;
            if (i == 0) {
                kotlin.k.b(obj);
                SharingCommand sharingCommand = this.p$0;
                int i2 = e.f15958a[sharingCommand.ordinal()];
                if (i2 == 1) {
                    FlowKt__ShareKt$launchSharing$1 flowKt__ShareKt$launchSharing$1 = FlowKt__ShareKt$launchSharing$1.this;
                    c cVar = flowKt__ShareKt$launchSharing$1.$upstream;
                    a2 a2Var = flowKt__ShareKt$launchSharing$1.$shared;
                    this.L$0 = sharingCommand;
                    this.label = 1;
                    if (cVar.d(a2Var, this) == objD) {
                        return objD;
                    }
                } else if (i2 == 3) {
                    FlowKt__ShareKt$launchSharing$1 flowKt__ShareKt$launchSharing$2 = FlowKt__ShareKt$launchSharing$1.this;
                    Object obj2 = flowKt__ShareKt$launchSharing$2.$initialValue;
                    if (obj2 == g2.f15959a) {
                        flowKt__ShareKt$launchSharing$2.$shared.f();
                    } else {
                        flowKt__ShareKt$launchSharing$2.$shared.a(obj2);
                    }
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FlowKt__ShareKt$launchSharing$1(h2 h2Var, c cVar, a2 a2Var, Object obj, Continuation continuation) {
        super(2, continuation);
        this.$started = h2Var;
        this.$upstream = cVar;
        this.$shared = a2Var;
        this.$initialValue = obj;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        FlowKt__ShareKt$launchSharing$1 flowKt__ShareKt$launchSharing$1 = new FlowKt__ShareKt$launchSharing$1(this.$started, this.$upstream, this.$shared, this.$initialValue, continuation);
        flowKt__ShareKt$launchSharing$1.p$ = (kotlinx.coroutines.i0) obj;
        return flowKt__ShareKt$launchSharing$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((FlowKt__ShareKt$launchSharing$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0078 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlinx.coroutines.i0 i0Var;
        c cVar;
        a2 a2Var;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    i0Var = (kotlinx.coroutines.i0) this.L$0;
                    kotlin.k.b(obj);
                    cVar = this.$upstream;
                    a2Var = this.$shared;
                    this.L$0 = i0Var;
                    this.label = 3;
                    if (cVar.d(a2Var, this) == objD) {
                        return objD;
                    }
                } else if (i != 3 && i != 4) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }
            kotlin.k.b(obj);
        } else {
            kotlin.k.b(obj);
            i0Var = this.p$;
            h2 h2Var = this.$started;
            h2.a aVar = h2.f15960a;
            if (h2Var == aVar.a()) {
                c cVar2 = this.$upstream;
                a2 a2Var2 = this.$shared;
                this.L$0 = i0Var;
                this.label = 1;
                if (cVar2.d(a2Var2, this) == objD) {
                    return objD;
                }
            } else if (this.$started == aVar.b()) {
                k2<Integer> k2VarB = this.$shared.b();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(null);
                this.L$0 = i0Var;
                this.label = 2;
                if (f.o(k2VarB, anonymousClass1, this) == objD) {
                    return objD;
                }
                cVar = this.$upstream;
                a2Var = this.$shared;
                this.L$0 = i0Var;
                this.label = 3;
                if (cVar.d(a2Var, this) == objD) {
                    return objD;
                }
            } else {
                c cVarL = f.l(this.$started.a(this.$shared.b()));
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(null);
                this.L$0 = i0Var;
                this.label = 4;
                if (f.h(cVarL, anonymousClass2, this) == objD) {
                    return objD;
                }
            }
        }
        return kotlin.v.f15822a;
    }
}
