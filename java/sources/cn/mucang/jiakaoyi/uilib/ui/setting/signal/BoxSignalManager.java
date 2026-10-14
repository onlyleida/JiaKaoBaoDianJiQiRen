package cn.mucang.jiakaoyi.uilib.ui.setting.signal;

import cn.mucang.android.jiakaoyi.framework.consts.BoxVersion;
import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.android.jiakaoyi.signal.center.config.BoxSignal2;
import cn.mucang.android.jiakaoyi.signal.center.config.BoxSignal3;
import cn.mucang.android.jiakaoyi.signal.center.config.CarSignal;
import cn.mucang.android.jiakaoyi.signal.center.config.SerialExtension;
import cn.mucang.android.jiakaoyi.signal.communicate.AbsSignalProvider;
import cn.mucang.jiakaoyi.uilib.ui.setting.signal.model.SignalStandard2Item;
import cn.mucang.jiakaoyi.uilib.ui.setting.signal.model.SignalStandardItem;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ranges.IntRange;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.setting.signal.x, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J.\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0002J \u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0006H\u0002J\b\u0010\u0011\u001a\u00020\u0004H\u0007J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0016\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u000e\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\u0014H\u0007J\u0016\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001a0\f2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0016\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0016\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0006\u0010\t\u001a\u00020\nH\u0002J\b\u0010\u001d\u001a\u00020\u0004H\u0007¨\u0006\u001e"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/BoxSignalManager;", "", "()V", "addItem", "", "extensionId", "", "showName", "", "values", "", "list", "", "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/model/SignalStandard2Item;", "changeItem", "signalId", "type", "checkAll", "checkExtension", "getExtensionList", "", "signalModel", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "getSelectList", "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$ItemModel;", "getVersion1List", "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/model/SignalStandardItem;", "getVersion2List", "getVersion3List", "uncheckAll", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class BoxSignalManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final BoxSignalManager f10240a = new BoxSignalManager();

    private BoxSignalManager() {
    }

    private final void a(int i, String str, long j, List<SignalStandard2Item> list) {
        String str2;
        CarSignal carSignalE = cn.mucang.android.jiakaoyi.signal.center.config.a.h().e(SerialExtension.parse(i));
        boolean zE = cn.mucang.android.jiakaoyi.signal.d.j.a.e(j, i);
        Boolean boolValueOf = null;
        if (carSignalE != null) {
            String str3 = carSignalE.signalName;
            kotlin.jvm.internal.r.d(str3, "signal.signalName");
            if (StringsKt__StringsKt.G(str3, str, false, 2, null)) {
                str2 = str;
            } else {
                str2 = str + '(' + ((Object) carSignalE.signalName) + ')';
            }
            SignalStandard2Item signalStandard2Item = new SignalStandard2Item(zE, str2, true);
            signalStandard2Item.f(i);
            kotlin.v vVar = kotlin.v.f15822a;
            boolValueOf = Boolean.valueOf(list.add(signalStandard2Item));
        }
        if (boolValueOf != null) {
            boolValueOf.booleanValue();
            return;
        }
        SignalStandard2Item signalStandard2Item2 = new SignalStandard2Item(zE, str, false);
        signalStandard2Item2.f(i);
        kotlin.v vVar2 = kotlin.v.f15822a;
        list.add(signalStandard2Item2);
    }

    private final void b(int i, int i2, int i3) {
        kotlin.v vVar;
        CarSignal carSignal = CarSignal.parse(i2);
        SerialExtension serialExtension = SerialExtension.parse(i);
        CarSignal carSignalE = cn.mucang.android.jiakaoyi.signal.center.config.a.h().e(serialExtension);
        if (i3 == 1) {
            if (carSignalE == null) {
                cn.mucang.android.jiakaoyi.signal.center.config.a.h().a(serialExtension, carSignal);
            }
        } else {
            if (i3 == 2) {
                if (carSignalE != null) {
                    cn.mucang.android.jiakaoyi.signal.center.config.a.h().a(serialExtension, carSignalE);
                    return;
                }
                return;
            }
            if (carSignalE == null) {
                vVar = null;
            } else {
                cn.mucang.android.jiakaoyi.signal.center.config.a.h().a(serialExtension, carSignalE);
                vVar = kotlin.v.f15822a;
            }
            if (vVar == null) {
                cn.mucang.android.jiakaoyi.signal.center.config.a.h().a(serialExtension, carSignal);
            }
        }
    }

    public static final void c() {
        BoxVersion boxVersion = BoxVersion.parse(DeviceUtils.b());
        int i = 0;
        if (boxVersion != null && boxVersion.useBoxSignal2()) {
            BoxSignal2[] boxSignal2ArrValues = BoxSignal2.values();
            int length = boxSignal2ArrValues.length;
            while (i < length) {
                BoxSignal2 boxSignal2 = boxSignal2ArrValues[i];
                f10240a.b(boxSignal2.extensionId, boxSignal2.signalId, 1);
                i++;
            }
            return;
        }
        if (boxVersion != null && boxVersion.useBoxSignal3()) {
            BoxSignal3[] boxSignal3ArrValues = BoxSignal3.values();
            int length2 = boxSignal3ArrValues.length;
            while (i < length2) {
                BoxSignal3 boxSignal3 = boxSignal3ArrValues[i];
                f10240a.b(boxSignal3.extensionId, boxSignal3.signalId, 1);
                i++;
            }
        }
    }

    public static final void d(int i) {
        BoxVersion boxVersion = BoxVersion.parse(DeviceUtils.b());
        int i2 = 0;
        if (boxVersion != null && boxVersion.useBoxSignal2()) {
            BoxSignal2[] boxSignal2ArrValues = BoxSignal2.values();
            int length = boxSignal2ArrValues.length;
            while (i2 < length) {
                BoxSignal2 boxSignal2 = boxSignal2ArrValues[i2];
                int i3 = boxSignal2.extensionId;
                if (i3 == i) {
                    f10240a.b(i3, boxSignal2.signalId, 3);
                    return;
                }
                i2++;
            }
            return;
        }
        if (boxVersion != null && boxVersion.useBoxSignal3()) {
            BoxSignal3[] boxSignal3ArrValues = BoxSignal3.values();
            int length2 = boxSignal3ArrValues.length;
            while (i2 < length2) {
                BoxSignal3 boxSignal3 = boxSignal3ArrValues[i2];
                int i4 = boxSignal3.extensionId;
                if (i4 == i) {
                    f10240a.b(i4, boxSignal3.signalId, 3);
                    return;
                }
                i2++;
            }
        }
    }

    public static final List<Object> e(cn.mucang.android.jiakaoyi.signal.c.e signalModel) {
        kotlin.jvm.internal.r.e(signalModel, "signalModel");
        long j = signalModel.d().A;
        BoxVersion boxVersion = BoxVersion.parse(DeviceUtils.b());
        boolean z = false;
        if (boxVersion != null && boxVersion.useBoxSignal2()) {
            return f10240a.h(j);
        }
        if (boxVersion != null && boxVersion.useBoxSignal3()) {
            z = true;
        }
        return z ? f10240a.i(j) : f10240a.g(j);
    }

    public static final List<ExtensionSelectActivity.c> f() {
        ArrayList arrayList = new ArrayList();
        BoxVersion boxVersion = BoxVersion.parse(DeviceUtils.b());
        int i = 0;
        if (boxVersion != null && boxVersion.useBoxSignal2()) {
            BoxSignal2[] boxSignal2ArrValues = BoxSignal2.values();
            int length = boxSignal2ArrValues.length;
            while (i < length) {
                BoxSignal2 boxSignal2 = boxSignal2ArrValues[i];
                String str = boxSignal2.showName;
                kotlin.jvm.internal.r.d(str, "it.showName");
                arrayList.add(new ExtensionSelectActivity.c(str, boxSignal2.extensionId));
                i++;
            }
        } else {
            if (boxVersion != null && boxVersion.useBoxSignal3()) {
                BoxSignal3[] boxSignal3ArrValues = BoxSignal3.values();
                int length2 = boxSignal3ArrValues.length;
                while (i < length2) {
                    BoxSignal3 boxSignal3 = boxSignal3ArrValues[i];
                    String str2 = boxSignal3.showName;
                    kotlin.jvm.internal.r.d(str2, "it.showName");
                    arrayList.add(new ExtensionSelectActivity.c(str2, boxSignal3.extensionId));
                    i++;
                }
            } else {
                SerialExtension[] serialExtensionArrValues = SerialExtension.values();
                int length3 = serialExtensionArrValues.length;
                while (i < length3) {
                    SerialExtension serialExtension = serialExtensionArrValues[i];
                    String str3 = serialExtension.extensionName;
                    kotlin.jvm.internal.r.d(str3, "it.extensionName");
                    arrayList.add(new ExtensionSelectActivity.c(str3, serialExtension.id));
                    i++;
                }
            }
        }
        return arrayList;
    }

    private final List<SignalStandardItem> g(long j) {
        Boolean boolValueOf;
        ArrayList arrayList = new ArrayList();
        SerialExtension[] serialExtensionArrValues = SerialExtension.values();
        AbsSignalProvider absSignalProvider = (AbsSignalProvider) DataProviderRegister.b(DataProviderRegister.f3433a, AbsSignalProvider.class, null, 2, null);
        if (!(absSignalProvider != null && absSignalProvider.useNonOldProtocol())) {
            serialExtensionArrValues = (SerialExtension[]) kotlin.collections.k.W(serialExtensionArrValues, new IntRange(0, 19));
        }
        for (SerialExtension serialExtension : serialExtensionArrValues) {
            boolean zE = cn.mucang.android.jiakaoyi.signal.d.j.a.e(j, serialExtension.id);
            CarSignal carSignalE = cn.mucang.android.jiakaoyi.signal.center.config.a.h().e(serialExtension);
            if (carSignalE == null) {
                boolValueOf = null;
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append((Object) serialExtension.extensionName);
                sb.append('(');
                sb.append((Object) carSignalE.signalName);
                sb.append(')');
                boolValueOf = Boolean.valueOf(arrayList.add(new SignalStandardItem(zE, sb.toString())));
            }
            if (boolValueOf == null) {
                String str = serialExtension.extensionName;
                kotlin.jvm.internal.r.d(str, "it.extensionName");
                arrayList.add(new SignalStandardItem(zE, str));
            } else {
                boolValueOf.booleanValue();
            }
        }
        return arrayList;
    }

    private final List<SignalStandard2Item> h(long j) {
        ArrayList arrayList = new ArrayList();
        for (BoxSignal2 boxSignal2 : BoxSignal2.values()) {
            BoxSignalManager boxSignalManager = f10240a;
            int i = boxSignal2.extensionId;
            String str = boxSignal2.showName;
            kotlin.jvm.internal.r.d(str, "it.showName");
            boxSignalManager.a(i, str, j, arrayList);
        }
        return arrayList;
    }

    private final List<SignalStandard2Item> i(long j) {
        ArrayList arrayList = new ArrayList();
        for (BoxSignal3 boxSignal3 : BoxSignal3.values()) {
            BoxSignalManager boxSignalManager = f10240a;
            int i = boxSignal3.extensionId;
            String str = boxSignal3.showName;
            kotlin.jvm.internal.r.d(str, "it.showName");
            boxSignalManager.a(i, str, j, arrayList);
        }
        return arrayList;
    }

    public static final void j() {
        BoxVersion boxVersion = BoxVersion.parse(DeviceUtils.b());
        int i = 0;
        if (boxVersion != null && boxVersion.useBoxSignal2()) {
            BoxSignal2[] boxSignal2ArrValues = BoxSignal2.values();
            int length = boxSignal2ArrValues.length;
            while (i < length) {
                BoxSignal2 boxSignal2 = boxSignal2ArrValues[i];
                f10240a.b(boxSignal2.extensionId, boxSignal2.signalId, 2);
                i++;
            }
            return;
        }
        if (boxVersion != null && boxVersion.useBoxSignal3()) {
            BoxSignal3[] boxSignal3ArrValues = BoxSignal3.values();
            int length2 = boxSignal3ArrValues.length;
            while (i < length2) {
                BoxSignal3 boxSignal3 = boxSignal3ArrValues[i];
                f10240a.b(boxSignal3.extensionId, boxSignal3.signalId, 2);
                i++;
            }
        }
    }
}
