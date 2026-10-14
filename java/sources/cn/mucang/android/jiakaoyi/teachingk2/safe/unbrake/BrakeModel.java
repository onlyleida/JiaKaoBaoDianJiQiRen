package cn.mucang.android.jiakaoyi.teachingk2.safe.unbrake;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.center.model.CarBrakeDesc;
import cn.mucang.android.jiakaoyi.teachingk2.safe.BrakeReason;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.collections.u;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u0000 /2\u00020\u0001:\u0001/B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010(\u001a\u00020\u0019J\f\u0010)\u001a\b\u0012\u0004\u0012\u00020*0\"J\u0010\u0010+\u001a\u00020,2\b\u0010-\u001a\u0004\u0018\u00010\u0000J\u0006\u0010.\u001a\u00020,R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u001b\"\u0004\b \u0010\u001dR\"\u0010!\u001a\n\u0012\u0004\u0012\u00020#\u0018\u00010\"X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'¨\u00060"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;", "Ljava/io/Serializable;", "()V", "extraDesc", "Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;", "getExtraDesc", "()Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;", "setExtraDesc", "(Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;)V", "extraTitle", "", "getExtraTitle", "()Ljava/lang/String;", "setExtraTitle", "(Ljava/lang/String;)V", "extraZhTitle", "getExtraZhTitle", "setExtraZhTitle", "reason", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;", "getReason", "()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;", "setReason", "(Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;)V", "showConfirmDialog", "", "getShowConfirmDialog", "()Z", "setShowConfirmDialog", "(Z)V", "teachBrakeShowDialog", "getTeachBrakeShowDialog", "setTeachBrakeShowDialog", "unBrakeList", "", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;", "getUnBrakeList", "()Ljava/util/List;", "setUnBrakeList", "(Ljava/util/List;)V", "canShowDialog", "createUnBrakeChecker", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeChecker;", "mergeBrake", "", "brakeModel", "setTeachBrake", "Companion", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class BrakeModel implements Serializable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final BrakeModel brakeNone = new BrakeModel();
    private String extraTitle;
    private String extraZhTitle;
    private boolean showConfirmDialog;
    private boolean teachBrakeShowDialog;
    private List<UnBrakeCondition> unBrakeList;
    private BrakeReason reason = BrakeReason.None;
    private CarBrakeDesc extraDesc = CarBrakeDesc.DESC_NONE;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.safe.unbrake.BrakeModel$a, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J,\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f2\b\b\u0002\u0010\u000e\u001a\u00020\u000fH\u0007R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$Companion;", "", "()V", "brakeNone", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;", "getBrakeNone$annotations", "getBrakeNone", "()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;", "createBrakeModel", "reason", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;", "list", "", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeCondition;", "needCreateUnBrake", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(o oVar) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ BrakeModel b(Companion companion, BrakeReason brakeReason, List list, boolean z, int i, Object obj) {
            if ((i & 2) != 0) {
                list = null;
            }
            if ((i & 4) != 0) {
                z = true;
            }
            return companion.a(brakeReason, list, z);
        }

        public final BrakeModel a(BrakeReason reason, List<UnBrakeCondition> list, boolean z) {
            r.e(reason, "reason");
            BrakeModel brakeModel = new BrakeModel();
            brakeModel.setReason(reason);
            if (g.d(list)) {
                brakeModel.setUnBrakeList(list);
            } else if (z) {
                UnBrakeCondition unBrakeCondition = new UnBrakeCondition();
                unBrakeCondition.setCondition(UnBrakeEnum.EngineStart);
                v vVar = v.f15822a;
                UnBrakeCondition unBrakeCondition2 = new UnBrakeCondition();
                unBrakeCondition2.setCondition(UnBrakeEnum.GearN);
                UnBrakeCondition unBrakeCondition3 = new UnBrakeCondition();
                unBrakeCondition3.setCondition(UnBrakeEnum.Handbrake);
                brakeModel.setUnBrakeList(u.m(unBrakeCondition, unBrakeCondition2, unBrakeCondition3));
            }
            brakeModel.setShowConfirmDialog(reason == BrakeReason.Handbrake);
            return brakeModel;
        }

        public final BrakeModel c() {
            return BrakeModel.brakeNone;
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f7895a;

        static {
            int[] iArr = new int[UnBrakeEnum.values().length];
            iArr[UnBrakeEnum.EngineStart.ordinal()] = 1;
            iArr[UnBrakeEnum.GearN.ordinal()] = 2;
            iArr[UnBrakeEnum.Handbrake.ordinal()] = 3;
            iArr[UnBrakeEnum.Wheel.ordinal()] = 4;
            f7895a = iArr;
        }
    }

    public static final BrakeModel createBrakeModel(BrakeReason brakeReason, List<UnBrakeCondition> list, boolean z) {
        return INSTANCE.a(brakeReason, list, z);
    }

    public static final BrakeModel getBrakeNone() {
        return INSTANCE.c();
    }

    public final boolean canShowDialog() {
        if (this.reason.getCode() < 100) {
            return false;
        }
        return this.reason != BrakeReason.TeachBrake || this.teachBrakeShowDialog;
    }

    public final List<UnBrakeChecker> createUnBrakeChecker() {
        ArrayList arrayList = new ArrayList();
        cn.mucang.android.jiakaoyi.signal.c.e getter = cn.mucang.android.jiakaoyi.signal.c.d.t();
        List<UnBrakeCondition> list = this.unBrakeList;
        if (list != null) {
            for (UnBrakeCondition unBrakeCondition : list) {
                int i = b.f7895a[unBrakeCondition.getCondition().ordinal()];
                if (i == 1) {
                    EngineChecker engineChecker = new EngineChecker();
                    r.d(getter, "getter");
                    engineChecker.f(getter);
                    v vVar = v.f15822a;
                    arrayList.add(engineChecker);
                } else if (i == 2) {
                    GearChecker gearChecker = new GearChecker();
                    r.d(getter, "getter");
                    gearChecker.f(getter);
                    v vVar2 = v.f15822a;
                    arrayList.add(gearChecker);
                } else if (i == 3) {
                    HandbrakeChecker handbrakeChecker = new HandbrakeChecker();
                    r.d(getter, "getter");
                    handbrakeChecker.f(getter);
                    v vVar3 = v.f15822a;
                    arrayList.add(handbrakeChecker);
                } else if (i == 4) {
                    Object extra = unBrakeCondition.getExtra();
                    Integer num = extra instanceof Integer ? (Integer) extra : null;
                    if (num != null) {
                        WheelChecker wheelChecker = new WheelChecker(num.intValue());
                        r.d(getter, "getter");
                        wheelChecker.f(getter);
                        v vVar4 = v.f15822a;
                        arrayList.add(wheelChecker);
                    }
                }
            }
        }
        return arrayList;
    }

    public final CarBrakeDesc getExtraDesc() {
        return this.extraDesc;
    }

    public final String getExtraTitle() {
        return this.extraTitle;
    }

    public final String getExtraZhTitle() {
        return this.extraZhTitle;
    }

    public final BrakeReason getReason() {
        return this.reason;
    }

    public final boolean getShowConfirmDialog() {
        return this.showConfirmDialog;
    }

    public final boolean getTeachBrakeShowDialog() {
        return this.teachBrakeShowDialog;
    }

    public final List<UnBrakeCondition> getUnBrakeList() {
        return this.unBrakeList;
    }

    public final void mergeBrake(BrakeModel brakeModel) {
        BrakeReason brakeReason;
        StringBuilder sb = new StringBuilder();
        sb.append("刹车理由合并：");
        sb.append(this.reason);
        sb.append(',');
        sb.append(brakeModel == null ? null : brakeModel.reason);
        f.d(sb.toString());
        if (brakeModel != null) {
            BrakeReason brakeReason2 = brakeModel.reason;
            BrakeReason brakeReason3 = BrakeReason.None;
            if (brakeReason2 == brakeReason3 || (brakeReason = this.reason) == brakeReason3) {
                return;
            }
            if (brakeReason.getLevel() < brakeModel.reason.getLevel()) {
                this.reason = brakeModel.reason;
                this.extraDesc = brakeModel.extraDesc;
                this.extraTitle = brakeModel.extraTitle;
                this.extraZhTitle = brakeModel.extraZhTitle;
                this.showConfirmDialog = brakeModel.showConfirmDialog;
            }
            ArrayList<UnBrakeCondition> arrayList = new ArrayList();
            List<UnBrakeCondition> list = this.unBrakeList;
            if (list != null) {
                arrayList.addAll(list);
            }
            ArrayList arrayList2 = new ArrayList();
            List<UnBrakeCondition> list2 = brakeModel.unBrakeList;
            if (list2 != null) {
                for (UnBrakeCondition unBrakeCondition : list2) {
                    boolean z = false;
                    for (UnBrakeCondition unBrakeCondition2 : arrayList) {
                        if (unBrakeCondition2.getCondition() == unBrakeCondition.getCondition()) {
                            if (unBrakeCondition2.getCondition() == UnBrakeEnum.Wheel) {
                                Object extra = unBrakeCondition.getExtra();
                                Objects.requireNonNull(extra, "null cannot be cast to non-null type kotlin.Int");
                                int iAbs = Math.abs(((Integer) extra).intValue());
                                Object extra2 = unBrakeCondition2.getExtra();
                                Objects.requireNonNull(extra2, "null cannot be cast to non-null type kotlin.Int");
                                if (iAbs > Math.abs(((Integer) extra2).intValue())) {
                                    unBrakeCondition2.setExtra(unBrakeCondition.getExtra());
                                }
                            }
                            z = true;
                            break;
                        }
                    }
                    if (!z) {
                        arrayList2.add(unBrakeCondition);
                    }
                }
            }
            arrayList.addAll(arrayList2);
            this.unBrakeList = arrayList;
        }
    }

    public final void setExtraDesc(CarBrakeDesc carBrakeDesc) {
        r.e(carBrakeDesc, "<set-?>");
        this.extraDesc = carBrakeDesc;
    }

    public final void setExtraTitle(String str) {
        this.extraTitle = str;
    }

    public final void setExtraZhTitle(String str) {
        this.extraZhTitle = str;
    }

    public final void setReason(BrakeReason brakeReason) {
        r.e(brakeReason, "<set-?>");
        this.reason = brakeReason;
    }

    public final void setShowConfirmDialog(boolean z) {
        this.showConfirmDialog = z;
    }

    public final void setTeachBrake() {
        this.teachBrakeShowDialog = true;
        if (g.b(this.unBrakeList)) {
            UnBrakeCondition unBrakeCondition = new UnBrakeCondition();
            unBrakeCondition.setCondition(UnBrakeEnum.EngineStart);
            v vVar = v.f15822a;
            UnBrakeCondition unBrakeCondition2 = new UnBrakeCondition();
            unBrakeCondition2.setCondition(UnBrakeEnum.GearN);
            UnBrakeCondition unBrakeCondition3 = new UnBrakeCondition();
            unBrakeCondition3.setCondition(UnBrakeEnum.Handbrake);
            this.unBrakeList = u.m(unBrakeCondition, unBrakeCondition2, unBrakeCondition3);
        }
    }

    public final void setTeachBrakeShowDialog(boolean z) {
        this.teachBrakeShowDialog = z;
    }

    public final void setUnBrakeList(List<UnBrakeCondition> list) {
        this.unBrakeList = list;
    }
}
