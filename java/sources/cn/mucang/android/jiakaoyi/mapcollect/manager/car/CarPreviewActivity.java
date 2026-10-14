package cn.mucang.android.jiakaoyi.mapcollect.manager.car;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.mapcollect.collect.car.CarSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.model.HpCarMapModel;
import cn.mucang.android.jiakaoyi.mapcollect.databinding.ActivityCarPreviewBinding;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.io.Serializable;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u0000 \u00122\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0012B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0014J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0007H\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u001d\u0010\u0006\u001a\u0004\u0018\u00010\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\t¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityCarPreviewBinding;", "()V", "layer", "Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarCollectLayer;", "model", "Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;", "getModel", "()Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;", "model$delegate", "Lkotlin/Lazy;", "getStatName", "", "init", "", "refreshMap", "it", "Companion", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CarPreviewActivity extends BaseViewBindingActivity<ActivityCarPreviewBinding> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f4994d = new a(null);
    private cn.mucang.android.jiakaoyi.mapcollect.collect.car.e b;
    private final Lazy c = kotlin.i.b(new Function0<HpCarMapModel>() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.CarPreviewActivity$model$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final HpCarMapModel invoke() {
            Serializable serializableExtra = this.this$0.getIntent().getSerializableExtra("key.extra");
            if (serializableExtra instanceof HpCarMapModel) {
                return (HpCarMapModel) serializableExtra;
            }
            return null;
        }
    });

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarPreviewActivity$Companion;", "", "()V", "KEY_EXTRA", "", "launch", "", "context", "Landroid/content/Context;", "model", "Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final void a(Context context, HpCarMapModel model) {
            r.e(context, "context");
            r.e(model, "model");
            Intent intent = new Intent(context, (Class<?>) CarPreviewActivity.class);
            intent.putExtra("key.extra", model);
            v vVar = v.f15822a;
            ActivityUtils.c(context, intent);
        }
    }

    private final HpCarMapModel j() {
        return (HpCarMapModel) this.c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(CarPreviewActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.finish();
    }

    private final void o(final HpCarMapModel hpCarMapModel) {
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.f
            @Override // java.lang.Runnable
            public final void run() {
                CarPreviewActivity.p(hpCarMapModel, this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(HpCarMapModel it, final CarPreviewActivity this$0) {
        r.e(it, "$it");
        r.e(this$0, "this$0");
        final CarPos carPos = new CarPos();
        final CarSrcData carSrcData = it.getCarSrcData();
        Pos posA = new cn.mucang.android.jiakaoyi.signal.i.b(it.getCarSrcData().mainPoint).a(it.getCarSrcData().mainPoint);
        carPos.back = posA;
        double d2 = 100;
        carPos.front = new Pos(posA).translate(it.getCarSrcData().mainPosDistance * d2 * Math.cos(Math.toRadians(it.getCarSrcData().mainPosDegree)), it.getCarSrcData().mainPosDistance * d2 * Math.sin(Math.toRadians(it.getCarSrcData().mainPosDegree)));
        carPos.set(it.getCarSrcData().generateCarData().update(carPos.back, it.getCarSrcData().mainPosDegree, it.getCarSrcData().pitch, 0.0d, null, 0.0d));
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.h
            @Override // java.lang.Runnable
            public final void run() {
                CarPreviewActivity.q(this.f5018a, carPos, carSrcData);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(CarPreviewActivity this$0, CarPos carPos, CarSrcData carSrcData) {
        r.e(this$0, "this$0");
        r.e(carPos, "$carPos");
        cn.mucang.android.jiakaoyi.mapcollect.collect.car.e eVar = this$0.b;
        if (eVar != null) {
            eVar.n(carPos);
        }
        if (carPos.back != null) {
            this$0.g().mapView.setCurrentZoom(cn.mucang.android.jiakaoyi.hpmap.view.r.a.a(180.0d, 460.0d, this$0.g().mapView) * 0.8f);
            this$0.g().mapView.setCurrentRotateDegrees((float) (((double) (-90)) - carPos.degree));
            Pos posMeanWith = carPos.center;
            if (posMeanWith == null) {
                cn.mucang.android.jiakaoyi.signal.pos.a aVar = carPos.bound;
                posMeanWith = aVar == null ? new Pos(carPos.back).meanWith(carPos.front) : aVar.f5818e;
            }
            this$0.g().mapView.i((float) posMeanWith.x, (float) posMeanWith.y);
            this$0.g().mapView.r();
            this$0.g().infoTv.setText("左前轮：" + carSrcData.leftFrontOffset + "，右前轮：" + carSrcData.rightFrontOffset + "，左后轮：" + carSrcData.leftBackOffset + "，右后轮：" + carSrcData.rightBackOffset + "，前挡风距离：" + carSrcData.frontDistance + "，后挡风距离：" + carSrcData.backDistance + "，车身高：" + carSrcData.mainPosHeight);
        }
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "车身数据预览";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        if (j() == null) {
            u.h("车身数据错误");
            finish();
            return;
        }
        g().title.titleTv.setText("车身数据预览");
        g().title.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.car.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CarPreviewActivity.k(this.f5017a, view);
            }
        });
        g().mapView.u.j();
        this.b = new cn.mucang.android.jiakaoyi.mapcollect.collect.car.e(g().mapView);
        g().mapView.u.g(this.b);
        HpCarMapModel hpCarMapModelJ = j();
        if (hpCarMapModelJ == null) {
            return;
        }
        o(hpCarMapModelJ);
    }
}
