package cn.mucang.sundial.library.util;

import cn.mucang.android.core.utils.n0;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.db.entity.StudentInfo;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.data.DataManager;
import cn.mucang.sundial.library.entity.ServerStudentInfo;
import cn.mucang.sundial.library.http.StudentApi;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.b;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/i0;", "Lcn/mucang/sundial/android/db/entity/StudentInfo;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@DebugMetadata(c = "cn.mucang.sundial.library.util.LoginUtil$studentSilenceLogin$1$studentInfo$1", f = "LoginUtil.kt", l = {}, m = "invokeSuspend")
final class LoginUtil$studentSilenceLogin$1$studentInfo$1 extends SuspendLambda implements Function2<i0, Continuation<? super StudentInfo>, Object> {
    int label;
    final /* synthetic */ LoginUtil.C04461 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LoginUtil$studentSilenceLogin$1$studentInfo$1(LoginUtil.C04461 c04461, Continuation continuation) {
        super(2, continuation);
        this.this$0 = c04461;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> completion) {
        r.e(completion, "completion");
        return new LoginUtil$studentSilenceLogin$1$studentInfo$1(this.this$0, completion);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super StudentInfo> continuation) {
        return ((LoginUtil$studentSilenceLogin$1$studentInfo$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        k.b(obj);
        StudentApi studentApi = new StudentApi();
        LoginUtil.C04461 c04461 = this.this$0;
        ServerStudentInfo studentInfo = studentApi.getStudentInfo(c04461.$idCardNo, c04461.$authToken, c04461.$xyToken);
        if (studentInfo == null || n0.e(studentInfo.getGlobalCode())) {
            return null;
        }
        SundialManager sundialManager = SundialManager.getInstance();
        r.d(sundialManager, "SundialManager.getInstance()");
        StudentInfo studentInfo2 = KtxsKt.toStudentInfo(studentInfo, this.this$0.$courseSubject, sundialManager.getLastStudent());
        DataManager.getInstance().saveStudent(studentInfo2);
        SundialLog.normal("-Sundial 获取学员信息");
        return studentInfo2;
    }
}
