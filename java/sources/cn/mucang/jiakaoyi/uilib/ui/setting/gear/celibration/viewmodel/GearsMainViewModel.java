package cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.viewmodel;

import androidx.lifecycle.j0;
import androidx.lifecycle.z;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.GearCalibrationManager;
import cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.GearConnectStatusListener;
import cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.GearLocationListener;
import cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.MarkGearsCmdListener;
import cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.model.GearsDataModel;
import cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.utils.GearsUtils;
import cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.utils.GuideMarkPlayer;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mobile.auth.BuildConfig;
import com.tencent.open.SocialConstants;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.r0.j, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007\b\u0016¢\u0006\u0002\u0010\u0002J\u0006\u0010*\u001a\u00020+J\u0006\u0010,\u001a\u00020+J\u0006\u0010-\u001a\u00020+J\u0018\u0010.\u001a\u00020+2\u0006\u0010/\u001a\u00020\u00042\u0006\u00100\u001a\u00020\u0004H\u0002J\u000e\u00101\u001a\u00020+2\u0006\u00102\u001a\u00020\u001aJ\u001a\u00103\u001a\u00020+2\b\u00104\u001a\u0004\u0018\u0001052\b\u00106\u001a\u0004\u0018\u00010\u0004J\u0012\u00107\u001a\u00020+2\b\u00108\u001a\u0004\u0018\u000109H\u0002J\b\u0010:\u001a\u00020+H\u0014J\n\u0010;\u001a\u0004\u0018\u000109H\u0003J\u0010\u0010<\u001a\u00020+2\b\u0010=\u001a\u0004\u0018\u00010\u0004J\u0006\u0010>\u001a\u00020+J\u0006\u0010?\u001a\u00020+R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\b¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0019\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\b¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\nR%\u0010\u000e\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f0\b¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\nR\u0011\u0010\u0012\u001a\u00020\u0013¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0019\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\b¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\nR\u001f\u0010\u0018\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u00190\b¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\nR'\u0010\u001c\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0006\u0012\u0004\u0018\u00010\f\u0012\u0006\u0012\u0004\u0018\u00010\f0\u001d0\b¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\nR\u001a\u0010\u001f\u001a\u00020 X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010!\"\u0004\b\"\u0010#R\u0019\u0010$\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\b¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\nR\u0011\u0010&\u001a\u00020'¢\u0006\b\n\u0000\u001a\u0004\b(\u0010)¨\u0006@"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/viewmodel/GearsMainViewModel;", "Landroidx/lifecycle/ViewModel;", "()V", "TAG", "", "getTAG", "()Ljava/lang/String;", "currentGearLocBelongData", "Landroidx/lifecycle/MutableLiveData;", "getCurrentGearLocBelongData", "()Landroidx/lifecycle/MutableLiveData;", "equipmentCoonStatusData", "", "getEquipmentCoonStatusData", "equipmentParameterData", "", "", "getEquipmentParameterData", "gearManager", "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationManager;", "getGearManager", "()Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationManager;", "gearsCategoryData", "getGearsCategoryData", "gearsDetailData", "", "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;", "getGearsDetailData", "gearsHandlerData", "Lkotlin/Pair;", "getGearsHandlerData", "isMarking", "", "()Z", "setMarking", "(Z)V", "selectedGearData", "getSelectedGearData", "voicePlayer", "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/utils/GuideMarkPlayer;", "getVoicePlayer", "()Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/utils/GuideMarkPlayer;", "loadEquipmentConnectStatus", "", "loadEquipmentParameter", "loadGearsData", BuildConfig.FLAVOR_type, "tag", SocialConstants.PARAM_SEND_MSG, "modifySingleGear", "item", "notifyGearHandleBelongChanged", "gear", "Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;", "gearCategory", "notifyGearsData", "data", "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel;", "onCleared", "requestData", "selectGearItem", "selectGear", "startMark", "toggleGearsCategory", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class GearsMainViewModel extends j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f10071a = "GearsMainViewModel";
    private final GuideMarkPlayer b = new GuideMarkPlayer();
    private final GearCalibrationManager c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final z<Pair<Integer, Integer>> f10072d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final z<String> f10073e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final z<Integer> f10074f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final z<List<GearsDataModel.GearsItemModel>> f10075g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final z<Map<String, Object>> f10076h;
    private final z<String> i;
    private final z<String> j;
    private boolean k;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.r0.j$a */
    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\t"}, d2 = {"cn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/viewmodel/GearsMainViewModel$1", "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearLocationListener;", "onCurrentGearChange", "", "gear", "Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;", "onGearLocationChange", "loc", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements GearLocationListener {
        a() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.GearLocationListener
        public void a(String str) {
            GearsMainViewModel.this.h().l(new Pair<>(Integer.valueOf(JSON.parseObject(str).getIntValue(TtmlNode.LEFT)), Integer.valueOf(JSON.parseObject(str).getIntValue("top"))));
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.GearLocationListener
        public void b(Gear gear) {
            r.e(gear, "gear");
            GearsMainViewModel gearsMainViewModel = GearsMainViewModel.this;
            gearsMainViewModel.A(gear, gearsMainViewModel.f().e());
        }
    }

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.r0.j$b */
    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016¨\u0006\u0006"}, d2 = {"cn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/viewmodel/GearsMainViewModel$2", "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearConnectStatusListener;", "onCollectStatusChanged", "", "data", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements GearConnectStatusListener {
        b() {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.GearConnectStatusListener
        public void a(String str) {
            GearsMainViewModel gearsMainViewModel = GearsMainViewModel.this;
            gearsMainViewModel.x(gearsMainViewModel.getF10071a(), r.m("串口状态回调:", str));
            GearsMainViewModel.this.c().l(Integer.valueOf(JSON.parseObject(str).getIntValue("connect_status")));
        }
    }

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.r0.j$c */
    @Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, d2 = {"cn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/viewmodel/GearsMainViewModel$startMark$1$1$1", "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/MarkGearsCmdListener;", "onGearsMarkComplete", "", "onGearsPrepareMark", "gearItemType", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c implements MarkGearsCmdListener {
        final /* synthetic */ String b;

        c(String str) {
            this.b = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void f(GearsMainViewModel this$0) {
            r.e(this$0, "this$0");
            this$0.getB().f();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void g(GearsMainViewModel this$0) {
            r.e(this$0, "this$0");
            this$0.v();
            this$0.x(this$0.getF10071a(), "标定完成2S后拉取 新挡位数据");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void h(GearsMainViewModel this$0, String gearsCategory, String gearItemType) {
            r.e(this$0, "this$0");
            r.e(gearsCategory, "$gearsCategory");
            r.e(gearItemType, "$gearItemType");
            this$0.getB().e(gearsCategory, gearItemType);
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.MarkGearsCmdListener
        public void a() {
            GearCalibrationManager c = GearsMainViewModel.this.getC();
            String strE = GearsMainViewModel.this.f().e();
            if (strE == null) {
                strE = "手动挡";
            }
            c.H(strE);
            GearsMainViewModel.this.F(false);
            GearsMainViewModel gearsMainViewModel = GearsMainViewModel.this;
            gearsMainViewModel.x(gearsMainViewModel.getF10071a(), "标定完成");
            final GearsMainViewModel gearsMainViewModel2 = GearsMainViewModel.this;
            u.c(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.r0.g
                @Override // java.lang.Runnable
                public final void run() {
                    GearsMainViewModel.c.f(gearsMainViewModel2);
                }
            });
            final GearsMainViewModel gearsMainViewModel3 = GearsMainViewModel.this;
            u.d(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.r0.i
                @Override // java.lang.Runnable
                public final void run() {
                    GearsMainViewModel.c.g(gearsMainViewModel3);
                }
            }, SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.MarkGearsCmdListener
        public void b(final String gearItemType) {
            r.e(gearItemType, "gearItemType");
            GearsMainViewModel gearsMainViewModel = GearsMainViewModel.this;
            gearsMainViewModel.x(gearsMainViewModel.getF10071a(), r.m("准备标定 ", gearItemType));
            final GearsMainViewModel gearsMainViewModel2 = GearsMainViewModel.this;
            final String str = this.b;
            u.c(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.r0.h
                @Override // java.lang.Runnable
                public final void run() {
                    GearsMainViewModel.c.h(gearsMainViewModel2, str, gearItemType);
                }
            });
        }
    }

    public GearsMainViewModel() {
        GearCalibrationManager gearCalibrationManager = new GearCalibrationManager();
        this.c = gearCalibrationManager;
        this.f10072d = new z<>();
        z<String> zVar = new z<>();
        this.f10073e = zVar;
        this.f10074f = new z<>();
        z<List<GearsDataModel.GearsItemModel>> zVar2 = new z<>();
        this.f10075g = zVar2;
        this.f10076h = new z<>();
        this.i = new z<>();
        this.j = new z<>();
        gearCalibrationManager.m();
        gearCalibrationManager.D(new a());
        gearCalibrationManager.C(new b());
        zVar2.l(null);
        zVar.l("手动挡");
    }

    private final void B(GearsDataModel gearsDataModel) {
        if (gearsDataModel == null) {
            return;
        }
        this.f10073e.l(gearsDataModel.gearCategory);
        GearsUtils gearsUtils = GearsUtils.f10057a;
        List<GearsDataModel.GearsItemModel> list = gearsDataModel.gearsList;
        r.d(list, "data.gearsList");
        gearsUtils.a(list);
        this.f10075g.l(gearsDataModel.gearsList);
        this.i.l(null);
    }

    private final GearsDataModel C() {
        GearsDataModel gearsDataModel = (GearsDataModel) JSON.parseObject(this.c.w(), GearsDataModel.class);
        if (!r.a("自动挡", gearsDataModel.gearCategory) && !r.a("手动挡", gearsDataModel.gearCategory)) {
            x(this.f10071a, r.m("未识别的挡位类型:", gearsDataModel.gearCategory));
            return null;
        }
        List<GearsDataModel.GearsItemModel> list = gearsDataModel.gearsList;
        r.d(list, "temp.gearsList");
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            String strB = GearsUtils.f10057a.b(gearsDataModel.gearCategory, ((GearsDataModel.GearsItemModel) obj).type);
            if (!(strB == null || strB.length() == 0)) {
                arrayList.add(obj);
            }
        }
        gearsDataModel.gearsList = arrayList;
        return gearsDataModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(GearsMainViewModel this$0) {
        r.e(this$0, "this$0");
        this$0.v();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H(GearsMainViewModel this$0, String gearsCategory) {
        Object objM139constructorimpl;
        r.e(this$0, "this$0");
        r.e(gearsCategory, "$gearsCategory");
        try {
            Result.Companion companion = Result.INSTANCE;
            this$0.getC().E(gearsCategory, this$0.new c(gearsCategory));
            this$0.x(this$0.getF10071a(), "开始标定");
            objM139constructorimpl = Result.m139constructorimpl(v.f15822a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(k.a(th));
        }
        Throwable thM142exceptionOrNullimpl = Result.m142exceptionOrNullimpl(objM139constructorimpl);
        if (thM142exceptionOrNullimpl != null) {
            this$0.x(this$0.getF10071a(), String.valueOf(thM142exceptionOrNullimpl.getMessage()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(GearsMainViewModel this$0) {
        Object objM139constructorimpl;
        r.e(this$0, "this$0");
        try {
            Result.Companion companion = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(Integer.valueOf(JSON.parseObject(this$0.getC().h()).getIntValue("connect_status")));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(k.a(th));
        }
        if (Result.m146isSuccessimpl(objM139constructorimpl)) {
            int iIntValue = ((Number) objM139constructorimpl).intValue();
            this$0.x(this$0.getF10071a(), r.m("load 串口状态 suc :", Integer.valueOf(iIntValue)));
            this$0.c().l(Integer.valueOf(iIntValue));
        }
        Throwable thM142exceptionOrNullimpl = Result.m142exceptionOrNullimpl(objM139constructorimpl);
        if (thM142exceptionOrNullimpl != null) {
            this$0.x(this$0.getF10071a(), String.valueOf(thM142exceptionOrNullimpl.getMessage()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(GearsMainViewModel this$0) {
        Object objM139constructorimpl;
        r.e(this$0, "this$0");
        try {
            Result.Companion companion = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(this$0.getC().g());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(k.a(th));
        }
        if (Result.m146isSuccessimpl(objM139constructorimpl)) {
            String str = (String) objM139constructorimpl;
            if (str == null || str.length() == 0) {
                this$0.x(this$0.getF10071a(), "设备信息为空");
                return;
            }
            this$0.x(this$0.getF10071a(), "load 设备参数 suc");
            z<Map<String, Object>> zVarD = this$0.d();
            JSONObject object = JSON.parseObject(str);
            if (!(object instanceof Map)) {
                object = null;
            }
            zVarD.l(object);
        }
        Throwable thM142exceptionOrNullimpl = Result.m142exceptionOrNullimpl(objM139constructorimpl);
        if (thM142exceptionOrNullimpl != null) {
            this$0.x(this$0.getF10071a(), String.valueOf(thM142exceptionOrNullimpl.getMessage()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(GearsMainViewModel this$0) {
        Object objM139constructorimpl;
        r.e(this$0, "this$0");
        try {
            Result.Companion companion = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(this$0.C());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(k.a(th));
        }
        if (Result.m146isSuccessimpl(objM139constructorimpl)) {
            GearsDataModel gearsDataModel = (GearsDataModel) objM139constructorimpl;
            f.o(r.m("硬件挡位学习挡位数据：", JSON.toJSONString(gearsDataModel)));
            this$0.B(gearsDataModel);
        }
        Throwable thM142exceptionOrNullimpl = Result.m142exceptionOrNullimpl(objM139constructorimpl);
        if (thM142exceptionOrNullimpl != null) {
            this$0.x(this$0.getF10071a(), String.valueOf(thM142exceptionOrNullimpl.getMessage()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x(String str, String str2) {
        f.o(str + ": " + str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(GearsMainViewModel this$0, GearsDataModel.GearsItemModel item) {
        Object objM139constructorimpl;
        r.e(this$0, "this$0");
        r.e(item, "$item");
        try {
            Result.Companion companion = Result.INSTANCE;
            GearCalibrationManager c2 = this$0.getC();
            String str = item.type;
            r.d(str, "item.type");
            String jSONString = JSON.toJSONString(item);
            r.d(jSONString, "toJSONString(item)");
            c2.x(str, jSONString);
            objM139constructorimpl = Result.m139constructorimpl(v.f15822a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(k.a(th));
        }
        if (Result.m146isSuccessimpl(objM139constructorimpl)) {
            this$0.x(this$0.getF10071a(), r.m("修改档位数据 suc :", JSON.toJSONString(item)));
            this$0.g().l(this$0.g().e());
        }
        Throwable thM142exceptionOrNullimpl = Result.m142exceptionOrNullimpl(objM139constructorimpl);
        if (thM142exceptionOrNullimpl != null) {
            this$0.x(this$0.getF10071a(), String.valueOf(thM142exceptionOrNullimpl.getMessage()));
        }
    }

    public final void A(Gear gear, String str) {
        this.j.l(GearsUtils.f10057a.b(str, gear == null ? null : gear.gearName));
    }

    public final void D(String str) {
        if (!(str == null || str.length() == 0)) {
            this.i.l(str);
        } else {
            u.d(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.r0.b
                @Override // java.lang.Runnable
                public final void run() {
                    GearsMainViewModel.E(this.f10063a);
                }
            }, SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
            this.i.l(null);
        }
    }

    public final void F(boolean z) {
        this.k = z;
    }

    public final void G() {
        if (this.k) {
            x(this.f10071a, "已经在标定了");
            return;
        }
        final String strE = this.f10073e.e();
        if (strE == null) {
            strE = "手动挡";
        }
        this.f10075g.l(null);
        this.i.l(null);
        A(null, null);
        MucangConfig.f(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.r0.d
            @Override // java.lang.Runnable
            public final void run() {
                GearsMainViewModel.H(this.f10065a, strE);
            }
        });
        this.b.g();
        this.k = true;
    }

    public final void I() {
        if (this.k) {
            u.h("标定过程中不允许切换档位类型！");
            x(this.f10071a, "已经在标定了，不允许切换档位类型");
            return;
        }
        if (r.a("自动挡", this.f10073e.e())) {
            this.f10073e.l("手动挡");
        } else {
            this.f10073e.l("自动挡");
        }
        this.f10075g.l(null);
        this.i.l(null);
    }

    public final z<String> b() {
        return this.j;
    }

    public final z<Integer> c() {
        return this.f10074f;
    }

    public final z<Map<String, Object>> d() {
        return this.f10076h;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final GearCalibrationManager getC() {
        return this.c;
    }

    public final z<String> f() {
        return this.f10073e;
    }

    public final z<List<GearsDataModel.GearsItemModel>> g() {
        return this.f10075g;
    }

    public final z<Pair<Integer, Integer>> h() {
        return this.f10072d;
    }

    public final z<String> i() {
        return this.i;
    }

    /* JADX INFO: renamed from: j, reason: from getter */
    public final String getF10071a() {
        return this.f10071a;
    }

    /* JADX INFO: renamed from: k, reason: from getter */
    public final GuideMarkPlayer getB() {
        return this.b;
    }

    @Override // androidx.lifecycle.j0
    protected void onCleared() {
        super.onCleared();
        GearCalibrationManager gearCalibrationManager = this.c;
        String strE = this.f10073e.e();
        if (strE == null) {
            strE = "手动挡";
        }
        gearCalibrationManager.H(strE);
        this.c.i(false);
        this.c.B();
        this.b.a();
        x(this.f10071a, "销毁");
    }

    public final void r() {
        MucangConfig.f(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.r0.f
            @Override // java.lang.Runnable
            public final void run() {
                GearsMainViewModel.s(this.f10067a);
            }
        });
    }

    public final void t() {
        if (!this.k) {
            MucangConfig.f(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.r0.a
                @Override // java.lang.Runnable
                public final void run() {
                    GearsMainViewModel.u(this.f10062a);
                }
            });
        } else {
            u.h("请先完成本次标定！再查看参数");
            x(this.f10071a, "已经在标定了，不允许查看参数");
        }
    }

    public final void v() {
        if (!this.k) {
            MucangConfig.f(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.r0.c
                @Override // java.lang.Runnable
                public final void run() {
                    GearsMainViewModel.w(this.f10064a);
                }
            });
        } else {
            u.h("请先完成本次标定，再获取档位数据");
            x(this.f10071a, "已经在标定了，不能获取档位数据");
        }
    }

    public final void y(final GearsDataModel.GearsItemModel item) {
        r.e(item, "item");
        MucangConfig.f(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.r0.e
            @Override // java.lang.Runnable
            public final void run() {
                GearsMainViewModel.z(this.f10066a, item);
            }
        });
    }
}
