package kotlinx.coroutines.flow;

import com.alibaba.fastjson.asm.Opcodes;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0007\u001a\u00020\u0004*\b\u0012\u0004\u0012\u00020\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/d;", "Lkotlinx/coroutines/flow/SharingCommand;", "", "count", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@DebugMetadata(c = "kotlinx.coroutines.flow.StartedWhileSubscribed$command$1", f = "SharingStarted.kt", l = {181, Opcodes.INVOKESPECIAL, 185, 186, 188}, m = "invokeSuspend")
final class StartedWhileSubscribed$command$1 extends SuspendLambda implements Function3<d<? super SharingCommand>, Integer, Continuation<? super kotlin.v>, Object> {
    int I$0;
    Object L$0;
    int label;
    private d p$;
    private int p$0;
    final /* synthetic */ j2 this$0;

    StartedWhileSubscribed$command$1(j2 j2Var, Continuation continuation) {
        super(3, continuation);
    }

    public final Continuation<kotlin.v> create(d<? super SharingCommand> dVar, int i, Continuation<? super kotlin.v> continuation) {
        StartedWhileSubscribed$command$1 startedWhileSubscribed$command$1 = new StartedWhileSubscribed$command$1(this.this$0, continuation);
        startedWhileSubscribed$command$1.p$ = dVar;
        startedWhileSubscribed$command$1.p$0 = i;
        return startedWhileSubscribed$command$1;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(d<? super SharingCommand> dVar, Integer num, Continuation<? super kotlin.v> continuation) {
        return ((StartedWhileSubscribed$command$1) create(dVar, num.intValue(), continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x007f  */
    /* JADX WARN: Code duplicated, block: B:29:0x008d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:30:0x008e  */
    /* JADX WARN: Code duplicated, block: B:33:0x00a1 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:34:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:38:0x00b2 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        int i;
        d dVar;
        SharingCommand sharingCommand;
        d dVar2;
        long j;
        d dVar3;
        SharingCommand sharingCommand2;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i2 = this.label;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 == 2) {
                    i = this.I$0;
                    dVar = (d) this.L$0;
                    kotlin.k.b(obj);
                    if (this.this$0.c > 0) {
                        sharingCommand = SharingCommand.STOP;
                        this.L$0 = dVar;
                        this.I$0 = i;
                        this.label = 3;
                        if (dVar.emit(sharingCommand, this) == objD) {
                            return objD;
                        }
                        dVar2 = dVar;
                        j = this.this$0.c;
                        this.L$0 = dVar2;
                        this.I$0 = i;
                        this.label = 4;
                        if (kotlinx.coroutines.s0.a(j, this) == objD) {
                            return objD;
                        }
                        dVar3 = dVar2;
                    }
                    sharingCommand2 = SharingCommand.STOP_AND_RESET_REPLAY_CACHE;
                    this.L$0 = dVar;
                    this.I$0 = i;
                    this.label = 5;
                    if (dVar.emit(sharingCommand2, this) == objD) {
                        return objD;
                    }
                } else if (i2 == 3) {
                    i = this.I$0;
                    dVar2 = (d) this.L$0;
                    kotlin.k.b(obj);
                    j = this.this$0.c;
                    this.L$0 = dVar2;
                    this.I$0 = i;
                    this.label = 4;
                    if (kotlinx.coroutines.s0.a(j, this) == objD) {
                        return objD;
                    }
                    dVar3 = dVar2;
                } else if (i2 == 4) {
                    i = this.I$0;
                    dVar3 = (d) this.L$0;
                    kotlin.k.b(obj);
                } else if (i2 != 5) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                dVar = dVar3;
                sharingCommand2 = SharingCommand.STOP_AND_RESET_REPLAY_CACHE;
                this.L$0 = dVar;
                this.I$0 = i;
                this.label = 5;
                if (dVar.emit(sharingCommand2, this) == objD) {
                    return objD;
                }
            }
            kotlin.k.b(obj);
        } else {
            kotlin.k.b(obj);
            d dVar4 = this.p$;
            i = this.p$0;
            if (i > 0) {
                SharingCommand sharingCommand3 = SharingCommand.START;
                this.L$0 = dVar4;
                this.I$0 = i;
                this.label = 1;
                if (dVar4.emit(sharingCommand3, this) == objD) {
                    return objD;
                }
            } else {
                long j2 = this.this$0.b;
                this.L$0 = dVar4;
                this.I$0 = i;
                this.label = 2;
                if (kotlinx.coroutines.s0.a(j2, this) == objD) {
                    return objD;
                }
                dVar = dVar4;
                if (this.this$0.c > 0) {
                    sharingCommand = SharingCommand.STOP;
                    this.L$0 = dVar;
                    this.I$0 = i;
                    this.label = 3;
                    if (dVar.emit(sharingCommand, this) == objD) {
                        return objD;
                    }
                    dVar2 = dVar;
                    j = this.this$0.c;
                    this.L$0 = dVar2;
                    this.I$0 = i;
                    this.label = 4;
                    if (kotlinx.coroutines.s0.a(j, this) == objD) {
                        return objD;
                    }
                    dVar3 = dVar2;
                    dVar = dVar3;
                }
                sharingCommand2 = SharingCommand.STOP_AND_RESET_REPLAY_CACHE;
                this.L$0 = dVar;
                this.I$0 = i;
                this.label = 5;
                if (dVar.emit(sharingCommand2, this) == objD) {
                    return objD;
                }
            }
        }
        return kotlin.v.f15822a;
    }
}
