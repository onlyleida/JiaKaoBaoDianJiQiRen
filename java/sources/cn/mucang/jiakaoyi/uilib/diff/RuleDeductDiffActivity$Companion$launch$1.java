package cn.mucang.jiakaoyi.uilib.diff;

import android.content.Context;
import android.view.View;
import cn.mucang.android.core.utils.p0;
import cn.mucang.android.jiakaoyi.engine.config.route.RuleConfig;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.jiakaoyi.uilib.model.RuleConfigEntity;
import cn.mucang.jiakaoyi.uilib.rule.K3TeachingRuleConfig;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.diff.RuleDeductDiffActivity$Companion$launch$1", f = "RuleDeductDiffActivity.kt", l = {98, 133}, m = "invokeSuspend")
final class RuleDeductDiffActivity$Companion$launch$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ Context $context;
    final /* synthetic */ long $examSiteId;
    final /* synthetic */ boolean $isBackup;
    final /* synthetic */ JLoadingDialog $jLoadingDialog;
    final /* synthetic */ KeMu $keMu;
    final /* synthetic */ f.a.a.a.j.c $listener;
    final /* synthetic */ boolean $teaching;
    final /* synthetic */ int $type;
    int label;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.diff.RuleDeductDiffActivity$Companion$launch$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.diff.RuleDeductDiffActivity$Companion$launch$1$1", f = "RuleDeductDiffActivity.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        final /* synthetic */ Context $context;
        final /* synthetic */ JSONObject $diffData;
        final /* synthetic */ long $examSiteId;
        final /* synthetic */ boolean $isBackup;
        final /* synthetic */ JLoadingDialog $jLoadingDialog;
        final /* synthetic */ KeMu $keMu;
        final /* synthetic */ f.a.a.a.j.c $listener;
        final /* synthetic */ boolean $teaching;
        final /* synthetic */ Ref$ObjectRef<Integer> $totalCount;
        final /* synthetic */ int $type;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(JLoadingDialog jLoadingDialog, Ref$ObjectRef<Integer> ref$ObjectRef, JSONObject jSONObject, Context context, long j, boolean z, int i, boolean z2, f.a.a.a.j.c cVar, KeMu keMu, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$jLoadingDialog = jLoadingDialog;
            this.$totalCount = ref$ObjectRef;
            this.$diffData = jSONObject;
            this.$context = context;
            this.$examSiteId = j;
            this.$isBackup = z;
            this.$type = i;
            this.$teaching = z2;
            this.$listener = cVar;
            this.$keMu = keMu;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$jLoadingDialog, this.$totalCount, this.$diffData, this.$context, this.$examSiteId, this.$isBackup, this.$type, this.$teaching, this.$listener, this.$keMu, continuation);
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
            this.$jLoadingDialog.dismiss();
            Integer totalCount = this.$totalCount.element;
            r.d(totalCount, "totalCount");
            if (totalCount.intValue() > 0) {
                Long l = this.$diffData.getLong("lastUpdateDate");
                String lastTimeStr = l != null ? p0.b(l.longValue()) : "";
                RuleDeductDiffActivity.Companion companion = RuleDeductDiffActivity.f9287e;
                Context context = this.$context;
                long j = this.$examSiteId;
                boolean z = this.$isBackup;
                r.d(lastTimeStr, "lastTimeStr");
                companion.b(context, j, z, lastTimeStr, this.$type, this.$teaching, this.$listener, this.$keMu);
            } else {
                new JCommonDialog(this.$context, new JCommonDialog.DialogParams((String) null, this.$isBackup ? "本次报备数据与上次报备数据一致，无需报备" : "你的数据与服务商数据一致，无需重置", (String) null, (View.OnClickListener) null, "确定", (View.OnClickListener) null, false, 76, (o) null)).show();
            }
            return v.f15822a;
        }
    }

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.diff.RuleDeductDiffActivity$Companion$launch$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.diff.RuleDeductDiffActivity$Companion$launch$1$2", f = "RuleDeductDiffActivity.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
        final /* synthetic */ JLoadingDialog $jLoadingDialog;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(JLoadingDialog jLoadingDialog, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$jLoadingDialog = jLoadingDialog;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$jLoadingDialog, continuation);
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
            return v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RuleDeductDiffActivity$Companion$launch$1(KeMu keMu, long j, int i, boolean z, boolean z2, JLoadingDialog jLoadingDialog, Context context, f.a.a.a.j.c cVar, Continuation<? super RuleDeductDiffActivity$Companion$launch$1> continuation) {
        super(2, continuation);
        this.$keMu = keMu;
        this.$examSiteId = j;
        this.$type = i;
        this.$isBackup = z;
        this.$teaching = z2;
        this.$jLoadingDialog = jLoadingDialog;
        this.$context = context;
        this.$listener = cVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new RuleDeductDiffActivity$Companion$launch$1(this.$keMu, this.$examSiteId, this.$type, this.$isBackup, this.$teaching, this.$jLoadingDialog, this.$context, this.$listener, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((RuleDeductDiffActivity$Companion$launch$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [T, java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r3v3, types: [T, java.lang.Integer] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        List array;
        boolean zB;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        try {
            if (i == 0) {
                kotlin.k.b(obj);
                JSONObject jSONObjectM = new RuleDeductDiffApi(this.$keMu).m(this.$examSiteId, String.valueOf(this.$type), this.$isBackup);
                Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                ref$ObjectRef.element = jSONObjectM.getInteger("totalCount");
                cn.mucang.android.jiakaoyi.framework.utils.i0.m(j.a(this.$examSiteId), JSON.toJSONString(jSONObjectM));
                T totalCount = ref$ObjectRef.element;
                r.d(totalCount, "totalCount");
                if (((Number) totalCount).intValue() > 0 && this.$keMu == KeMu.K3 && this.$type == DataType.RULE.getType() && (array = JSON.parseArray(jSONObjectM.getJSONArray("instructionConfigList").toJSONString(), RuleConfigEntity.class)) != null && array.size() > 0) {
                    ArrayList arrayList = new ArrayList();
                    Iterator it = array.iterator();
                    while (it.hasNext()) {
                        RuleConfig ruleConfigTransform = ((RuleConfigEntity) it.next()).transform();
                        r.d(ruleConfigTransform, "configEntity.transform()");
                        arrayList.add(ruleConfigTransform);
                    }
                    boolean z = this.$teaching;
                    ArrayList arrayList2 = new ArrayList();
                    for (Object obj2 : arrayList) {
                        RuleConfig ruleConfig = (RuleConfig) obj2;
                        if (z) {
                            K3TeachingRuleConfig k3TeachingRuleConfig = K3TeachingRuleConfig.f9517a;
                            Step step = ruleConfig.step;
                            r.d(step, "it.step");
                            zB = k3TeachingRuleConfig.b(step, ruleConfig.ruleId);
                        } else {
                            K3TeachingRuleConfig k3TeachingRuleConfig2 = K3TeachingRuleConfig.f9517a;
                            Step step2 = ruleConfig.step;
                            r.d(step2, "it.step");
                            zB = !k3TeachingRuleConfig2.b(step2, ruleConfig.ruleId);
                        }
                        if (zB) {
                            arrayList2.add(obj2);
                        }
                    }
                    ref$ObjectRef.element = kotlin.coroutines.jvm.internal.a.d(arrayList2.size());
                }
                d2 d2VarC = w0.c();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$jLoadingDialog, ref$ObjectRef, jSONObjectM, this.$context, this.$examSiteId, this.$isBackup, this.$type, this.$teaching, this.$listener, this.$keMu, null);
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
            d2 d2VarC2 = w0.c();
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$jLoadingDialog, null);
            this.label = 2;
            if (kotlinx.coroutines.f.c(d2VarC2, anonymousClass2, this) == objD) {
                return objD;
            }
        }
        return v.f15822a;
    }
}
