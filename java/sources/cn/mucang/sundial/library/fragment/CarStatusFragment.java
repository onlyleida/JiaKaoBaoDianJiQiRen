package cn.mucang.sundial.library.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.lifecycle.a0;
import androidx.lifecycle.i0;
import cn.mucang.sundial.android.eventbus.LiveBus;
import cn.mucang.sundial.android.eventbus.event.CourseTimeChangeEvent;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.model.CarModel;
import cn.mucang.sundial.android.model.KeyState;
import cn.mucang.sundial.library.databinding.TtFragmentCarStatusBinding;
import cn.mucang.sundial.library.entity.CarStatus;
import cn.mucang.sundial.library.util.TTExtKt;
import cn.mucang.sundial.library.viewmodel.CarStatusFragmentViewModel;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.text.DecimalFormat;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001f\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u000b\u001a\u00020\u00022\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ+\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0015\u0010\u0004R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001a\u001a\u00020\u00198\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001d\u001a\u00020\u001c8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006 "}, d2 = {"Lcn/mucang/sundial/library/fragment/CarStatusFragment;", "Lcn/mucang/sundial/library/fragment/BaseFragment;", "Lkotlin/v;", "initViewModel", "()V", "Lcn/mucang/sundial/library/entity/CarStatus;", "carStatus", "updateView", "(Lcn/mucang/sundial/library/entity/CarStatus;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", TtmlNode.RUBY_CONTAINER, "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "onResume", "onPause", "Lcn/mucang/sundial/library/viewmodel/CarStatusFragmentViewModel;", "viewModel", "Lcn/mucang/sundial/library/viewmodel/CarStatusFragmentViewModel;", "Ljava/text/DecimalFormat;", "speedFormatter", "Ljava/text/DecimalFormat;", "Lcn/mucang/sundial/library/databinding/TtFragmentCarStatusBinding;", "viewBinding", "Lcn/mucang/sundial/library/databinding/TtFragmentCarStatusBinding;", "<init>", "library_release"}, k = 1, mv = {1, 1, 15})
public final class CarStatusFragment extends BaseFragment {
    private final DecimalFormat speedFormatter = new DecimalFormat("#.##");
    private TtFragmentCarStatusBinding viewBinding;
    private CarStatusFragmentViewModel viewModel;

    private final void initViewModel() {
        i0<CarStatus> carStatusData;
        if (getActivity() != null) {
            CarStatusFragmentViewModel carStatusFragmentViewModel = (CarStatusFragmentViewModel) vm(this, CarStatusFragmentViewModel.class);
            this.viewModel = carStatusFragmentViewModel;
            if (carStatusFragmentViewModel == null || (carStatusData = carStatusFragmentViewModel.getCarStatusData()) == null) {
                return;
            }
            carStatusData.q(this, new a0<CarStatus>() { // from class: cn.mucang.sundial.library.fragment.CarStatusFragment$initViewModel$$inlined$run$lambda$1
                @Override // androidx.lifecycle.a0
                public final void onChanged(CarStatus carStatus) {
                    if (carStatus != null) {
                        this.this$0.updateView(carStatus);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateView(CarStatus carStatus) {
        KeyState keyState;
        TtFragmentCarStatusBinding ttFragmentCarStatusBinding = this.viewBinding;
        if (ttFragmentCarStatusBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        TextView carNum = ttFragmentCarStatusBinding.carNum;
        r.d(carNum, "carNum");
        carNum.setText(carStatus.getCarNo());
        CarModel carModel = carStatus.getCarModel();
        if (carModel == null || (keyState = carModel.keyState) == null) {
            keyState = KeyState.Invalid;
        }
        r.d(keyState, "carStatus.carModel?.keyState ?: KeyState.Invalid");
        TextView accController = ttFragmentCarStatusBinding.accController;
        r.d(accController, "accController");
        accController.setText(keyState.id == KeyState.Start.id ? "开启点火" : "关闭点火");
        TextView carSpeed = ttFragmentCarStatusBinding.carSpeed;
        r.d(carSpeed, "carSpeed");
        StringBuilder sb = new StringBuilder();
        DecimalFormat decimalFormat = this.speedFormatter;
        CarModel carModel2 = carStatus.getCarModel();
        sb.append(decimalFormat.format(carModel2 != null ? Float.valueOf(carModel2.speed) : 0));
        sb.append("km/h");
        carSpeed.setText(sb.toString());
        TextView accStatus = ttFragmentCarStatusBinding.accStatus;
        r.d(accStatus, "accStatus");
        int i = keyState.id;
        KeyState keyState2 = KeyState.ACC;
        accStatus.setText(i >= keyState2.id ? "已打开" : "已关闭");
        TextView rpm = ttFragmentCarStatusBinding.rpm;
        r.d(rpm, "rpm");
        StringBuilder sb2 = new StringBuilder();
        CarModel carModel3 = carStatus.getCarModel();
        sb2.append(carModel3 != null ? carModel3.rpm : 0);
        sb2.append("r/min");
        rpm.setText(sb2.toString());
        TextView flameOutTime = ttFragmentCarStatusBinding.flameOutTime;
        r.d(flameOutTime, "flameOutTime");
        flameOutTime.setText(TTExtKt.time2str(carStatus.getFlameOutTime()));
        TextView powerStatus = ttFragmentCarStatusBinding.powerStatus;
        r.d(powerStatus, "powerStatus");
        powerStatus.setText(keyState.id >= keyState2.id ? "正常" : "关闭");
        TextView gps = ttFragmentCarStatusBinding.gps;
        r.d(gps, "gps");
        gps.setText("开启");
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        initViewModel();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        r.e(inflater, "inflater");
        TtFragmentCarStatusBinding ttFragmentCarStatusBindingInflate = TtFragmentCarStatusBinding.inflate(getLayoutInflater());
        r.d(ttFragmentCarStatusBindingInflate, "TtFragmentCarStatusBinding.inflate(layoutInflater)");
        this.viewBinding = ttFragmentCarStatusBindingInflate;
        if (ttFragmentCarStatusBindingInflate == null) {
            r.u("viewBinding");
            throw null;
        }
        NestedScrollView root = ttFragmentCarStatusBindingInflate.getRoot();
        r.d(root, "viewBinding.root");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        LiveBus.INSTANCE.with(CourseTimeChangeEvent.class).n(getViewLifecycleOwner());
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        i0 i0VarWith = LiveBus.INSTANCE.with(CourseTimeChangeEvent.class);
        androidx.lifecycle.r viewLifecycleOwner = getViewLifecycleOwner();
        r.d(viewLifecycleOwner, "viewLifecycleOwner");
        i0VarWith.q(viewLifecycleOwner, new a0<CourseTimeChangeEvent>() { // from class: cn.mucang.sundial.library.fragment.CarStatusFragment.onResume.1
            @Override // androidx.lifecycle.a0
            public final void onChanged(CourseTimeChangeEvent courseTimeChangeEvent) {
                CarStatusFragmentViewModel carStatusFragmentViewModel;
                if (!(courseTimeChangeEvent instanceof CourseTimeChangeEvent) || (carStatusFragmentViewModel = CarStatusFragment.this.viewModel) == null) {
                    return;
                }
                carStatusFragmentViewModel.getCarStatus();
            }
        });
        CarStatusFragmentViewModel carStatusFragmentViewModel = this.viewModel;
        if (carStatusFragmentViewModel != null) {
            carStatusFragmentViewModel.getCarStatus();
        }
        SundialLog.normal("显示车辆状态");
    }
}
