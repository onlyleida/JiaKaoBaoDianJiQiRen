package cn.mucang.sundial.library.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.d;
import androidx.lifecycle.a0;
import androidx.lifecycle.i0;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.db.entity.CoachInfo;
import cn.mucang.sundial.android.db.entity.StudentInfo;
import cn.mucang.sundial.android.eventbus.LiveBus;
import cn.mucang.sundial.android.eventbus.event.CourseTimeChangeEvent;
import cn.mucang.sundial.android.eventbus.event.DisableTrainingEvent;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.library.databinding.TtFragmentTrainingInfoBinding;
import cn.mucang.sundial.library.entity.ExtraKey;
import cn.mucang.sundial.library.entity.TrainingInfo;
import cn.mucang.sundial.library.util.GlobalData;
import cn.mucang.sundial.library.util.KtxsKt;
import cn.mucang.sundial.library.util.SubjectUtil;
import cn.mucang.sundial.library.util.TTExtKt;
import cn.mucang.sundial.library.viewmodel.StudentInfoViewModel;
import cn.mucang.sundial.library.viewmodel.TrainingInfoFragmentViewModel;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.math.RoundingMode;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001f\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u000b\u001a\u00020\u00022\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ+\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0015\u0010\u0004R\u0016\u0010\u0017\u001a\u00020\u00168\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001a\u001a\u00020\u00198\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001d\u001a\u00020\u001c8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006 "}, d2 = {"Lcn/mucang/sundial/library/fragment/TrainingInfoFragment;", "Lcn/mucang/sundial/library/fragment/BaseFragment;", "Lkotlin/v;", "initViewModel", "()V", "Lcn/mucang/sundial/library/entity/TrainingInfo;", "trainingInfo", "updateView", "(Lcn/mucang/sundial/library/entity/TrainingInfo;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", TtmlNode.RUBY_CONTAINER, "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "onResume", "onPause", "Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;", "activityViewModel", "Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;", "Lcn/mucang/sundial/library/databinding/TtFragmentTrainingInfoBinding;", "viewBinding", "Lcn/mucang/sundial/library/databinding/TtFragmentTrainingInfoBinding;", "Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel;", "viewModel", "Lcn/mucang/sundial/library/viewmodel/TrainingInfoFragmentViewModel;", "<init>", "library_release"}, k = 1, mv = {1, 1, 15})
public final class TrainingInfoFragment extends BaseFragment {
    private StudentInfoViewModel activityViewModel;
    private TtFragmentTrainingInfoBinding viewBinding;
    private TrainingInfoFragmentViewModel viewModel;

    public static final /* synthetic */ StudentInfoViewModel access$getActivityViewModel$p(TrainingInfoFragment trainingInfoFragment) {
        StudentInfoViewModel studentInfoViewModel = trainingInfoFragment.activityViewModel;
        if (studentInfoViewModel != null) {
            return studentInfoViewModel;
        }
        r.u("activityViewModel");
        throw null;
    }

    public static final /* synthetic */ TrainingInfoFragmentViewModel access$getViewModel$p(TrainingInfoFragment trainingInfoFragment) {
        TrainingInfoFragmentViewModel trainingInfoFragmentViewModel = trainingInfoFragment.viewModel;
        if (trainingInfoFragmentViewModel != null) {
            return trainingInfoFragmentViewModel;
        }
        r.u("viewModel");
        throw null;
    }

    private final void initViewModel() {
        TrainingInfoFragmentViewModel trainingInfoFragmentViewModel = (TrainingInfoFragmentViewModel) vm(this, TrainingInfoFragmentViewModel.class);
        this.viewModel = trainingInfoFragmentViewModel;
        if (trainingInfoFragmentViewModel == null) {
            r.u("viewModel");
            throw null;
        }
        trainingInfoFragmentViewModel.getTrainingInfoData().q(this, new a0<TrainingInfo>() { // from class: cn.mucang.sundial.library.fragment.TrainingInfoFragment.initViewModel.1
            @Override // androidx.lifecycle.a0
            public final void onChanged(TrainingInfo trainingInfo) {
                if (trainingInfo != null) {
                    TrainingInfoFragment.this.updateView(trainingInfo);
                }
            }
        });
        StudentInfoViewModel studentInfoModel = GlobalData.INSTANCE.getStudentInfoModel();
        if (studentInfoModel == null) {
            d dVarRequireActivity = requireActivity();
            r.d(dVarRequireActivity, "requireActivity()");
            studentInfoModel = (StudentInfoViewModel) vm(dVarRequireActivity, StudentInfoViewModel.class);
        }
        this.activityViewModel = studentInfoModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateView(TrainingInfo trainingInfo) {
        String studentName;
        String coachName;
        String driveLicence;
        TtFragmentTrainingInfoBinding ttFragmentTrainingInfoBinding = this.viewBinding;
        if (ttFragmentTrainingInfoBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        TextView studentInfo = ttFragmentTrainingInfoBinding.studentInfo;
        r.d(studentInfo, "studentInfo");
        StringBuilder sb = new StringBuilder();
        StudentInfo studentInfo2 = trainingInfo.getStudentInfo();
        String str = "";
        if (studentInfo2 == null || (studentName = studentInfo2.getStudentName()) == null) {
            studentName = "";
        }
        sb.append(studentName);
        sb.append("  ");
        StudentInfo studentInfo3 = trainingInfo.getStudentInfo();
        String strMask = KtxsKt.mask(studentInfo3 != null ? studentInfo3.getIdCard() : null, 4, 11);
        if (strMask == null) {
            strMask = "";
        }
        sb.append(strMask);
        studentInfo.setText(sb.toString());
        TextView coachInfo = ttFragmentTrainingInfoBinding.coachInfo;
        r.d(coachInfo, "coachInfo");
        StringBuilder sb2 = new StringBuilder();
        CoachInfo coachInfo2 = trainingInfo.getCoachInfo();
        if (coachInfo2 == null || (coachName = coachInfo2.getCoachName()) == null) {
            coachName = "";
        }
        sb2.append(coachName);
        sb2.append("  ");
        CoachInfo coachInfo3 = trainingInfo.getCoachInfo();
        String strMask2 = KtxsKt.mask(coachInfo3 != null ? coachInfo3.getIdCard() : null, 4, 11);
        if (strMask2 == null) {
            strMask2 = "";
        }
        sb2.append(strMask2);
        coachInfo.setText(sb2.toString());
        SundialManager sundialManager = SundialManager.getInstance();
        StudentInfo studentInfo4 = trainingInfo.getStudentInfo();
        int courseTypeByCourseCode = sundialManager.getCourseTypeByCourseCode(studentInfo4 != null ? studentInfo4.getCourseCode() : null);
        TextView subject = ttFragmentTrainingInfoBinding.subject;
        r.d(subject, "subject");
        subject.setText(SubjectUtil.INSTANCE.subject2name(courseTypeByCourseCode));
        TextView driveType = ttFragmentTrainingInfoBinding.driveType;
        r.d(driveType, "driveType");
        StudentInfo studentInfo5 = trainingInfo.getStudentInfo();
        if (studentInfo5 != null && (driveLicence = studentInfo5.getDriveLicence()) != null) {
            str = driveLicence;
        }
        driveType.setText(str);
        TextView courseTime = ttFragmentTrainingInfoBinding.courseTime;
        r.d(courseTime, "courseTime");
        courseTime.setText(TTExtKt.time2str(trainingInfo.getCourseTime()));
        double currentTotalDistance = trainingInfo.getCurrentTotalDistance();
        TextView courseDistance = ttFragmentTrainingInfoBinding.courseDistance;
        r.d(courseDistance, "courseDistance");
        courseDistance.setText(TTExtKt.formatDigits(currentTotalDistance, 2, RoundingMode.HALF_UP) + ExtraKey.km);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        initViewModel();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        r.e(inflater, "inflater");
        TtFragmentTrainingInfoBinding ttFragmentTrainingInfoBindingInflate = TtFragmentTrainingInfoBinding.inflate(inflater);
        r.d(ttFragmentTrainingInfoBindingInflate, "TtFragmentTrainingInfoBinding.inflate(inflater)");
        this.viewBinding = ttFragmentTrainingInfoBindingInflate;
        if (ttFragmentTrainingInfoBindingInflate == null) {
            r.u("viewBinding");
            throw null;
        }
        LinearLayout root = ttFragmentTrainingInfoBindingInflate.getRoot();
        r.d(root, "viewBinding.root");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        LiveBus.Companion companion = LiveBus.INSTANCE;
        companion.with(CourseTimeChangeEvent.class).n(getViewLifecycleOwner());
        companion.with(DisableTrainingEvent.class).n(getViewLifecycleOwner());
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        LiveBus.Companion companion = LiveBus.INSTANCE;
        i0 i0VarWith = companion.with(CourseTimeChangeEvent.class);
        androidx.lifecycle.r viewLifecycleOwner = getViewLifecycleOwner();
        r.d(viewLifecycleOwner, "viewLifecycleOwner");
        i0VarWith.q(viewLifecycleOwner, new a0<CourseTimeChangeEvent>() { // from class: cn.mucang.sundial.library.fragment.TrainingInfoFragment.onResume.1
            @Override // androidx.lifecycle.a0
            public final void onChanged(CourseTimeChangeEvent courseTimeChangeEvent) {
                if (courseTimeChangeEvent instanceof CourseTimeChangeEvent) {
                    TrainingInfoFragment.access$getViewModel$p(TrainingInfoFragment.this).setCourseTime(System.currentTimeMillis() - TrainingInfoFragment.access$getActivityViewModel$p(TrainingInfoFragment.this).get_courseStartTime(), TrainingInfoFragment.access$getActivityViewModel$p(TrainingInfoFragment.this).get_savedCourseTime() + courseTimeChangeEvent.getCourseTime(), courseTimeChangeEvent.getTotalDistance());
                }
            }
        });
        i0 i0VarWith2 = companion.with(DisableTrainingEvent.class);
        androidx.lifecycle.r viewLifecycleOwner2 = getViewLifecycleOwner();
        r.d(viewLifecycleOwner2, "viewLifecycleOwner");
        i0VarWith2.q(viewLifecycleOwner2, new a0<DisableTrainingEvent>() { // from class: cn.mucang.sundial.library.fragment.TrainingInfoFragment.onResume.2
            @Override // androidx.lifecycle.a0
            public final void onChanged(DisableTrainingEvent disableTrainingEvent) {
                Object objM139constructorimpl;
                if (disableTrainingEvent != null) {
                    try {
                        Result.Companion companion2 = Result.INSTANCE;
                        TrainingInfoFragment.access$getViewModel$p(TrainingInfoFragment.this).setTrainingStatus(disableTrainingEvent.status);
                        objM139constructorimpl = Result.m139constructorimpl(v.f15822a);
                    } catch (Throwable th) {
                        Result.Companion companion3 = Result.INSTANCE;
                        objM139constructorimpl = Result.m139constructorimpl(k.a(th));
                    }
                    Result.m138boximpl(objM139constructorimpl);
                }
            }
        });
        TrainingInfoFragmentViewModel trainingInfoFragmentViewModel = this.viewModel;
        if (trainingInfoFragmentViewModel == null) {
            r.u("viewModel");
            throw null;
        }
        trainingInfoFragmentViewModel.getTrainingInfo();
        SundialLog.normal("显示培训信息");
    }
}
