package cn.mucang.sundial.library.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.lifecycle.a0;
import androidx.lifecycle.i0;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.db.entity.StudentInfo;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.library.databinding.TtFragmentTrainingProgressBinding;
import cn.mucang.sundial.library.entity.ExtraKey;
import cn.mucang.sundial.library.entity.TrainEntity;
import cn.mucang.sundial.library.entity.TrainingProgress;
import cn.mucang.sundial.library.util.TTExtKt;
import cn.mucang.sundial.library.viewmodel.TrainingProgressFragmentViewModel;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.math.RoundingMode;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001b\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u000b\u001a\u00020\u00022\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ+\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0014\u0010\u0004R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u0019\u001a\u00020\u00188\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001c"}, d2 = {"Lcn/mucang/sundial/library/fragment/TrainingProgressFragment;", "Lcn/mucang/sundial/library/fragment/BaseFragment;", "Lkotlin/v;", "initViewModel", "()V", "Lcn/mucang/sundial/library/entity/TrainingProgress;", "trainingProgress", "updateUI", "(Lcn/mucang/sundial/library/entity/TrainingProgress;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", TtmlNode.RUBY_CONTAINER, "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "onResume", "Lcn/mucang/sundial/library/viewmodel/TrainingProgressFragmentViewModel;", "viewModel", "Lcn/mucang/sundial/library/viewmodel/TrainingProgressFragmentViewModel;", "Lcn/mucang/sundial/library/databinding/TtFragmentTrainingProgressBinding;", "viewBinding", "Lcn/mucang/sundial/library/databinding/TtFragmentTrainingProgressBinding;", "<init>", "library_release"}, k = 1, mv = {1, 1, 15})
public final class TrainingProgressFragment extends BaseFragment {
    private TtFragmentTrainingProgressBinding viewBinding;
    private TrainingProgressFragmentViewModel viewModel;

    private final void initViewModel() {
        i0<TrainingProgress> trainingProgressData;
        if (getActivity() != null) {
            TrainingProgressFragmentViewModel trainingProgressFragmentViewModel = (TrainingProgressFragmentViewModel) vm(this, TrainingProgressFragmentViewModel.class);
            this.viewModel = trainingProgressFragmentViewModel;
            if (trainingProgressFragmentViewModel == null || (trainingProgressData = trainingProgressFragmentViewModel.getTrainingProgressData()) == null) {
                return;
            }
            trainingProgressData.q(this, new a0<TrainingProgress>() { // from class: cn.mucang.sundial.library.fragment.TrainingProgressFragment$initViewModel$$inlined$run$lambda$1
                @Override // androidx.lifecycle.a0
                public final void onChanged(TrainingProgress trainingProgress) {
                    if (trainingProgress != null) {
                        this.this$0.updateUI(trainingProgress);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:47:0x01ce  */
    public final void updateUI(TrainingProgress trainingProgress) {
        TtFragmentTrainingProgressBinding ttFragmentTrainingProgressBinding = this.viewBinding;
        if (ttFragmentTrainingProgressBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        TextView totalDuration = ttFragmentTrainingProgressBinding.totalDuration;
        r.d(totalDuration, "totalDuration");
        StudentInfo studentInfo = trainingProgress.getStudentInfo();
        totalDuration.setText(studentInfo != null ? TTExtKt.minute2str(Integer.valueOf(studentInfo.getTotalDuration())) : null);
        TextView finishedDuration = ttFragmentTrainingProgressBinding.finishedDuration;
        r.d(finishedDuration, "finishedDuration");
        StudentInfo studentInfo2 = trainingProgress.getStudentInfo();
        finishedDuration.setText(studentInfo2 != null ? TTExtKt.minute2str(Integer.valueOf(studentInfo2.getFinishedDuration())) : null);
        StudentInfo studentInfo3 = trainingProgress.getStudentInfo();
        double totalMileage = ((double) (studentInfo3 != null ? studentInfo3.getTotalMileage() : 0)) * 1.0d;
        SundialManager sundialManager = SundialManager.getInstance();
        r.d(sundialManager, "SundialManager.getInstance()");
        double accuracyMultiplier = totalMileage / ((double) sundialManager.getAccuracyMultiplier());
        TextView totalMileage2 = ttFragmentTrainingProgressBinding.totalMileage;
        r.d(totalMileage2, "totalMileage");
        totalMileage2.setText(TTExtKt.formatDigits(accuracyMultiplier, 2, RoundingMode.HALF_UP) + ExtraKey.km);
        StudentInfo studentInfo4 = trainingProgress.getStudentInfo();
        double finishedMileage = ((double) (studentInfo4 != null ? studentInfo4.getFinishedMileage() : 0)) * 1.0d;
        SundialManager sundialManager2 = SundialManager.getInstance();
        r.d(sundialManager2, "SundialManager.getInstance()");
        double accuracyMultiplier2 = finishedMileage / ((double) sundialManager2.getAccuracyMultiplier());
        TextView finishedMileage2 = ttFragmentTrainingProgressBinding.finishedMileage;
        r.d(finishedMileage2, "finishedMileage");
        finishedMileage2.setText(TTExtKt.formatDigits(accuracyMultiplier2, 2, RoundingMode.HALF_UP) + ExtraKey.km);
        TextView passTime = ttFragmentTrainingProgressBinding.passTime;
        r.d(passTime, "passTime");
        TrainEntity trainInfo = trainingProgress.getTrainInfo();
        passTime.setText(trainInfo != null ? TTExtKt.minute2str(Integer.valueOf(trainInfo.getValidTime())) : null);
        TextView passMileage = ttFragmentTrainingProgressBinding.passMileage;
        r.d(passMileage, "passMileage");
        StringBuilder sb = new StringBuilder();
        TrainEntity trainInfo2 = trainingProgress.getTrainInfo();
        sb.append(trainInfo2 != null ? Double.valueOf(trainInfo2.getValidMileage()) : 0);
        sb.append(ExtraKey.km);
        passMileage.setText(sb.toString());
        TextView pendingTime = ttFragmentTrainingProgressBinding.pendingTime;
        r.d(pendingTime, "pendingTime");
        TrainEntity trainInfo3 = trainingProgress.getTrainInfo();
        pendingTime.setText(trainInfo3 != null ? TTExtKt.minute2str(Integer.valueOf(trainInfo3.getWaitApproveTime())) : null);
        TextView pendingMileage = ttFragmentTrainingProgressBinding.pendingMileage;
        r.d(pendingMileage, "pendingMileage");
        StringBuilder sb2 = new StringBuilder();
        TrainEntity trainInfo4 = trainingProgress.getTrainInfo();
        sb2.append(trainInfo4 != null ? Double.valueOf(trainInfo4.getWaitApproveMileage()) : 0);
        sb2.append(ExtraKey.km);
        pendingMileage.setText(sb2.toString());
        TextView todayTime = ttFragmentTrainingProgressBinding.todayTime;
        r.d(todayTime, "todayTime");
        TrainEntity trainInfo5 = trainingProgress.getTrainInfo();
        todayTime.setText(trainInfo5 != null ? TTExtKt.minute2str(Integer.valueOf(trainInfo5.getTodayTime())) : null);
        TextView todayMileage = ttFragmentTrainingProgressBinding.todayMileage;
        r.d(todayMileage, "todayMileage");
        StringBuilder sb3 = new StringBuilder();
        TrainEntity trainInfo6 = trainingProgress.getTrainInfo();
        sb3.append(trainInfo6 != null ? TTExtKt.formatDigits(trainInfo6.getTodayMileage(), 2, RoundingMode.HALF_UP) : null);
        sb3.append(ExtraKey.km);
        todayMileage.setText(sb3.toString());
        TextView todayMileage2 = ttFragmentTrainingProgressBinding.todayMileage;
        r.d(todayMileage2, "todayMileage");
        CharSequence text = todayMileage2.getText();
        r.d(text, "todayMileage.text");
        if (r.a("0km", StringsKt__StringsKt.J0(text))) {
            TextView todayMileage3 = ttFragmentTrainingProgressBinding.todayMileage;
            r.d(todayMileage3, "todayMileage");
            todayMileage3.setText("");
        } else {
            TextView todayMileage4 = ttFragmentTrainingProgressBinding.todayMileage;
            r.d(todayMileage4, "todayMileage");
            CharSequence text2 = todayMileage4.getText();
            r.d(text2, "todayMileage.text");
            if (r.a("0.0km", StringsKt__StringsKt.J0(text2))) {
                TextView todayMileage5 = ttFragmentTrainingProgressBinding.todayMileage;
                r.d(todayMileage5, "todayMileage");
                todayMileage5.setText("");
            }
        }
        TextView todayTime2 = ttFragmentTrainingProgressBinding.todayTime;
        r.d(todayTime2, "todayTime");
        if (r.a("0", todayTime2.getText())) {
            TextView todayTime3 = ttFragmentTrainingProgressBinding.todayTime;
            r.d(todayTime3, "todayTime");
            todayTime3.setText("");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        initViewModel();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        r.e(inflater, "inflater");
        TtFragmentTrainingProgressBinding ttFragmentTrainingProgressBindingInflate = TtFragmentTrainingProgressBinding.inflate(getLayoutInflater());
        r.d(ttFragmentTrainingProgressBindingInflate, "TtFragmentTrainingProgre…g.inflate(layoutInflater)");
        this.viewBinding = ttFragmentTrainingProgressBindingInflate;
        if (ttFragmentTrainingProgressBindingInflate == null) {
            r.u("viewBinding");
            throw null;
        }
        LinearLayout root = ttFragmentTrainingProgressBindingInflate.getRoot();
        r.d(root, "viewBinding.root");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        TrainingProgressFragmentViewModel trainingProgressFragmentViewModel = this.viewModel;
        if (trainingProgressFragmentViewModel != null) {
            trainingProgressFragmentViewModel.getTrainingProgress();
        }
        SundialLog.normal("显示培训进度");
    }
}
