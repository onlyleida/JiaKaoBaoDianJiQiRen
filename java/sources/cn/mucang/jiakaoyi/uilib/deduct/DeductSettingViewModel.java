package cn.mucang.jiakaoyi.uilib.deduct;

import android.text.TextUtils;
import androidx.lifecycle.k0;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import cn.mucang.jiakaoyi.uilib.model.DeductEntity;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.model.StepItem;
import com.mobile.auth.gatewayauth.Constant;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 J\u0010\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u000bH\u0002J0\u0010$\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n2\u000e\u0010%\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n2\u000e\u0010&\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nH\u0002J\u0010\u0010'\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nH\u0007J\u0010\u0010(\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0006\u0010)\u001a\u00020\u001eJ\u000e\u0010*\u001a\u00020\u001e2\u0006\u0010+\u001a\u00020\u001aJ\u001e\u0010,\u001a\u00020\u001e2\u0016\b\u0002\u0010-\u001a\u0010\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\u001e\u0018\u00010.R\"\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00020\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001d\u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n0\r¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R \u0010\u0012\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n0\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u001d\u0010\u001b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00160\n0\r¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u000f¨\u0006/"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;", "Lcn/mucang/android/jiakaoyi/framework/base/LoadingViewModel;", "examSite", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "keMu", "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V", "cacheMap", "", "", "", "Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;", "deductList", "Landroidx/lifecycle/MutableLiveData;", "getDeductList", "()Landroidx/lifecycle/MutableLiveData;", "getExamSite", "()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "filterCacheMap", "", "itemList", "", "Lcn/mucang/jiakaoyi/uilib/model/StepItem;", "getKeMu", "()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "queryName", "", "stepList", "getStepList", "changeStep", "", "step", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "conditionQuery", "", "it", "createChangeList", "currentList", "sourceList", "getChangeList", "loadDeduct", "loadStep", "queryByName", Constant.PROTOCOL_WEBVIEW_NAME, "save", "callback", "Lkotlin/Function1;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DeductSettingViewModel extends LoadingViewModel {
    private final ExamSiteModel c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final KeMu f9229d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final androidx.lifecycle.z<List<StepItem>> f9230e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final androidx.lifecycle.z<List<DeductEntity>> f9231f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Map<Integer, ? extends List<? extends DeductEntity>> f9232g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Map<Integer, List<DeductEntity>> f9233h;
    private String i;
    private final List<StepItem> j;

    public DeductSettingViewModel(ExamSiteModel examSite, KeMu keMu) {
        kotlin.jvm.internal.r.e(examSite, "examSite");
        kotlin.jvm.internal.r.e(keMu, "keMu");
        this.c = examSite;
        this.f9229d = keMu;
        this.f9230e = new androidx.lifecycle.z<>();
        this.f9231f = new androidx.lifecycle.z<>();
        this.f9233h = new HashMap();
        this.j = new ArrayList();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void C(DeductSettingViewModel deductSettingViewModel, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = null;
        }
        deductSettingViewModel.B(function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean r(DeductEntity deductEntity) {
        String str = this.i;
        if (str == null || !n0.g(str)) {
            return true;
        }
        if (cn.mucang.android.core.utils.y.f(this.i) != null) {
            String strValueOf = String.valueOf(deductEntity.getCode());
            String str2 = this.i;
            kotlin.jvm.internal.r.c(str2);
            return StringsKt__StringsKt.G(strValueOf, str2, false, 2, null);
        }
        String desc = deductEntity.getDesc();
        kotlin.jvm.internal.r.d(desc, "it.desc");
        String str3 = this.i;
        kotlin.jvm.internal.r.c(str3);
        return StringsKt__StringsKt.G(desc, str3, false, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<DeductEntity> s(List<? extends DeductEntity> list, List<? extends DeductEntity> list2) {
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
            if (deductEntity3 != null && deductEntity2.getDeductScore() == deductEntity3.getDeductScore() && deductEntity2.getJudgeType() == deductEntity3.getJudgeType() && kotlin.jvm.internal.r.a(deductEntity2.getDesc(), deductEntity3.getDesc())) {
                z = false;
            }
            if (z) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void y(Step step) {
        LoadingViewModel.f(this, false, null, 3, null);
        kotlinx.coroutines.g.b(k0.a(this), w0.b(), null, new DeductSettingViewModel$loadDeduct$1(this, step, null), 2, null);
    }

    public final void A(String name) {
        kotlin.jvm.internal.r.e(name, "name");
        if (!TextUtils.equals(this.i, name)) {
            this.f9233h.clear();
            this.i = name;
        }
        if (this.j.isEmpty()) {
            return;
        }
        for (StepItem stepItem : this.j) {
            if (stepItem.getIsSelect()) {
                y(stepItem.getStep());
                return;
            }
        }
        throw new NoSuchElementException("Collection contains no element matching the predicate.");
    }

    public final void B(Function1<? super Boolean, kotlin.v> function1) {
        e(false, "保存中...");
        kotlinx.coroutines.g.b(k0.a(this), w0.b(), null, new DeductSettingViewModel$save$1(this, function1, null), 2, null);
    }

    public final void q(Step step) {
        kotlin.jvm.internal.r.e(step, "step");
        for (StepItem stepItem : this.j) {
            stepItem.e(stepItem.getStep().type == step.type);
        }
        this.f9230e.o(this.j);
        y(step);
    }

    public final List<DeductEntity> t() {
        Collection<? extends List<? extends DeductEntity>> collectionValues;
        List<DeductEntity> listH = cn.mucang.jiakaoyi.uilib.m.a.h(this.c.examSiteId, this.f9229d);
        ArrayList arrayList = new ArrayList();
        Map<Integer, ? extends List<? extends DeductEntity>> map = this.f9232g;
        if (map != null && (collectionValues = map.values()) != null) {
            Iterator<T> it = collectionValues.iterator();
            while (it.hasNext()) {
                arrayList.addAll((List) it.next());
            }
        }
        return s(arrayList, listH);
    }

    public final androidx.lifecycle.z<List<DeductEntity>> u() {
        return this.f9231f;
    }

    /* JADX INFO: renamed from: v, reason: from getter */
    public final ExamSiteModel getC() {
        return this.c;
    }

    /* JADX INFO: renamed from: w, reason: from getter */
    public final KeMu getF9229d() {
        return this.f9229d;
    }

    public final androidx.lifecycle.z<List<StepItem>> x() {
        return this.f9230e;
    }

    public final void z() {
        this.f9232g = null;
        this.j.clear();
        kotlinx.coroutines.g.b(k0.a(this), w0.b(), null, new DeductSettingViewModel$loadStep$1(this, null), 2, null);
    }
}
