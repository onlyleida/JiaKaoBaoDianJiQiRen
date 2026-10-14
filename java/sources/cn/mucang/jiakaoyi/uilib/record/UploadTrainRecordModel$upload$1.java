package cn.mucang.jiakaoyi.uilib.record;

import cn.mucang.jiakaoyi.uilib.api.DeviceApi;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.record.UploadTrainRecordModel$upload$1", f = "UploadTrainRecord.kt", l = {30}, m = "invokeSuspend")
final class UploadTrainRecordModel$upload$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ TrainStatus $changeStudent;
    final /* synthetic */ boolean $inExam;
    final /* synthetic */ long $ruleExamSiteId;
    final /* synthetic */ String $studentId;
    final /* synthetic */ String $userId;
    int label;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.record.UploadTrainRecordModel$upload$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.record.UploadTrainRecordModel$upload$1$1", f = "UploadTrainRecord.kt", l = {22}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.d<? super Boolean>, Continuation<? super v>, Object> {
        final /* synthetic */ TrainStatus $changeStudent;
        final /* synthetic */ boolean $inExam;
        final /* synthetic */ long $ruleExamSiteId;
        final /* synthetic */ String $studentId;
        final /* synthetic */ String $userId;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(String str, String str2, boolean z, long j, TrainStatus trainStatus, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$userId = str;
            this.$studentId = str2;
            this.$inExam = z;
            this.$ruleExamSiteId = j;
            this.$changeStudent = trainStatus;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$userId, this.$studentId, this.$inExam, this.$ruleExamSiteId, this.$changeStudent, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.flow.d<? super Boolean> dVar, Continuation<? super v> continuation) {
            return ((AnonymousClass1) create(dVar, continuation)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objD = kotlin.coroutines.intrinsics.b.d();
            int i = this.label;
            if (i == 0) {
                k.b(obj);
                kotlinx.coroutines.flow.d dVar = (kotlinx.coroutines.flow.d) this.L$0;
                Boolean boolA = kotlin.coroutines.jvm.internal.a.a(new DeviceApi().p(this.$userId, this.$studentId, this.$inExam, this.$ruleExamSiteId, this.$changeStudent));
                this.label = 1;
                if (dVar.emit(boolA, this) == objD) {
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

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.record.UploadTrainRecordModel$upload$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "it", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.record.UploadTrainRecordModel$upload$1$2", f = "UploadTrainRecord.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<Throwable, Continuation<? super Boolean>, Object> {
        /* synthetic */ Object L$0;
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Throwable th, Continuation<? super Boolean> continuation) {
            return ((AnonymousClass2) create(th, continuation)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            k.b(obj);
            return ((Throwable) this.L$0) instanceof RuntimeException ? kotlin.coroutines.jvm.internal.a.a(true) : kotlin.coroutines.jvm.internal.a.a(false);
        }
    }

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.record.UploadTrainRecordModel$upload$1$3, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "it", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.record.UploadTrainRecordModel$upload$1$3", f = "UploadTrainRecord.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass3 extends SuspendLambda implements Function2<Boolean, Continuation<? super v>, Object> {
        /* synthetic */ boolean Z$0;
        int label;

        AnonymousClass3(Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(continuation);
            anonymousClass3.Z$0 = ((Boolean) obj).booleanValue();
            return anonymousClass3;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Continuation<? super v> continuation) {
            return invoke(bool.booleanValue(), continuation);
        }

        public final Object invoke(boolean z, Continuation<? super v> continuation) {
            return ((AnonymousClass3) create(Boolean.valueOf(z), continuation)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            k.b(obj);
            System.out.println((Object) r.m("Emitting ", kotlin.coroutines.jvm.internal.a.a(this.Z$0)));
            return v.f15822a;
        }
    }

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.record.UploadTrainRecordModel$upload$1$4, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.record.UploadTrainRecordModel$upload$1$4", f = "UploadTrainRecord.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass4 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.d<? super Boolean>, Throwable, Continuation<? super v>, Object> {
        /* synthetic */ Object L$0;
        int label;

        AnonymousClass4(Continuation<? super AnonymousClass4> continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(kotlinx.coroutines.flow.d<? super Boolean> dVar, Throwable th, Continuation<? super v> continuation) {
            AnonymousClass4 anonymousClass4 = new AnonymousClass4(continuation);
            anonymousClass4.L$0 = th;
            return anonymousClass4.invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            k.b(obj);
            ((Throwable) this.L$0).printStackTrace();
            return v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UploadTrainRecordModel$upload$1(String str, String str2, boolean z, long j, TrainStatus trainStatus, Continuation<? super UploadTrainRecordModel$upload$1> continuation) {
        super(2, continuation);
        this.$userId = str;
        this.$studentId = str2;
        this.$inExam = z;
        this.$ruleExamSiteId = j;
        this.$changeStudent = trainStatus;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new UploadTrainRecordModel$upload$1(this.$userId, this.$studentId, this.$inExam, this.$ruleExamSiteId, this.$changeStudent, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((UploadTrainRecordModel$upload$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            k.b(obj);
            kotlinx.coroutines.flow.c cVarE = kotlinx.coroutines.flow.f.e(kotlinx.coroutines.flow.f.y(kotlinx.coroutines.flow.f.C(kotlinx.coroutines.flow.f.t(new AnonymousClass1(this.$userId, this.$studentId, this.$inExam, this.$ruleExamSiteId, this.$changeStudent, null)), 2L, new AnonymousClass2(null)), new AnonymousClass3(null)), new AnonymousClass4(null));
            this.label = 1;
            if (kotlinx.coroutines.flow.f.g(cVarE, this) == objD) {
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
