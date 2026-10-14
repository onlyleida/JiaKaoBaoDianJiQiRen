package cn.mucang.android.jiakaoyi.teachingk2;

import android.view.View;
import cn.mucang.android.jiakaoyi.teachingk2.login.LoginHelper;
import cn.mucang.jiakaoyi.uilib.api.PrivacyAgreementApi;
import cn.mucang.jiakaoyi.uilib.login.model.DeviceType;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.TeachBaseApplication$setFaceRecord$1", f = "TeachBaseApplication.kt", l = {234}, m = "invokeSuspend")
final class TeachBaseApplication$setFaceRecord$1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ boolean $open;
    final /* synthetic */ View $view;
    Object L$0;
    int label;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.TeachBaseApplication$setFaceRecord$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "Lkotlin/Result;", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.TeachBaseApplication$setFaceRecord$1$1", f = "TeachBaseApplication.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super Result<? extends kotlin.v>>, Object> {
        final /* synthetic */ boolean $open;
        final /* synthetic */ Ref$BooleanRef $result;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Ref$BooleanRef ref$BooleanRef, boolean z, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$result = ref$BooleanRef;
            this.$open = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$result, this.$open, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super Result<? extends kotlin.v>> continuation) {
            return invoke2(i0Var, (Continuation<? super Result<kotlin.v>>) continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(kotlinx.coroutines.i0 i0Var, Continuation<? super Result<kotlin.v>> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objM139constructorimpl;
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
            Ref$BooleanRef ref$BooleanRef = this.$result;
            boolean z = this.$open;
            try {
                Result.Companion companion = Result.INSTANCE;
                ref$BooleanRef.element = z ? new PrivacyAgreementApi().m(DeviceType.ROBOT.getType(), "yinhe_privacy_record_face") : new PrivacyAgreementApi().p(DeviceType.ROBOT.getType(), "yinhe_privacy_record_face");
                objM139constructorimpl = Result.m139constructorimpl(kotlin.v.f15822a);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
            }
            if (Result.m142exceptionOrNullimpl(objM139constructorimpl) != null) {
                cn.mucang.android.core.utils.u.h(cn.mucang.android.jiakaoyi.framework.utils.k0.a(cn.mucang.android.jiakaoyi.teachbase.R.string.teachbase_setting_fail));
            }
            return Result.m138boximpl(objM139constructorimpl);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TeachBaseApplication$setFaceRecord$1(View view, boolean z, Continuation<? super TeachBaseApplication$setFaceRecord$1> continuation) {
        super(2, continuation);
        this.$view = view;
        this.$open = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new TeachBaseApplication$setFaceRecord$1(this.$view, this.$open, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((TeachBaseApplication$setFaceRecord$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Ref$BooleanRef ref$BooleanRef;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            Ref$BooleanRef ref$BooleanRef2 = new Ref$BooleanRef();
            CoroutineDispatcher coroutineDispatcherB = w0.b();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(ref$BooleanRef2, this.$open, null);
            this.L$0 = ref$BooleanRef2;
            this.label = 1;
            if (kotlinx.coroutines.f.c(coroutineDispatcherB, anonymousClass1, this) == objD) {
                return objD;
            }
            ref$BooleanRef = ref$BooleanRef2;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ref$BooleanRef = (Ref$BooleanRef) this.L$0;
            kotlin.k.b(obj);
        }
        if (ref$BooleanRef.element) {
            this.$view.setSelected(this.$open);
            LoginHelper.f7296a.g(this.$open);
        }
        return kotlin.v.f15822a;
    }
}
