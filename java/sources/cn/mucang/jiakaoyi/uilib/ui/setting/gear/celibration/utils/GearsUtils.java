package cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.utils;

import cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.model.GearsDataModel;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.o0;
import kotlin.jvm.internal.r;
import kotlin.l;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.setting.gear.celibration.q0.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\n\u001a\u00020\u000b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rJ\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u00052\b\u0010\u0010\u001a\u0004\u0018\u00010\u00052\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u0005X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0012"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/utils/GearsUtils;", "", "()V", "AUTO_GEARS", "", "", "MANUAL_GEARS", "TAG", "getTAG", "()Ljava/lang/String;", "calculateRange", "", "gearsList", "", "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;", "getDisplayName", "gearCategory", "gearTypename", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class GearsUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final GearsUtils f10057a = new GearsUtils();
    private static final Map<String, String> b = o0.k(l.a("空挡", "空挡"), l.a("1挡", "1挡"), l.a("2挡", "2挡"), l.a("3挡", "3挡"), l.a("4挡", "4挡"), l.a("5挡", "5挡"), l.a("6挡", "6挡"), l.a("倒挡", "倒挡"));
    private static final Map<String, String> c = o0.k(l.a("空挡", "N挡"), l.a("P挡", "P挡"), l.a("D挡", "D挡"), l.a("倒挡", "R挡"));

    private GearsUtils() {
    }

    public final void a(List<? extends GearsDataModel.GearsItemModel> gearsList) {
        r.e(gearsList, "gearsList");
        for (GearsDataModel.GearsItemModel gearsItemModel : gearsList) {
            GearsDataModel.GearsItemRangeModel gearsItemRangeModel = new GearsDataModel.GearsItemRangeModel(gearsItemModel);
            for (GearsDataModel.GearsItemModel gearsItemModel2 : gearsList) {
                if (!r.a(gearsItemModel2, gearsItemModel)) {
                    if (gearsItemModel.horiIntersect(gearsItemModel2) && !gearsItemModel.vertiIntersect(gearsItemModel2)) {
                        int i = gearsItemModel.top;
                        int i2 = gearsItemModel2.bottom;
                        if (i >= i2) {
                            gearsItemRangeModel.minTop = Math.max(i2, gearsItemRangeModel.minTop);
                        }
                        int i3 = gearsItemModel.bottom;
                        int i4 = gearsItemModel2.top;
                        if (i3 <= i4) {
                            gearsItemRangeModel.maxBottom = Math.min(i4, gearsItemRangeModel.maxBottom);
                        }
                    }
                    if (gearsItemModel.vertiIntersect(gearsItemModel2) && !gearsItemModel.horiIntersect(gearsItemModel2)) {
                        int i5 = gearsItemModel.left;
                        int i6 = gearsItemModel2.right;
                        if (i5 >= i6) {
                            gearsItemRangeModel.minLeft = Math.max(i6, gearsItemRangeModel.minLeft);
                        }
                        int i7 = gearsItemModel.right;
                        int i8 = gearsItemModel2.left;
                        if (i7 <= i8) {
                            gearsItemRangeModel.maxRight = Math.min(i8, gearsItemRangeModel.maxRight);
                        }
                    }
                }
            }
            gearsItemModel.rangeModel = gearsItemRangeModel;
        }
    }

    public final String b(String str, String str2) {
        if (str2 == null) {
            return null;
        }
        if (r.a("自动挡", str)) {
            return c.get(str2);
        }
        if (r.a("手动挡", str)) {
            return b.get(str2);
        }
        return null;
    }
}
