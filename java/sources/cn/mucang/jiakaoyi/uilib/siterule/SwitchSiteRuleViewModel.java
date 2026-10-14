package cn.mucang.jiakaoyi.uilib.siterule;

import androidx.lifecycle.k0;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0015R\u001d\u0010\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\b¨\u0006\u0016"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/siterule/SwitchSiteRuleViewModel;", "Lcn/mucang/android/jiakaoyi/framework/base/LoadingViewModel;", "()V", "siteList", "Landroidx/lifecycle/MutableLiveData;", "", "Lcn/mucang/jiakaoyi/uilib/siterule/ExamSiteItem;", "getSiteList", "()Landroidx/lifecycle/MutableLiveData;", "state", "Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;", "getState", "loadSiteData", "", "keMu", "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;", "saveRuleExamSite", "examSiteModel", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "setRuleExamSite", "examSiteId", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SwitchSiteRuleViewModel extends LoadingViewModel {
    private final androidx.lifecycle.z<LoadingState> c = new androidx.lifecycle.z<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.lifecycle.z<List<ExamSiteItem>> f9596d = new androidx.lifecycle.z<>();

    public final androidx.lifecycle.z<List<ExamSiteItem>> i() {
        return this.f9596d;
    }

    public final androidx.lifecycle.z<LoadingState> j() {
        return this.c;
    }

    public final void k(KeMu keMu) {
        kotlin.jvm.internal.r.e(keMu, "keMu");
        this.c.l(LoadingState.Loading.buildMsg("加载中..."));
        kotlinx.coroutines.g.b(k0.a(this), w0.b(), null, new SwitchSiteRuleViewModel$loadSiteData$1(keMu, this, null), 2, null);
    }

    public final void l(ExamSiteModel examSiteModel, KeMu keMu) {
        kotlin.jvm.internal.r.e(examSiteModel, "examSiteModel");
        kotlin.jvm.internal.r.e(keMu, "keMu");
        a().l(LoadingState.Loading.buildMsg("添加规则中..."));
        kotlinx.coroutines.g.b(k0.a(this), w0.b(), null, new SwitchSiteRuleViewModel$saveRuleExamSite$1(examSiteModel, keMu, this, null), 2, null);
    }

    public final void m(long j) {
        List<ExamSiteItem> listE = this.f9596d.e();
        if (listE != null) {
            for (ExamSiteItem examSiteItem : listE) {
                examSiteItem.c(j == examSiteItem.getExamSite().examSiteId);
            }
        }
        androidx.lifecycle.z<List<ExamSiteItem>> zVar = this.f9596d;
        zVar.l(zVar.e());
    }
}
