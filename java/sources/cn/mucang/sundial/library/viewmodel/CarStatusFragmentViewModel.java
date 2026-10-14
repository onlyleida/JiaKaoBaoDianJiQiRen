package cn.mucang.sundial.library.viewmodel;

import android.app.Application;
import androidx.lifecycle.a;
import androidx.lifecycle.i0;
import cn.mucang.android.ui.framework.fetcher.ThreadPool;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.db.entity.DeviceInfo;
import cn.mucang.sundial.android.model.CarModel;
import cn.mucang.sundial.android.tcp.data.gnss.OBDManager;
import cn.mucang.sundial.android.timer.train.TrainManager;
import cn.mucang.sundial.library.entity.CarStatus;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004R\u001f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\u000f"}, d2 = {"Lcn/mucang/sundial/library/viewmodel/CarStatusFragmentViewModel;", "Landroidx/lifecycle/a;", "Lkotlin/v;", "getCarStatus", "()V", "Landroidx/lifecycle/i0;", "Lcn/mucang/sundial/library/entity/CarStatus;", "carStatusData", "Landroidx/lifecycle/i0;", "getCarStatusData", "()Landroidx/lifecycle/i0;", "Landroid/app/Application;", "app", "<init>", "(Landroid/app/Application;)V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class CarStatusFragmentViewModel extends a {
    private final i0<CarStatus> carStatusData;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CarStatusFragmentViewModel(Application app) {
        super(app);
        r.e(app, "app");
        this.carStatusData = new i0<>();
    }

    public final void getCarStatus() {
        ThreadPool.a(new Runnable() { // from class: cn.mucang.sundial.library.viewmodel.CarStatusFragmentViewModel.getCarStatus.1
            @Override // java.lang.Runnable
            public final void run() {
                String carNo;
                SundialManager sundialManager = SundialManager.getInstance();
                r.d(sundialManager, "SundialManager.getInstance()");
                DeviceInfo deviceInfo = sundialManager.getDeviceInfo();
                CarStatus carStatusE = CarStatusFragmentViewModel.this.getCarStatusData().e();
                if (carStatusE == null) {
                    carStatusE = new CarStatus();
                }
                r.d(carStatusE, "carStatusData.value ?: CarStatus()");
                if (deviceInfo == null || (carNo = deviceInfo.getCarNo()) == null) {
                    carNo = "";
                }
                carStatusE.setCarNo(carNo);
                CarModel carModel = new CarModel();
                if (OBDManager.getCarModel() != null) {
                    carModel.copy(OBDManager.getCarModel());
                }
                v vVar = v.f15822a;
                carStatusE.setCarModel(carModel);
                TrainManager trainManager = TrainManager.getInstance();
                r.d(trainManager, "TrainManager.getInstance()");
                carStatusE.setFlameOutTime(trainManager.getFlameOutTime());
                CarStatusFragmentViewModel.this.getCarStatusData().l(carStatusE);
            }
        });
    }

    public final i0<CarStatus> getCarStatusData() {
        return this.carStatusData;
    }
}
