package cn.mucang.sundial.library.viewmodel;

import android.app.Application;
import androidx.lifecycle.a;
import androidx.lifecycle.i0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.ui.framework.fetcher.ThreadPool;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.db.entity.CoachInfo;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.library.entity.ServerCoachInfo;
import cn.mucang.sundial.library.http.CoachApi;
import cn.mucang.sundial.library.util.KtxsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004R(\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u0012"}, d2 = {"Lcn/mucang/sundial/library/viewmodel/CoachInfoViewModel;", "Landroidx/lifecycle/a;", "Lkotlin/v;", "getServerCoachInfo2Update", "()V", "Landroidx/lifecycle/i0;", "Lcn/mucang/sundial/android/db/entity/CoachInfo;", "coachInfoData", "Landroidx/lifecycle/i0;", "getCoachInfoData", "()Landroidx/lifecycle/i0;", "setCoachInfoData", "(Landroidx/lifecycle/i0;)V", "Landroid/app/Application;", "app", "<init>", "(Landroid/app/Application;)V", "Companion", "library_release"}, k = 1, mv = {1, 1, 15})
public final class CoachInfoViewModel extends a {
    public static final String TAG = "CoachInfoViewModel";
    private i0<CoachInfo> coachInfoData;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoachInfoViewModel(Application app) {
        super(app);
        r.e(app, "app");
        this.coachInfoData = new i0<>();
    }

    public final i0<CoachInfo> getCoachInfoData() {
        return this.coachInfoData;
    }

    public final void getServerCoachInfo2Update() {
        ThreadPool.a(new Runnable() { // from class: cn.mucang.sundial.library.viewmodel.CoachInfoViewModel.getServerCoachInfo2Update.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    SundialManager sundialManager = SundialManager.getInstance();
                    r.d(sundialManager, "SundialManager.getInstance()");
                    CoachInfo lastCoach = sundialManager.getLastCoach();
                    if (lastCoach != null) {
                        SundialLog.normal("先刷一次尽快展示出来");
                        CoachInfoViewModel.this.getCoachInfoData().l(lastCoach);
                        SundialLog.normal("更新本地的数据");
                        String idCard = lastCoach.getIdCard();
                        CoachApi coachApi = new CoachApi();
                        r.d(idCard, "idCard");
                        ServerCoachInfo coachInfo$default = CoachApi.getCoachInfo$default(coachApi, idCard, null, 2, null);
                        if (coachInfo$default == null || !coachInfo$default.infoValid()) {
                            return;
                        }
                        KtxsKt.toCoachInfo(coachInfo$default, lastCoach);
                        SundialManager.getInstance().saveCoach(lastCoach);
                        CoachInfoViewModel.this.getCoachInfoData().l(lastCoach);
                    }
                } catch (Exception e2) {
                    SundialLog.normal("教练Api异常：" + e2.getLocalizedMessage());
                    t.h(CoachInfoViewModel.TAG, e2.toString());
                }
            }
        });
    }

    public final void setCoachInfoData(i0<CoachInfo> i0Var) {
        r.e(i0Var, "<set-?>");
        this.coachInfoData = i0Var;
    }
}
