package cn.mucang.jiakaoyi.uilib.ui.setting.car;

import android.app.Activity;
import androidx.lifecycle.k0;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.actionlog.ActionLog;
import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.signal.car.CarItemModel;
import cn.mucang.android.jiakaoyi.signal.car.CarSelectModel;
import cn.mucang.android.jiakaoyi.signal.car.LocalCarModel;
import cn.mucang.android.jiakaoyi.signal.car.SelectCarManager;
import cn.mucang.android.jiakaoyi.signal.car.SelectedCarModel;
import cn.mucang.android.jiakaoyi.signal.communicate.McCommandManager;
import cn.mucang.jiakaoyi.uilib.model.ListLiveData;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u000fJ\b\u0010\u001a\u001a\u0004\u0018\u00010\u0012J\u0018\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u001d2\b\b\u0002\u0010\u001e\u001a\u00020\u001fJ\u0018\u0010 \u001a\u00020\u00182\u000e\u0010!\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\"H\u0002J\u0010\u0010#\u001a\u00020\u00182\b\b\u0002\u0010$\u001a\u00020\u001fJ\u000e\u0010%\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u000bJ\u000e\u0010&\u001a\u00020\u00182\u0006\u0010'\u001a\u00020\u001fR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0017\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\n¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\rR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006("}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;", "Lcn/mucang/android/jiakaoyi/framework/base/LoadingViewModel;", "()V", "carTypeSettingDialog", "Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarTypeSettingDialog;", "getCarTypeSettingDialog", "()Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarTypeSettingDialog;", "setCarTypeSettingDialog", "(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarTypeSettingDialog;)V", "configList", "Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;", "Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;", "getConfigList", "()Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;", "modelList", "Lcn/mucang/android/jiakaoyi/signal/car/CarSelectModel;", "getModelList", "saveModel", "Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;", "getSaveModel", "()Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;", "setSaveModel", "(Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;)V", "changeModel", "", "model", "getSelectCar", "loadCarList", "selectCode", "", "forReal", "", "postConfigList", "carItemModels", "", "saveCarModel", "notWriteToBox", "selectConfig", "showResult", "success", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CarSelectViewModel extends LoadingViewModel {
    private final ListLiveData<CarSelectModel> c = new ListLiveData<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ListLiveData<CarItemModel> f9912d = new ListLiveData<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private LocalCarModel f9913e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private CarTypeSettingDialog f9914f;

    public static /* synthetic */ void q(CarSelectViewModel carSelectViewModel, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        carSelectViewModel.p(i, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r(List<CarItemModel> list) {
        if (list != null) {
            for (CarItemModel carItemModel : list) {
                carItemModel.setRpmScale(cn.mucang.android.jiakaoyi.signal.car.b.e(carItemModel.getCode()));
                carItemModel.setSpeedScale(cn.mucang.android.jiakaoyi.signal.car.b.g(carItemModel.getCode()));
            }
        }
        this.f9912d.l(list);
    }

    public final void j(CarSelectModel model) {
        kotlin.jvm.internal.r.e(model, "model");
        List<CarSelectModel> list = (List) this.c.e();
        if (list != null) {
            for (CarSelectModel carSelectModel : list) {
                carSelectModel.setSelect(false);
                List<CarItemModel> configList = carSelectModel.getConfigList();
                if (configList != null) {
                    Iterator<T> it = configList.iterator();
                    while (it.hasNext()) {
                        ((CarItemModel) it.next()).setSelect(false);
                    }
                }
            }
        }
        model.setSelect(true);
        ListLiveData<CarSelectModel> listLiveData = this.c;
        listLiveData.l(listLiveData.e());
        r(model.getConfigList());
    }

    /* JADX INFO: renamed from: k, reason: from getter */
    public final CarTypeSettingDialog getF9914f() {
        return this.f9914f;
    }

    public final ListLiveData<CarItemModel> l() {
        return this.f9912d;
    }

    public final ListLiveData<CarSelectModel> m() {
        return this.c;
    }

    /* JADX INFO: renamed from: n, reason: from getter */
    public final LocalCarModel getF9913e() {
        return this.f9913e;
    }

    public final LocalCarModel o() {
        CarSelectModel carSelectModel;
        CarItemModel carItemModel;
        List list = (List) m().e();
        if (list != null) {
            Iterator it = list.iterator();
            do {
                if (!it.hasNext()) {
                    carSelectModel = null;
                    break;
                }
                carSelectModel = (CarSelectModel) it.next();
            } while (!carSelectModel.getIsSelect());
        } else {
            carSelectModel = null;
            break;
        }
        if (carSelectModel == null) {
            return null;
        }
        List<CarItemModel> configList = carSelectModel.getConfigList();
        if (configList != null) {
            Iterator<T> it2 = configList.iterator();
            do {
                if (!it2.hasNext()) {
                    carItemModel = null;
                    break;
                }
                carItemModel = (CarItemModel) it2.next();
            } while (!carItemModel.getIsSelect());
        } else {
            carItemModel = null;
            break;
        }
        if (carItemModel == null) {
            return null;
        }
        LocalCarModel localCarModel = new LocalCarModel();
        localCarModel.setModelName(carSelectModel.getModelName());
        localCarModel.setConfig(carItemModel);
        return localCarModel;
    }

    public final void p(int i, boolean z) {
        LoadingViewModel.f(this, false, null, 3, null);
        kotlinx.coroutines.g.b(k0.a(this), w0.b(), null, new CarSelectViewModel$loadCarList$1(z, i, this, null), 2, null);
    }

    public final void s(boolean z) {
        CarSelectModel carSelectModel;
        CarItemModel carItemModel;
        List list = (List) m().e();
        String logInfo = null;
        if (list != null) {
            Iterator it = list.iterator();
            do {
                if (!it.hasNext()) {
                    carSelectModel = null;
                    break;
                }
                carSelectModel = (CarSelectModel) it.next();
            } while (!carSelectModel.getIsSelect());
        } else {
            carSelectModel = null;
            break;
        }
        if (carSelectModel == null) {
            cn.mucang.android.core.utils.u.h("请选择车型");
            return;
        }
        List<CarItemModel> configList = carSelectModel.getConfigList();
        if (configList != null) {
            Iterator<T> it2 = configList.iterator();
            do {
                if (!it2.hasNext()) {
                    carItemModel = null;
                    break;
                }
                carItemModel = (CarItemModel) it2.next();
            } while (!carItemModel.getIsSelect());
        } else {
            carItemModel = null;
            break;
        }
        if (carItemModel == null) {
            cn.mucang.android.core.utils.u.h("请选择车型");
            return;
        }
        if (z) {
            SelectedCarModel selectedCarModel = new SelectedCarModel();
            selectedCarModel.setCode(Integer.valueOf(carItemModel.getCode()));
            StringBuilder sb = new StringBuilder();
            sb.append((Object) carSelectModel.getModelName());
            sb.append('-');
            sb.append((Object) carItemModel.getGearConfig());
            selectedCarModel.setModelName(sb.toString());
            LiveBus.c(selectedCarModel);
            return;
        }
        if (carItemModel.getRpmScale() <= BitmapDescriptorFactory.HUE_RED || carItemModel.getRpmScale() >= 2.0f) {
            cn.mucang.android.core.utils.u.h("转速比设置不合理");
            return;
        }
        if (carItemModel.getSpeedScale() <= BitmapDescriptorFactory.HUE_RED || carItemModel.getSpeedScale() >= 3.0f) {
            cn.mucang.android.core.utils.u.h("速度比设置不合理");
            return;
        }
        if (kotlin.jvm.internal.r.a(Integer.valueOf(carItemModel.getCode()).toString(), SelectCarManager.g())) {
            cn.mucang.android.jiakaoyi.signal.car.b.h(carItemModel);
            g(false, "设置车型成功");
            return;
        }
        LocalCarModel localCarModel = new LocalCarModel();
        localCarModel.setModelName(carSelectModel.getModelName());
        localCarModel.setConfig(carItemModel);
        kotlin.v vVar = kotlin.v.f15822a;
        this.f9913e = localCarModel;
        CarTypeSettingDialog.a aVar = CarTypeSettingDialog.b;
        Activity activityI = MucangConfig.i();
        kotlin.jvm.internal.r.d(activityI, "getCurrentActivity()");
        this.f9914f = aVar.a(activityI);
        try {
            final byte code = (byte) carItemModel.getCode();
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("设置车型:", Byte.valueOf(code)));
            SelectCarManager.h(this.f9913e);
            McCommandManager.f5380a.o(code, new Function0<kotlin.v>() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.car.CarSelectViewModel$saveCarModel$5
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ kotlin.v invoke() {
                    invoke2();
                    return kotlin.v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    SelectCarManager.a();
                    CarTypeSettingDialog f9914f = this.this$0.getF9914f();
                    if (f9914f != null) {
                        f9914f.c();
                    }
                    cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("设置车型失败:", Byte.valueOf(code)));
                    ActionLog actionLog = ActionLog.f3431a;
                    LocalCarModel f9913e = this.this$0.getF9913e();
                    actionLog.m(kotlin.jvm.internal.r.m("设置车型失败 ", f9913e == null ? null : f9913e.getLogInfo()));
                }
            });
            ActionLog actionLog = ActionLog.f3431a;
            LocalCarModel localCarModel2 = this.f9913e;
            if (localCarModel2 != null) {
                logInfo = localCarModel2.getLogInfo();
            }
            actionLog.m(kotlin.jvm.internal.r.m("点击按钮设置车型 ", logInfo));
        } catch (Exception e2) {
            SelectCarManager.a();
            CarTypeSettingDialog carTypeSettingDialog = this.f9914f;
            if (carTypeSettingDialog != null) {
                carTypeSettingDialog.c();
            }
            cn.mucang.android.jiakaoyi.framework.log.f.o("设置车型失败:" + carItemModel.getCode() + ",error=" + ((Object) e2.getMessage()));
        }
    }

    public final void t(CarItemModel model) {
        kotlin.jvm.internal.r.e(model, "model");
        List list = (List) this.f9912d.e();
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((CarItemModel) it.next()).setSelect(false);
            }
        }
        model.setSelect(!model.getIsSelect());
        r((List) this.f9912d.e());
    }

    public final void u(boolean z) {
        if (!z) {
            CarTypeSettingDialog carTypeSettingDialog = this.f9914f;
            if (carTypeSettingDialog == null) {
                return;
            }
            carTypeSettingDialog.c();
            return;
        }
        CarTypeSettingDialog carTypeSettingDialog2 = this.f9914f;
        if (carTypeSettingDialog2 != null) {
            carTypeSettingDialog2.d();
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("底层告诉设置车型成功更新UI");
        LocalCarModel localCarModel = this.f9913e;
        if (localCarModel == null) {
            return;
        }
        cn.mucang.android.jiakaoyi.signal.car.b.h(localCarModel.getConfig());
        ActionLog actionLog = ActionLog.f3431a;
        LocalCarModel f9913e = getF9913e();
        actionLog.m(kotlin.jvm.internal.r.m("底层告诉设置车型成功 ", f9913e == null ? null : f9913e.getLogInfo()));
        cn.mucang.android.jiakaoyi.signal.utils.f.d(SelectCarManager.d().type);
        cn.mucang.android.jiakaoyi.signal.utils.e.b(SelectCarManager.c().type);
    }
}
