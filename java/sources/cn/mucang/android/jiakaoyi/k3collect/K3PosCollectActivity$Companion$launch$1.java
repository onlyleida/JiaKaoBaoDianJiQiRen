package cn.mucang.android.jiakaoyi.k3collect;

import android.content.Context;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.k3collect.db.K3HpMapEntity;
import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.rtmc.HPGpsManager;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity$Companion$launch$1", f = "K3PosCollectActivity.kt", l = {118}, m = "invokeSuspend")
final class K3PosCollectActivity$Companion$launch$1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ Context $context;
    final /* synthetic */ JLoadingDialog $jLoadingDialog;
    final /* synthetic */ ExamSiteModel $siteModel;
    int label;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity$Companion$launch$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity$Companion$launch$1$2", f = "K3PosCollectActivity.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
        final /* synthetic */ Context $context;
        final /* synthetic */ JLoadingDialog $jLoadingDialog;
        final /* synthetic */ ExamSiteModel $siteModel;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Context context, ExamSiteModel examSiteModel, JLoadingDialog jLoadingDialog, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$context = context;
            this.$siteModel = examSiteModel;
            this.$jLoadingDialog = jLoadingDialog;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$context, this.$siteModel, this.$jLoadingDialog, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
            return ((AnonymousClass2) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
            K3PosCollectActivity.I.c(this.$context, this.$siteModel);
            this.$jLoadingDialog.dismiss();
            return kotlin.v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    K3PosCollectActivity$Companion$launch$1(ExamSiteModel examSiteModel, Context context, JLoadingDialog jLoadingDialog, Continuation<? super K3PosCollectActivity$Companion$launch$1> continuation) {
        super(2, continuation);
        this.$siteModel = examSiteModel;
        this.$context = context;
        this.$jLoadingDialog = jLoadingDialog;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new K3PosCollectActivity$Companion$launch$1(this.$siteModel, this.$context, this.$jLoadingDialog, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((K3PosCollectActivity$Companion$launch$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            try {
                MucangConfig.v();
                String str = this.$siteModel.mapData;
                if (str != null) {
                    r.d(str, "siteModel.mapData");
                    if (str.length() > 0) {
                        List<K3HpMapEntity> parseArray = cn.mucang.android.jiakaoyi.k3collect.src.a.a(this.$siteModel.mapData);
                        r.d(parseArray, "parseArray");
                        if (!parseArray.isEmpty()) {
                            cn.mucang.android.jiakaoyi.k3collect.db.a.c().b(String.valueOf(this.$siteModel.examSiteId));
                            ExamSiteModel examSiteModel = this.$siteModel;
                            for (K3HpMapEntity k3HpMapEntity : parseArray) {
                                K3SrcData srcData = k3HpMapEntity == null ? null : k3HpMapEntity.parseSrcData();
                                if (srcData != null) {
                                    cn.mucang.android.jiakaoyi.k3collect.db.a.c().f(String.valueOf(examSiteModel.examSiteId), srcData);
                                }
                            }
                        }
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                cn.mucang.android.jiakaoyi.framework.log.f.o(r.m("进入科三采集页面 ", e2.getLocalizedMessage()));
            }
            ExamSiteModel examSiteModel2 = this.$siteModel;
            HPGpsManager.k(examSiteModel2.examSiteId, (int) examSiteModel2.gpsBaseId);
            d2 d2VarC = w0.c();
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$context, this.$siteModel, this.$jLoadingDialog, null);
            this.label = 1;
            if (kotlinx.coroutines.f.c(d2VarC, anonymousClass2, this) == objD) {
                return objD;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
        }
        return kotlin.v.f15822a;
    }
}
