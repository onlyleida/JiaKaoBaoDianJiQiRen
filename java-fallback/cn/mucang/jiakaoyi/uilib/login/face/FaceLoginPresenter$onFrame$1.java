package cn.mucang.jiakaoyi.uilib.login.face;

import cn.mucang.android.core.utils.t;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@kotlin.coroutines.jvm.internal.d(c = "cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter$onFrame$1", f = "FaceLoginPresenter.kt", l = {225}, m = "invokeSuspend")
final class FaceLoginPresenter$onFrame$1 extends SuspendLambda implements kotlin.jvm.b.p<i0, kotlin.coroutines.c<? super v>, Object> {
    final /* synthetic */ byte[] $byteArray;
    final /* synthetic */ int $height;
    final /* synthetic */ int $width;
    int label;
    final /* synthetic */ FaceLoginPresenter this$0;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter$onFrame$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @kotlin.coroutines.jvm.internal.d(c = "cn.mucang.jiakaoyi.uilib.login.face.FaceLoginPresenter$onFrame$1$1", f = "FaceLoginPresenter.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements kotlin.jvm.b.p<i0, kotlin.coroutines.c<? super v>, Object> {
        final /* synthetic */ byte[] $byteArray;
        final /* synthetic */ int $height;
        final /* synthetic */ int $width;
        int label;
        final /* synthetic */ FaceLoginPresenter this$0;

        AnonymousClass1(FaceLoginPresenter r1, byte[] r2, int r3, int r4, kotlin.coroutines.c<? super AnonymousClass1> r5) {
            this.this$0 = r1;
            this.$byteArray = r2;
            this.$width = r3;
            this.$height = r4;
            super(2, r5);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final kotlin.coroutines.c<v> create(Object r7, kotlin.coroutines.c<?> r8) {
            return new AnonymousClass1(this.this$0, this.$byteArray, this.$width, this.$height, r8);
        }

        @Override // kotlin.jvm.b.p
        public /* bridge */ /* synthetic */ Object invoke(i0 r1, kotlin.coroutines.c<? super v> r2) {
            return invoke2(r1, r2);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(i0 r1, kotlin.coroutines.c<? super v> r2) {
            return ((AnonymousClass1) create(r1, r2)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object r7) {
            kotlin.coroutines.intrinsics.a.d();
            if (this.label != 0) goto L10;
            kotlin.k.b(r7);
            long r0 = System.currentTimeMillis();
            FaceLoginPresenter.b(this.this$0, this.$byteArray, this.$width, this.$height);
            long r2 = System.currentTimeMillis() - r0;
            t.h("faceLogin", "人脸流程耗费：" + r2 + "ms");
            if (r2 <= 1000) goto L8;
            cn.mucang.android.jiakaoyi.framework.log.f.g("人脸流程耗费：" + r2 + "ms");
        L8:
            return v.f15822a;
        L10:
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    FaceLoginPresenter$onFrame$1(FaceLoginPresenter r1, byte[] r2, int r3, int r4, kotlin.coroutines.c<? super FaceLoginPresenter$onFrame$1> r5) {
        this.this$0 = r1;
        this.$byteArray = r2;
        this.$width = r3;
        this.$height = r4;
        super(2, r5);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.c<v> create(Object r7, kotlin.coroutines.c<?> r8) {
        return new FaceLoginPresenter$onFrame$1(this.this$0, this.$byteArray, this.$width, this.$height, r8);
    }

    @Override // kotlin.jvm.b.p
    public /* bridge */ /* synthetic */ Object invoke(i0 r1, kotlin.coroutines.c<? super v> r2) {
        return invoke2(r1, r2);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(i0 r1, kotlin.coroutines.c<? super v> r2) {
        return ((FaceLoginPresenter$onFrame$1) create(r1, r2)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object r10) {
        Object r0 = kotlin.coroutines.intrinsics.a.d();
        int r1 = this.label;
        if (r1 == 0) goto L8;
        if (r1 != 1) goto L7;
        kotlin.k.b(r10);
    L23:
        FaceLoginPresenter.A(this.this$0, false);
    L25:
        return v.f15822a;
    L7:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L8:
        kotlin.k.b(r10);
        if (FaceLoginPresenter.v(this.this$0) == false) goto L25;
        if (FaceLoginPresenter.u(this.this$0) == false) goto L25;
        if (FaceLoginPresenter.g(this.this$0) == true) goto L25;
        if (FaceLoginPresenter.k(this.this$0) == null) goto L25;
        if (FaceLoginPresenter.m(this.this$0) == null) goto L20;
        o r11 = FaceLoginPresenter.m(this.this$0);
        kotlin.jvm.internal.r.c(r11);
        if (r11.b() == false) goto L25;
    L20:
        FaceLoginPresenter.A(this.this$0, true);
        kotlinx.coroutines.android.a r12 = FaceLoginPresenter.k(this.this$0);
        kotlin.jvm.internal.r.c(r12);
        AnonymousClass1 r2 = new AnonymousClass1(this.this$0, this.$byteArray, this.$width, this.$height, null);
        this.label = 1;
        if (kotlinx.coroutines.f.c(r12, r2, this) != r0) goto L23;
        return r0;
    }
}
