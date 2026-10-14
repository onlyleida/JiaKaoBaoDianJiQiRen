package cn.mucang.jiakaoyi.uilib.upgrade;

import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.model.ResConfigInfo;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.f;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.upgrade.ExamSiteResUpdateHelper$checkUpdateSkin$1", f = "ExamSiteResUpdateHelper.kt", l = {95}, m = "invokeSuspend")
final class ExamSiteResUpdateHelper$checkUpdateSkin$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ Function0<v> $callback;
    final /* synthetic */ long $examSiteId;
    int label;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.upgrade.ExamSiteResUpdateHelper$checkUpdateSkin$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.upgrade.ExamSiteResUpdateHelper$checkUpdateSkin$1$1", f = "ExamSiteResUpdateHelper.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        final /* synthetic */ Function0<v> $callback;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Function0<v> function0, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$callback = function0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$callback, continuation);
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
            k.b(obj);
            Function0<v> function0 = this.$callback;
            if (function0 != null) {
                function0.invoke();
            }
            return v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ExamSiteResUpdateHelper$checkUpdateSkin$1(long j, Function0<v> function0, Continuation<? super ExamSiteResUpdateHelper$checkUpdateSkin$1> continuation) {
        super(2, continuation);
        this.$examSiteId = j;
        this.$callback = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new ExamSiteResUpdateHelper$checkUpdateSkin$1(this.$examSiteId, this.$callback, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((ExamSiteResUpdateHelper$checkUpdateSkin$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            k.b(obj);
            ExamSiteResUpdateHelper examSiteResUpdateHelper = ExamSiteResUpdateHelper.f10312a;
            ResConfigInfo resConfigInfoD = examSiteResUpdateHelper.d(this.$examSiteId);
            if (resConfigInfoD != null) {
                ExamSiteModel examSiteModelD = ExamSiteUtil.d();
                boolean z = false;
                if (examSiteModelD != null && examSiteModelD.examSiteId == this.$examSiteId) {
                    z = true;
                }
                if (z) {
                    String name = resConfigInfoD.getName();
                    if (name == null) {
                        name = "";
                    }
                    examSiteResUpdateHelper.f(examSiteModelD, name, resConfigInfoD.getConfigId());
                    cn.mucang.android.jiakaoyi.framework.utils.i0.k("keyExamSkinType", (int) resConfigInfoD.getConfigId());
                }
            }
            d2 d2VarC = w0.c();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$callback, null);
            this.label = 1;
            if (f.c(d2VarC, anonymousClass1, this) == objD) {
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
