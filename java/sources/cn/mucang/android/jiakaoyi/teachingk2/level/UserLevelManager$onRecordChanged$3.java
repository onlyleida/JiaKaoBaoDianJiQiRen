package cn.mucang.android.jiakaoyi.teachingk2.level;

import cn.mucang.android.jiakaoyi.teachingk2.level.model.LevelPassModel;
import cn.mucang.android.jiakaoyi.teachingk2.record.UserRecordApi;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.u;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.v;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.level.UserLevelManager$onRecordChanged$3", f = "UserLevelManager.kt", l = {cn.mucang.android.jiakaoyi.signal.communicate.receive.l.Receive_AutoAssist_Error}, m = "invokeSuspend")
final class UserLevelManager$onRecordChanged$3 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ UserLevelData $idData;
    int label;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.level.UserLevelManager$onRecordChanged$3$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.teachingk2.level.UserLevelManager$onRecordChanged$3$1", f = "UserLevelManager.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        final /* synthetic */ UserLevelData $idData;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(UserLevelData userLevelData, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$idData = userLevelData;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$idData, continuation);
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
            UserLevelData userLevelData = this.$idData;
            try {
                Result.Companion companion = Result.INSTANCE;
                LevelPassModel levelPassModel = new LevelPassModel();
                levelPassModel.setCode(userLevelData.getCode());
                levelPassModel.setSubCode(userLevelData.getSubCode());
                levelPassModel.setPass(userLevelData.getPass());
                v vVar = v.f15822a;
                String text = JSON.toJSONString(u.p(levelPassModel), SerializerFeature.DisableCircularReferenceDetect);
                UserRecordApi userRecordApi = new UserRecordApi();
                kotlin.jvm.internal.r.d(text, "text");
                Result.m139constructorimpl(kotlin.coroutines.jvm.internal.a.a(userRecordApi.t(text)));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m139constructorimpl(kotlin.k.a(th));
            }
            return v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UserLevelManager$onRecordChanged$3(UserLevelData userLevelData, Continuation<? super UserLevelManager$onRecordChanged$3> continuation) {
        super(2, continuation);
        this.$idData = userLevelData;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new UserLevelManager$onRecordChanged$3(this.$idData, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((UserLevelManager$onRecordChanged$3) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            CoroutineDispatcher coroutineDispatcherB = w0.b();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$idData, null);
            this.label = 1;
            if (kotlinx.coroutines.f.c(coroutineDispatcherB, anonymousClass1, this) == objD) {
                return objD;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
        }
        return v.f15822a;
    }
}
