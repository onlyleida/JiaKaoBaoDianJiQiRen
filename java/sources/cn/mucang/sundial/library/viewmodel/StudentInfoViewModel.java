package cn.mucang.sundial.library.viewmodel;

import android.app.Application;
import android.content.SharedPreferences;
import androidx.lifecycle.a;
import androidx.lifecycle.i0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.ui.framework.fetcher.ThreadPool;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.db.entity.StudentInfo;
import cn.mucang.sundial.android.log.SundialLog;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import kotlin.Metadata;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.ranges.f;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 *2\u00020\u0001:\u0001*B\u000f\u0012\u0006\u0010'\u001a\u00020&¢\u0006\u0004\b(\u0010)J\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\r\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0004J\r\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u001d\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b\f\u0010\rJ\r\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\u000b¢\u0006\u0004\b\u0010\u0010\u000fR\u0016\u0010\u0012\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u001e\u0010\u0016\u001a\n \u0015*\u0004\u0018\u00010\u00140\u00148\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R(\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u0016\u0010 \u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010\"\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010$\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010#R\u0016\u0010%\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010#¨\u0006+"}, d2 = {"Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;", "Landroidx/lifecycle/a;", "", "getCourseStartTime", "()J", "getSavedCourseTime", "", "getSavedDistance", "()D", "currentCourseTime", "totalDistance", "Lkotlin/v;", "saveCourseTimeAndDistance", "(JD)V", "restoreClassroomIfNeed", "()V", "getStudentInfo2Update", "", "isRestored", "Z", "Landroid/content/SharedPreferences;", "kotlin.jvm.PlatformType", "pref", "Landroid/content/SharedPreferences;", "Landroidx/lifecycle/i0;", "Lcn/mucang/sundial/android/db/entity/StudentInfo;", "studentInfoData", "Landroidx/lifecycle/i0;", "getStudentInfoData", "()Landroidx/lifecycle/i0;", "setStudentInfoData", "(Landroidx/lifecycle/i0;)V", "_savedCourseDistance", "D", "_savedCourseTime", "J", "_courseStartTime", "classroomId", "Landroid/app/Application;", "app", "<init>", "(Landroid/app/Application;)V", "Companion", "library_release"}, k = 1, mv = {1, 1, 15})
public final class StudentInfoViewModel extends a {
    private static final String KEY_CLASSROOM_ID = "classroom_id";
    private static final String KEY_COURSE_DISTANCE = "course_distance";
    private static final String KEY_COURSE_TIME = "course_time";
    private static final String KEY_LOGIN_TIME = "login_time";
    private static final String PREF_NAME = "saved_classroom";
    public static final String TAG = "StudentInfoViewModel";
    private long _courseStartTime;
    private double _savedCourseDistance;
    private long _savedCourseTime;
    private long classroomId;
    private boolean isRestored;
    private final SharedPreferences pref;
    private i0<StudentInfo> studentInfoData;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static long lastCourseTime = -1;

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0011\u0010\u0012R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u0016\u0010\n\u001a\u00020\t8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0016\u0010\f\u001a\u00020\t8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\u000bR\u0016\u0010\r\u001a\u00020\t8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\u000bR\u0016\u0010\u000e\u001a\u00020\t8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000e\u0010\u000bR\u0016\u0010\u000f\u001a\u00020\t8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000f\u0010\u000bR\u0016\u0010\u0010\u001a\u00020\t8\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0010\u0010\u000b¨\u0006\u0013"}, d2 = {"Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel$Companion;", "", "", "lastCourseTime", "J", "getLastCourseTime", "()J", "setLastCourseTime", "(J)V", "", "KEY_CLASSROOM_ID", "Ljava/lang/String;", "KEY_COURSE_DISTANCE", "KEY_COURSE_TIME", "KEY_LOGIN_TIME", "PREF_NAME", "TAG", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
    public static final class Companion {
        private Companion() {
        }

        public final long getLastCourseTime() {
            return StudentInfoViewModel.lastCourseTime;
        }

        public final void setLastCourseTime(long j) {
            StudentInfoViewModel.lastCourseTime = j;
        }

        public /* synthetic */ Companion(o oVar) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StudentInfoViewModel(Application app) {
        super(app);
        r.e(app, "app");
        this.pref = app.getSharedPreferences(PREF_NAME, 0);
        this.studentInfoData = new i0<>();
    }

    /* JADX INFO: renamed from: getCourseStartTime, reason: from getter */
    public final long get_courseStartTime() {
        return this._courseStartTime;
    }

    /* JADX INFO: renamed from: getSavedCourseTime, reason: from getter */
    public final long get_savedCourseTime() {
        return this._savedCourseTime;
    }

    /* JADX INFO: renamed from: getSavedDistance, reason: from getter */
    public final double get_savedCourseDistance() {
        return this._savedCourseDistance;
    }

    public final void getStudentInfo2Update() {
        ThreadPool.a(new Runnable() { // from class: cn.mucang.sundial.library.viewmodel.StudentInfoViewModel.getStudentInfo2Update.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    SundialManager sundialManager = SundialManager.getInstance();
                    r.d(sundialManager, "SundialManager.getInstance()");
                    StudentInfo lastStudent = sundialManager.getLastStudent();
                    if (lastStudent != null) {
                        StudentInfoViewModel.this.getStudentInfoData().l(lastStudent);
                    }
                } catch (Exception e2) {
                    t.h(StudentInfoViewModel.TAG, e2.toString());
                }
            }
        });
    }

    public final i0<StudentInfo> getStudentInfoData() {
        return this.studentInfoData;
    }

    public final void restoreClassroomIfNeed() {
        SundialManager sundialManager = SundialManager.getInstance();
        r.d(sundialManager, "SundialManager.getInstance()");
        StudentInfo lastStudent = sundialManager.getLastStudent();
        if (lastStudent != null) {
            long classroomId = lastStudent.getClassroomId();
            this.classroomId = classroomId;
            if (this.pref.getLong(KEY_CLASSROOM_ID, -1L) != classroomId || classroomId <= 0) {
                this.isRestored = true;
                this.pref.edit().clear().apply();
                this._courseStartTime = System.currentTimeMillis();
                lastCourseTime = -1L;
                return;
            }
            if (this.isRestored) {
                return;
            }
            this.isRestored = true;
            SundialLog.normal("restoreClassroomIfNeed +1");
            long jCurrentTimeMillis = this.pref.getLong(KEY_LOGIN_TIME, 0L);
            if (jCurrentTimeMillis <= 0) {
                jCurrentTimeMillis = System.currentTimeMillis();
            }
            this._courseStartTime = jCurrentTimeMillis;
            this._savedCourseTime = f.c(this.pref.getLong(KEY_COURSE_TIME, 0L), 0L);
            this._savedCourseDistance = f.a(this.pref.getFloat(KEY_COURSE_DISTANCE, BitmapDescriptorFactory.HUE_RED), BitmapDescriptorFactory.HUE_RED);
            lastCourseTime = this._savedCourseTime;
        }
    }

    public final void saveCourseTimeAndDistance(long currentCourseTime, double totalDistance) {
        lastCourseTime = currentCourseTime;
        SharedPreferences pref = this.pref;
        r.d(pref, "pref");
        SharedPreferences.Editor editor = pref.edit();
        r.d(editor, "editor");
        editor.putLong(KEY_CLASSROOM_ID, this.classroomId);
        editor.putLong(KEY_LOGIN_TIME, get_courseStartTime());
        editor.putLong(KEY_COURSE_TIME, currentCourseTime);
        editor.putFloat(KEY_COURSE_DISTANCE, (float) totalDistance);
        editor.commit();
    }

    public final void setStudentInfoData(i0<StudentInfo> i0Var) {
        r.e(i0Var, "<set-?>");
        this.studentInfoData = i0Var;
    }
}
