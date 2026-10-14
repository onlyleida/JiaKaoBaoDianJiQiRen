package cn.mucang.sundial.library.viewmodel;

import android.app.Application;
import androidx.lifecycle.a;
import androidx.lifecycle.i0;
import cn.mucang.android.ui.framework.fetcher.ThreadPool;
import cn.mucang.sundial.android.PersonMode;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.db.entity.CoachInfo;
import cn.mucang.sundial.android.db.entity.StudentInfo;
import kotlin.Metadata;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u0016\u0010\u0017J\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004R(\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0016\u0010\u000e\u001a\u00020\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR(\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\b\u001a\u0004\b\u0012\u0010\n\"\u0004\b\u0013\u0010\f¨\u0006\u0018"}, d2 = {"Lcn/mucang/sundial/library/viewmodel/LoginViewModel;", "Landroidx/lifecycle/a;", "Lkotlin/v;", "getLastInfo", "()V", "Landroidx/lifecycle/i0;", "Lcn/mucang/sundial/android/db/entity/StudentInfo;", "studentLiveData", "Landroidx/lifecycle/i0;", "getStudentLiveData", "()Landroidx/lifecycle/i0;", "setStudentLiveData", "(Landroidx/lifecycle/i0;)V", "", "personMode", "I", "Lcn/mucang/sundial/android/db/entity/CoachInfo;", "coachLiveData", "getCoachLiveData", "setCoachLiveData", "Landroid/app/Application;", "app", "<init>", "(Landroid/app/Application;I)V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class LoginViewModel extends a {
    private i0<CoachInfo> coachLiveData;
    private final int personMode;
    private i0<StudentInfo> studentLiveData;

    public /* synthetic */ LoginViewModel(Application application, int i, int i2, o oVar) {
        this(application, (i2 & 2) != 0 ? PersonMode.COACH.ordinal() : i);
    }

    public final i0<CoachInfo> getCoachLiveData() {
        return this.coachLiveData;
    }

    public final void getLastInfo() {
        ThreadPool.a(new Runnable() { // from class: cn.mucang.sundial.library.viewmodel.LoginViewModel.getLastInfo.1
            @Override // java.lang.Runnable
            public final void run() {
                if (LoginViewModel.this.personMode == PersonMode.COACH.ordinal()) {
                    i0<CoachInfo> coachLiveData = LoginViewModel.this.getCoachLiveData();
                    SundialManager sundialManager = SundialManager.getInstance();
                    r.d(sundialManager, "SundialManager.getInstance()");
                    coachLiveData.l(sundialManager.getLastCoach());
                    return;
                }
                i0<StudentInfo> studentLiveData = LoginViewModel.this.getStudentLiveData();
                SundialManager sundialManager2 = SundialManager.getInstance();
                r.d(sundialManager2, "SundialManager.getInstance()");
                studentLiveData.l(sundialManager2.getLastStudent());
            }
        });
    }

    public final i0<StudentInfo> getStudentLiveData() {
        return this.studentLiveData;
    }

    public final void setCoachLiveData(i0<CoachInfo> i0Var) {
        r.e(i0Var, "<set-?>");
        this.coachLiveData = i0Var;
    }

    public final void setStudentLiveData(i0<StudentInfo> i0Var) {
        r.e(i0Var, "<set-?>");
        this.studentLiveData = i0Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoginViewModel(Application app, int i) {
        super(app);
        r.e(app, "app");
        this.personMode = i;
        this.coachLiveData = new i0<>();
        this.studentLiveData = new i0<>();
    }
}
