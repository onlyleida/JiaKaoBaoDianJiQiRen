package cn.mucang.android.facelib;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.facelib.FaceLoginManager$initLocalRecognizer$2", f = "FaceLoginManager.kt", l = {}, m = "invokeSuspend")
final class FaceLoginManager$initLocalRecognizer$2 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
    int label;

    /* JADX INFO: renamed from: cn.mucang.android.facelib.FaceLoginManager$initLocalRecognizer$2$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.facelib.FaceLoginManager$initLocalRecognizer$2$1", f = "FaceLoginManager.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlin.v vVar;
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
            cn.mucang.android.jiakaoyi.framework.utils.i0.d("key_non_perceive_login_version", -1);
            try {
                Result.Companion companion = Result.INSTANCE;
                FaceRegister faceRegister = FaceLoginManager.f3001d;
                if (faceRegister == null) {
                    vVar = null;
                } else {
                    faceRegister.l();
                    vVar = kotlin.v.f15822a;
                }
                Result.m139constructorimpl(vVar);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m139constructorimpl(kotlin.k.a(th));
            }
            cn.mucang.android.jiakaoyi.framework.utils.i0.k("key_non_perceive_login_version", 1);
            return kotlin.v.f15822a;
        }
    }

    FaceLoginManager$initLocalRecognizer$2(Continuation<? super FaceLoginManager$initLocalRecognizer$2> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new FaceLoginManager$initLocalRecognizer$2(continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((FaceLoginManager$initLocalRecognizer$2) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        FaceRegister faceRegister;
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        if (FaceLoginManager.f3001d != null) {
            return kotlin.v.f15822a;
        }
        FaceLoginManager faceLoginManager = FaceLoginManager.f3000a;
        FaceLoginManager.f3001d = new FaceRegister();
        i0 i0Var = FaceLoginManager.l;
        if (i0Var != null) {
            kotlinx.coroutines.g.b(i0Var, w0.b(), null, new AnonymousClass1(null), 2, null);
        }
        if (!FaceDebugUtil.f3029a.h() && (faceRegister = FaceLoginManager.f3001d) != null) {
            faceRegister.f();
        }
        return kotlin.v.f15822a;
    }
}
