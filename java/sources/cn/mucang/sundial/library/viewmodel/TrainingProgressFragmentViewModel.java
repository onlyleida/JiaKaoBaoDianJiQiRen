package cn.mucang.sundial.library.viewmodel;

import android.app.Application;
import androidx.lifecycle.a;
import androidx.lifecycle.i0;
import cn.mucang.android.ui.framework.fetcher.ThreadPool;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.db.entity.StudentInfo;
import cn.mucang.sundial.library.entity.TrainingProgress;
import cn.mucang.sundial.library.http.TrainingApi;
import cn.mucang.sundial.library.util.SubjectUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004R\u001f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\u000f"}, d2 = {"Lcn/mucang/sundial/library/viewmodel/TrainingProgressFragmentViewModel;", "Landroidx/lifecycle/a;", "Lkotlin/v;", "getTrainingProgress", "()V", "Landroidx/lifecycle/i0;", "Lcn/mucang/sundial/library/entity/TrainingProgress;", "trainingProgressData", "Landroidx/lifecycle/i0;", "getTrainingProgressData", "()Landroidx/lifecycle/i0;", "Landroid/app/Application;", "app", "<init>", "(Landroid/app/Application;)V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class TrainingProgressFragmentViewModel extends a {
    private final i0<TrainingProgress> trainingProgressData;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TrainingProgressFragmentViewModel(Application app) {
        super(app);
        r.e(app, "app");
        this.trainingProgressData = new i0<>();
    }

    public final void getTrainingProgress() {
        ThreadPool.a(new Runnable() { // from class: cn.mucang.sundial.library.viewmodel.TrainingProgressFragmentViewModel.getTrainingProgress.1
            @Override // java.lang.Runnable
            public final void run() {
                TrainingProgress trainingProgress = new TrainingProgress();
                SundialManager sundialManager = SundialManager.getInstance();
                r.d(sundialManager, "SundialManager.getInstance()");
                StudentInfo student = sundialManager.getLastStudent();
                SubjectUtil subjectUtil = SubjectUtil.INSTANCE;
                trainingProgress.setSubject(subjectUtil.subject2name(SundialManager.getInstance().getCourseTypeByCourseCode(student != null ? student.getCourseCode() : null)));
                r.d(student, "student");
                String driveLicence = student.getDriveLicence();
                if (driveLicence == null) {
                    driveLicence = "";
                }
                trainingProgress.setDriveType(driveLicence);
                trainingProgress.setStudentInfo(student);
                String strSubject2param = subjectUtil.subject2param(SundialManager.getInstance().getCourseTypeByCourseCode(student.getCourseCode()));
                TrainingApi trainingApi = new TrainingApi();
                String idCard = student.getIdCard();
                r.d(idCard, "student.idCard");
                trainingProgress.setTrainInfo(trainingApi.stageTraining(idCard, strSubject2param));
                TrainingProgressFragmentViewModel.this.getTrainingProgressData().l(trainingProgress);
            }
        });
    }

    public final i0<TrainingProgress> getTrainingProgressData() {
        return this.trainingProgressData;
    }
}
