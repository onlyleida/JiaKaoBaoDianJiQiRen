package cn.mucang.android.jiakaoyi.k3setting.backup;

import android.content.Context;
import android.view.View;
import cn.mucang.android.core.utils.p0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.jiakaoyi.uilib.diff.DataType;
import cn.mucang.jiakaoyi.uilib.diff.RuleDeductDiffApi;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3setting.backup.K3RuleDeductOrderDiffActivity$Companion$launch$1", f = "K3RuleDeductOrderDiffActivity.kt", l = {79, 110}, m = "invokeSuspend")
final class K3RuleDeductOrderDiffActivity$Companion$launch$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ Context $context;
    final /* synthetic */ ExamSiteModel $examSite;
    final /* synthetic */ boolean $isBackup;
    final /* synthetic */ JLoadingDialog $jLoadingDialog;
    int label;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.backup.K3RuleDeductOrderDiffActivity$Companion$launch$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3setting.backup.K3RuleDeductOrderDiffActivity$Companion$launch$1$1", f = "K3RuleDeductOrderDiffActivity.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        final /* synthetic */ Context $context;
        final /* synthetic */ ExamSiteModel $examSite;
        final /* synthetic */ boolean $isBackup;
        final /* synthetic */ JLoadingDialog $jLoadingDialog;
        final /* synthetic */ Long $timeDate;
        final /* synthetic */ Integer $totalCount;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(JLoadingDialog jLoadingDialog, Integer num, Long l, Context context, ExamSiteModel examSiteModel, boolean z, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$jLoadingDialog = jLoadingDialog;
            this.$totalCount = num;
            this.$timeDate = l;
            this.$context = context;
            this.$examSite = examSiteModel;
            this.$isBackup = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$jLoadingDialog, this.$totalCount, this.$timeDate, this.$context, this.$examSite, this.$isBackup, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
            return ((AnonymousClass1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            String lastTimeStr;
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
            this.$jLoadingDialog.dismiss();
            Integer totalCount = this.$totalCount;
            r.d(totalCount, "totalCount");
            if (totalCount.intValue() > 0) {
                Long timeDate = this.$timeDate;
                if (timeDate != null) {
                    r.d(timeDate, "timeDate");
                    lastTimeStr = p0.b(timeDate.longValue());
                } else {
                    lastTimeStr = "";
                }
                K3RuleDeductOrderDiffActivity.Companion companion = K3RuleDeductOrderDiffActivity.i;
                Context context = this.$context;
                ExamSiteModel examSiteModel = this.$examSite;
                boolean z = this.$isBackup;
                r.d(lastTimeStr, "lastTimeStr");
                companion.b(context, examSiteModel, z, lastTimeStr);
            } else {
                new JCommonDialog(this.$context, new JCommonDialog.DialogParams((String) null, this.$isBackup ? "本次报备数据与上次报备数据一致，无需报备" : "你的数据与服务商数据一致，无需重置", (String) null, (View.OnClickListener) null, "确定", (View.OnClickListener) null, false, 76, (kotlin.jvm.internal.o) null)).show();
            }
            return v.f15822a;
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.backup.K3RuleDeductOrderDiffActivity$Companion$launch$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.android.jiakaoyi.k3setting.backup.K3RuleDeductOrderDiffActivity$Companion$launch$1$2", f = "K3RuleDeductOrderDiffActivity.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        final /* synthetic */ Exception $e;
        final /* synthetic */ JLoadingDialog $jLoadingDialog;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(JLoadingDialog jLoadingDialog, Exception exc, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$jLoadingDialog = jLoadingDialog;
            this.$e = exc;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$jLoadingDialog, this.$e, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
            return ((AnonymousClass2) create(i0Var, continuation)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlin.coroutines.intrinsics.b.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
            this.$jLoadingDialog.dismiss();
            String message = this.$e.getMessage();
            if (message == null) {
                message = "查询差异对比数据失败";
            }
            u.h(message);
            return v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    K3RuleDeductOrderDiffActivity$Companion$launch$1(boolean z, ExamSiteModel examSiteModel, JLoadingDialog jLoadingDialog, Context context, Continuation<? super K3RuleDeductOrderDiffActivity$Companion$launch$1> continuation) {
        super(2, continuation);
        this.$isBackup = z;
        this.$examSite = examSiteModel;
        this.$jLoadingDialog = jLoadingDialog;
        this.$context = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new K3RuleDeductOrderDiffActivity$Companion$launch$1(this.$isBackup, this.$examSite, this.$jLoadingDialog, this.$context, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((K3RuleDeductOrderDiffActivity$Companion$launch$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        String string;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        try {
            if (i == 0) {
                kotlin.k.b(obj);
                if (this.$isBackup) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(DataType.RULE.getType());
                    sb.append(',');
                    sb.append(DataType.DEDUCT.getType());
                    sb.append(',');
                    sb.append(DataType.LIGHT_MODEL.getType());
                    sb.append(',');
                    sb.append(DataType.LIGHT_GROUP.getType());
                    sb.append(',');
                    sb.append(DataType.ROUTE.getType());
                    string = sb.toString();
                } else {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(DataType.LIGHT_MODEL.getType());
                    sb2.append(',');
                    sb2.append(DataType.LIGHT_GROUP.getType());
                    string = sb2.toString();
                }
                JSONObject jSONObjectM = new RuleDeductDiffApi(KeMu.K3).m(this.$examSite.examSiteId, string, this.$isBackup);
                Integer integer = jSONObjectM.getInteger("totalCount");
                Long l = jSONObjectM.getLong("lastUpdateDate");
                cn.mucang.android.jiakaoyi.framework.utils.i0.m(cn.mucang.jiakaoyi.uilib.diff.j.a(this.$examSite.examSiteId), JSON.toJSONString(jSONObjectM));
                d2 d2VarC = w0.c();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$jLoadingDialog, integer, l, this.$context, this.$examSite, this.$isBackup, null);
                this.label = 1;
                if (kotlinx.coroutines.f.c(d2VarC, anonymousClass1, this) == objD) {
                    return objD;
                }
            } else {
                if (i != 1 && i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.k.b(obj);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            cn.mucang.android.jiakaoyi.framework.log.f.o(r.m("获取差异数据失败:", t.g(e2)));
            d2 d2VarC2 = w0.c();
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$jLoadingDialog, e2, null);
            this.label = 2;
            if (kotlinx.coroutines.f.c(d2VarC2, anonymousClass2, this) == objD) {
                return objD;
            }
        }
        return v.f15822a;
    }
}
