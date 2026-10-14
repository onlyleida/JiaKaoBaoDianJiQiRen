package cn.mucang.android.jiakaoyi.k3collect;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.jiakaoyi.mapcollect.collect.q0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.jiakaoyi.uilib.api.GeneralBusinessApi;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.w0;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity$saveOriginGps$1", f = "K3PosCollectActivity.kt", l = {Videoio.CAP_PROP_XI_COUNTER_SELECTOR}, m = "invokeSuspend")
final class K3PosCollectActivity$saveOriginGps$1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ Gps $originGps;
    final /* synthetic */ Function0<kotlin.v> $setOriginCallBack;
    int label;
    final /* synthetic */ K3PosCollectActivity this$0;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity$saveOriginGps$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity$saveOriginGps$1$1", f = "K3PosCollectActivity.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
        final /* synthetic */ Function0<kotlin.v> $setOriginCallBack;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Function0<kotlin.v> function0, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$setOriginCallBack = function0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$setOriginCallBack, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
            this.$setOriginCallBack.invoke();
            return kotlin.v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    K3PosCollectActivity$saveOriginGps$1(K3PosCollectActivity k3PosCollectActivity, Gps gps, Function0<kotlin.v> function0, Continuation<? super K3PosCollectActivity$saveOriginGps$1> continuation) {
        super(2, continuation);
        this.this$0 = k3PosCollectActivity;
        this.$originGps = gps;
        this.$setOriginCallBack = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new K3PosCollectActivity$saveOriginGps$1(this.this$0, this.$originGps, this.$setOriginCallBack, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((K3PosCollectActivity$saveOriginGps$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        try {
            if (i == 0) {
                kotlin.k.b(obj);
                GeneralBusinessApi generalBusinessApi = new GeneralBusinessApi();
                ExamSiteModel examSiteModel = this.this$0.q;
                if (examSiteModel == null) {
                    r.u("examSiteModel");
                    throw null;
                }
                long j = examSiteModel.examSiteId;
                Gps gps = this.$originGps;
                if (generalBusinessApi.v(j, gps.latitude, gps.longitude, gps.altitude)) {
                    this.this$0.m("设置原点成功,请开始采集");
                    ExamSiteModel examSiteModel2 = this.this$0.q;
                    if (examSiteModel2 == null) {
                        r.u("examSiteModel");
                        throw null;
                    }
                    examSiteModel2.originLatitude = this.$originGps.latitude;
                    ExamSiteModel examSiteModel3 = this.this$0.q;
                    if (examSiteModel3 == null) {
                        r.u("examSiteModel");
                        throw null;
                    }
                    examSiteModel3.originLongitude = this.$originGps.longitude;
                    ExamSiteModel examSiteModel4 = this.this$0.q;
                    if (examSiteModel4 == null) {
                        r.u("examSiteModel");
                        throw null;
                    }
                    examSiteModel4.originAltitude = this.$originGps.altitude;
                    K3PosCollectActivity k3PosCollectActivity = this.this$0;
                    ExamSiteModel examSiteModel5 = k3PosCollectActivity.q;
                    if (examSiteModel5 == null) {
                        r.u("examSiteModel");
                        throw null;
                    }
                    double d2 = examSiteModel5.originLatitude;
                    ExamSiteModel examSiteModel6 = this.this$0.q;
                    if (examSiteModel6 == null) {
                        r.u("examSiteModel");
                        throw null;
                    }
                    double d3 = examSiteModel6.originLongitude;
                    ExamSiteModel examSiteModel7 = this.this$0.q;
                    if (examSiteModel7 == null) {
                        r.u("examSiteModel");
                        throw null;
                    }
                    ((q0) k3PosCollectActivity).f4813d = new cn.mucang.android.jiakaoyi.signal.i.b(new Gps(d2, d3, examSiteModel7.originAltitude));
                    d2 d2VarC = w0.c();
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$setOriginCallBack, null);
                    this.label = 1;
                    if (kotlinx.coroutines.f.c(d2VarC, anonymousClass1, this) == objD) {
                        return objD;
                    }
                } else {
                    this.this$0.m("设置原点失败");
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.k.b(obj);
            }
        } catch (Exception e2) {
            cn.mucang.android.jiakaoyi.framework.log.f.o(r.m("设置原点失败 ", e2.getLocalizedMessage()));
            if ((e2 instanceof ApiException) || (e2 instanceof InternalException) || (e2 instanceof HttpException)) {
                cn.mucang.android.core.utils.u.h(e2.getMessage());
            }
        }
        return kotlin.v.f15822a;
    }
}
