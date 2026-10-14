package cn.mucang.jiakaoyi.uilib.login.face;

import cn.mucang.android.core.utils.t;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter$onFrame$1", f = "FaceLoginPresenter.kt", l = {225}, m = "invokeSuspend")
final class FaceLoginPresenter$onFrame$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ byte[] $byteArray;
    final /* synthetic */ int $height;
    final /* synthetic */ int $width;
    int label;
    final /* synthetic */ FaceLoginPresenter this$0;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter$onFrame$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter$onFrame$1$1", f = "FaceLoginPresenter.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        final /* synthetic */ byte[] $byteArray;
        final /* synthetic */ int $height;
        final /* synthetic */ int $width;
        int label;
        final /* synthetic */ FaceLoginPresenter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(FaceLoginPresenter faceLoginPresenter, byte[] bArr, int i, int i2, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = faceLoginPresenter;
            this.$byteArray = bArr;
            this.$width = i;
            this.$height = i2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, this.$byteArray, this.$width, this.$height, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.this$0.N(this.$byteArray, this.$width, this.$height);
            long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
            t.h("faceLogin", "人脸流程耗费：" + jCurrentTimeMillis2 + "ms");
            if (jCurrentTimeMillis2 > 1000) {
                cn.mucang.android.jiakaoyi.framework.log.f.g("人脸流程耗费：" + jCurrentTimeMillis2 + "ms");
            }
            return v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FaceLoginPresenter$onFrame$1(FaceLoginPresenter faceLoginPresenter, byte[] bArr, int i, int i2, Continuation<? super FaceLoginPresenter$onFrame$1> continuation) {
        super(2, continuation);
        this.this$0 = faceLoginPresenter;
        this.$byteArray = bArr;
        this.$width = i;
        this.$height = i2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new FaceLoginPresenter$onFrame$1(this.this$0, this.$byteArray, this.$width, this.$height, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((FaceLoginPresenter$onFrame$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004f, code lost:
    
        if (r10.b() != false) goto L20;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) throws java.lang.Throwable {
        /*
            r9 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.d()
            int r1 = r9.label
            r2 = 1
            if (r1 == 0) goto L17
            if (r1 != r2) goto Lf
            kotlin.k.b(r10)
            goto L77
        Lf:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L17:
            kotlin.k.b(r10)
            cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter r10 = r9.this$0
            boolean r10 = cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter.v(r10)
            if (r10 == 0) goto L7d
            cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter r10 = r9.this$0
            boolean r10 = cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter.u(r10)
            if (r10 == 0) goto L7d
            cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter r10 = r9.this$0
            boolean r10 = cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter.g(r10)
            if (r10 != 0) goto L7d
            cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter r10 = r9.this$0
            kotlinx.coroutines.android.a r10 = cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter.k(r10)
            if (r10 == 0) goto L7d
            cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter r10 = r9.this$0
            cn.mucang.jiakaoyi.uilib.login.face.o r10 = cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter.m(r10)
            if (r10 == 0) goto L51
            cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter r10 = r9.this$0
            cn.mucang.jiakaoyi.uilib.login.face.o r10 = cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter.m(r10)
            kotlin.jvm.internal.r.c(r10)
            boolean r10 = r10.b()
            if (r10 == 0) goto L7d
        L51:
            cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter r10 = r9.this$0
            cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter.A(r10, r2)
            cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter r10 = r9.this$0
            kotlinx.coroutines.android.a r10 = cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter.k(r10)
            kotlin.jvm.internal.r.c(r10)
            cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter$onFrame$1$1 r1 = new cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter$onFrame$1$1
            cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter r4 = r9.this$0
            byte[] r5 = r9.$byteArray
            int r6 = r9.$width
            int r7 = r9.$height
            r8 = 0
            r3 = r1
            r3.<init>(r4, r5, r6, r7, r8)
            r9.label = r2
            java.lang.Object r10 = kotlinx.coroutines.f.c(r10, r1, r9)
            if (r10 != r0) goto L77
            return r0
        L77:
            cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter r10 = r9.this$0
            r0 = 0
            cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter.A(r10, r0)
        L7d:
            kotlin.v r10 = kotlin.v.f15822a
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter$onFrame$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
