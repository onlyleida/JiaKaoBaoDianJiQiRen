package cn.mucang.jiakaoyi.uilib.rule.dialog;

import androidx.lifecycle.z;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import cn.mucang.jiakaoyi.uilib.model.DeductEntity;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J0\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u0002J\u0016\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0013R\u001d\u0010\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001e\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u00060\nj\b\u0012\u0004\u0012\u00020\u0006`\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;", "Lcn/mucang/android/jiakaoyi/framework/base/LoadingViewModel;", "()V", "deductList", "Landroidx/lifecycle/MutableLiveData;", "", "Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;", "getDeductList", "()Landroidx/lifecycle/MutableLiveData;", "sourceList", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "createChangeList", "currentList", "load", "", "idStr", "", "keMu", "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "save", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RuleRelevancyDeductViewModel extends LoadingViewModel {
    private final z<List<DeductEntity>> c = new z<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ArrayList<DeductEntity> f9518d = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: private */
    public final List<DeductEntity> k(List<? extends DeductEntity> list, List<? extends DeductEntity> list2) {
        if (list == null || list2 == null) {
            return null;
        }
        HashMap map = new HashMap();
        for (DeductEntity deductEntity : list2) {
            map.put(Integer.valueOf(deductEntity.getCode()), deductEntity);
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            DeductEntity deductEntity2 = (DeductEntity) obj;
            DeductEntity deductEntity3 = (DeductEntity) map.get(Integer.valueOf(deductEntity2.getCode()));
            boolean z = true;
            if (deductEntity3 != null && deductEntity2.getDeductScore() == deductEntity3.getDeductScore() && deductEntity2.getJudgeType() == deductEntity3.getJudgeType() && r.a(deductEntity2.getDesc(), deductEntity3.getDesc())) {
                z = false;
            }
            if (z) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final z<List<DeductEntity>> l() {
        return this.c;
    }

    public final void m(String idStr, KeMu keMu) {
        r.e(idStr, "idStr");
        r.e(keMu, "keMu");
        LoadingViewModel.f(this, false, null, 3, null);
        kotlinx.coroutines.g.b(j0.a(w0.b()), null, null, new RuleRelevancyDeductViewModel$load$1$1(this, StringsKt__StringsKt.p0(idStr, new String[]{"&"}, false, 0, 6, null), keMu, null), 3, null);
    }

    public final void n(KeMu keMu) {
        r.e(keMu, "keMu");
        e(false, "保存中...");
        kotlinx.coroutines.g.b(j0.a(w0.b()), null, null, new RuleRelevancyDeductViewModel$save$1(this, keMu, null), 3, null);
    }
}
