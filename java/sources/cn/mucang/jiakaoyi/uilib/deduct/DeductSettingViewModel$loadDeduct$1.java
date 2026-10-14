package cn.mucang.jiakaoyi.uilib.deduct;

import android.text.TextUtils;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import cn.mucang.jiakaoyi.uilib.model.DeductEntity;
import cn.mucang.jiakaoyi.uilib.model.StepItem;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "cn.mucang.jiakaoyi.uilib.deduct.DeductSettingViewModel$loadDeduct$1", f = "DeductSettingViewModel.kt", l = {}, m = "invokeSuspend")
final class DeductSettingViewModel$loadDeduct$1 extends SuspendLambda implements Function2<i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ Step $step;
    int label;
    final /* synthetic */ DeductSettingViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DeductSettingViewModel$loadDeduct$1(DeductSettingViewModel deductSettingViewModel, Step step, Continuation<? super DeductSettingViewModel$loadDeduct$1> continuation) {
        super(2, continuation);
        this.this$0 = deductSettingViewModel;
        this.$step = step;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new DeductSettingViewModel$loadDeduct$1(this.this$0, this.$step, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((DeductSettingViewModel$loadDeduct$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        List<DeductEntity> arrayList;
        ArrayList arrayList2;
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        try {
            if (this.this$0.f9232g == null) {
                List<DeductEntity> listH = cn.mucang.jiakaoyi.uilib.m.a.h(this.this$0.getC().examSiteId, this.this$0.getF9229d());
                Iterator<DeductEntity> it = listH.iterator();
                while (it.hasNext()) {
                    if ((it.next().getCode() / 100) % 10 >= 8) {
                        it.remove();
                    }
                }
                HashMap map = new HashMap();
                if (listH != null) {
                    for (DeductEntity it2 : listH) {
                        List list = (List) map.get(kotlin.coroutines.jvm.internal.a.d(it2.getStepId()));
                        if (list == null) {
                            ArrayList arrayList3 = new ArrayList();
                            kotlin.jvm.internal.r.d(it2, "it");
                            arrayList3.add(it2);
                            map.put(kotlin.coroutines.jvm.internal.a.d(it2.getStepId()), arrayList3);
                        } else {
                            kotlin.jvm.internal.r.d(it2, "it");
                            list.add(it2);
                        }
                    }
                }
                this.this$0.f9232g = map;
            }
            if (TextUtils.isEmpty(this.this$0.i)) {
                for (StepItem stepItem : this.this$0.j) {
                    Map map2 = this.this$0.f9232g;
                    kotlin.jvm.internal.r.c(map2);
                    Collection collection = (Collection) map2.get(kotlin.coroutines.jvm.internal.a.d(this.$step.type));
                    stepItem.d(!(collection == null || collection.isEmpty()));
                }
                Map map3 = this.this$0.f9232g;
                kotlin.jvm.internal.r.c(map3);
                arrayList = (List) map3.get(kotlin.coroutines.jvm.internal.a.d(this.$step.type));
            } else {
                if (this.this$0.f9233h.isEmpty()) {
                    for (StepItem stepItem2 : this.this$0.j) {
                        Map map4 = this.this$0.f9232g;
                        List list2 = map4 == null ? null : (List) map4.get(kotlin.coroutines.jvm.internal.a.d(stepItem2.getStep().type));
                        if (list2 == null) {
                            arrayList2 = null;
                        } else {
                            DeductSettingViewModel deductSettingViewModel = this.this$0;
                            arrayList2 = new ArrayList();
                            for (Object obj2 : list2) {
                                if (deductSettingViewModel.r((DeductEntity) obj2)) {
                                    arrayList2.add(obj2);
                                }
                            }
                        }
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        this.this$0.f9233h.put(kotlin.coroutines.jvm.internal.a.d(stepItem2.getStep().type), arrayList2);
                        stepItem2.d(!arrayList2.isEmpty());
                    }
                }
                arrayList = (List) this.this$0.f9233h.get(kotlin.coroutines.jvm.internal.a.d(this.$step.type));
            }
            androidx.lifecycle.z<List<DeductEntity>> zVarU = this.this$0.u();
            if (arrayList == null) {
                arrayList = new ArrayList<>();
            }
            zVarU.l(arrayList);
            List<StepItem> listE = this.this$0.x().e();
            if (listE != null) {
                this.this$0.x().l(listE);
            }
            LoadingViewModel.h(this.this$0, false, null, 3, null);
        } catch (Exception e2) {
            e2.printStackTrace();
            cn.mucang.android.jiakaoyi.framework.log.f.o("加载考场扣分设置出错：" + ((Object) this.this$0.getC().cityName) + " , " + ((Object) e2.getLocalizedMessage()));
            LoadingViewModel.d(this.this$0, false, null, 3, null);
        }
        return kotlin.v.f15822a;
    }
}
