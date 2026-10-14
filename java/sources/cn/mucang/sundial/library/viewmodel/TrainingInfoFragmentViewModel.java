package cn.mucang.sundial.library.viewmodel;

import android.app.Application;
import androidx.lifecycle.a;
import androidx.lifecycle.i0;
import cn.mucang.android.ui.framework.fetcher.ThreadPool;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.library.entity.TrainingInfo;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004J%\u0010\n\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0015\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fR\u001f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u00108\u0006@\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u001a"}, d2 = {"Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel;", "Landroidx/lifecycle/a;", "Lkotlin/v;", "getTrainingInfo", "()V", "", "loginTime", "courseTime", "", "currentTotalDistance", "setCourseTime", "(JJD)V", "", "status", "setTrainingStatus", "(I)V", "Landroidx/lifecycle/i0;", "Lcn/mucang/sundial/library/entity/TrainingInfo;", "trainingInfoData", "Landroidx/lifecycle/i0;", "getTrainingInfoData", "()Landroidx/lifecycle/i0;", "Landroid/app/Application;", "app", "<init>", "(Landroid/app/Application;)V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class TrainingInfoFragmentViewModel extends a {
    private final i0<TrainingInfo> trainingInfoData;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TrainingInfoFragmentViewModel(Application app) {
        super(app);
        r.e(app, "app");
        this.trainingInfoData = new i0<>();
    }

    public final void getTrainingInfo() {
        ThreadPool.a(new Runnable() { // from class: cn.mucang.sundial.library.viewmodel.TrainingInfoFragmentViewModel.getTrainingInfo.1
            @Override // java.lang.Runnable
            public final void run() {
                TrainingInfo trainingInfoE = TrainingInfoFragmentViewModel.this.getTrainingInfoData().e();
                if (trainingInfoE == null) {
                    trainingInfoE = new TrainingInfo();
                }
                r.d(trainingInfoE, "trainingInfoData.value ?: TrainingInfo()");
                SundialManager sundialManager = SundialManager.getInstance();
                r.d(sundialManager, "SundialManager.getInstance()");
                trainingInfoE.setStudentInfo(sundialManager.getLastStudent());
                SundialManager sundialManager2 = SundialManager.getInstance();
                r.d(sundialManager2, "SundialManager.getInstance()");
                trainingInfoE.setCoachInfo(sundialManager2.getLastCoach());
                SundialManager sundialManager3 = SundialManager.getInstance();
                r.d(sundialManager3, "SundialManager.getInstance()");
                trainingInfoE.setStatus(sundialManager3.isTrainingDisable() ? 2 : 1);
                TrainingInfoFragmentViewModel.this.getTrainingInfoData().l(trainingInfoE);
            }
        });
    }

    public final i0<TrainingInfo> getTrainingInfoData() {
        return this.trainingInfoData;
    }

    public final void setCourseTime(long loginTime, long courseTime, double currentTotalDistance) {
        TrainingInfo trainingInfoE = this.trainingInfoData.e();
        if (trainingInfoE != null) {
            trainingInfoE.setLoginTime(loginTime);
            trainingInfoE.setCourseTime(courseTime);
            trainingInfoE.setCurrentTotalDistance(currentTotalDistance);
            this.trainingInfoData.l(trainingInfoE);
        }
    }

    public final void setTrainingStatus(int status) {
        TrainingInfo trainingInfoE = this.trainingInfoData.e();
        if (trainingInfoE != null) {
            trainingInfoE.setStatus(status);
            this.trainingInfoData.l(trainingInfoE);
        }
    }
}
