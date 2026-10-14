package cn.mucang.android.jiakaoyi.k3collect.helper;

import cn.mucang.android.jiakaoyi.hpmap.d.a;
import cn.mucang.android.jiakaoyi.k3collect.k0.o;
import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.ShuangHuangSrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.SingleLineSrcData;
import cn.mucang.android.jiakaoyi.signal.i.b;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.s;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.f0.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ\u001e\u0010\u000b\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\u000e2\u0006\u0010\t\u001a\u00020\nH\u0002JL\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\u00102\u0006\u0010\u0014\u001a\u00020\f2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00130\u00102\u0006\u0010\u0016\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0007\u001a\u00020\u0011H\u0002J&\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\nJ(\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u00102\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u001b2\u0006\u0010\t\u001a\u00020\n¨\u0006\u001c"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/helper/CollectCurveEditHelper;", "", "()V", "deleteSelectPos", "", "converter", "Lcn/mucang/android/jiakaoyi/signal/proj/DefaultConverter;", "srcData", "Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;", "selectPos", "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;", "querySelectPosIndex", "", "posList", "", "splitCreateLines", "", "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;", "selectCurve", "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;", "selectPosIndex", "otherCurve", "otherCurveSelectIndex", "otherCurveSelectFooter", "splitSHCurveByPos", "targetPos", "splitSingleCurveByPos", "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CollectCurveEditHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CollectCurveEditHelper f3938a = new CollectCurveEditHelper();

    private CollectCurveEditHelper() {
    }

    private final int b(List<? extends Pos> list, Pos pos) {
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                s.t();
                throw null;
            }
            Pos pos2 = (Pos) obj;
            if (Math.abs(pos.x - pos2.x) < 1.0E-9d && Math.abs(pos.y - pos2.y) < 1.0E-9d) {
                return i;
            }
            i = i2;
        }
        return -1;
    }

    private final List<ShuangHuangSrcData> c(List<Gps> list, int i, List<Gps> list2, int i2, Gps gps, ShuangHuangSrcData shuangHuangSrcData) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(list.subList(0, i + 1));
        ArrayList arrayList3 = new ArrayList();
        arrayList3.addAll(list.subList(i, list.size()));
        ArrayList arrayList4 = new ArrayList();
        int i3 = i2 + 1;
        arrayList4.addAll(list2.subList(0, i3));
        arrayList4.add(gps);
        ArrayList arrayList5 = new ArrayList();
        arrayList5.add(gps);
        arrayList5.addAll(list2.subList(i3, list2.size()));
        K3SrcData k3SrcDataCopy = shuangHuangSrcData.copy();
        Objects.requireNonNull(k3SrcDataCopy, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.k3collect.src.impl.ShuangHuangSrcData");
        ShuangHuangSrcData shuangHuangSrcData2 = (ShuangHuangSrcData) k3SrcDataCopy;
        shuangHuangSrcData2.id = null;
        shuangHuangSrcData2.curveList1 = arrayList2;
        shuangHuangSrcData2.line1Start = (Gps) arrayList2.get(0);
        shuangHuangSrcData2.line1End = (Gps) arrayList2.get(arrayList2.size() - 1);
        shuangHuangSrcData2.curveList2 = arrayList4;
        shuangHuangSrcData2.line2Start = (Gps) arrayList4.get(0);
        shuangHuangSrcData2.line2End = (Gps) arrayList4.get(arrayList4.size() - 1);
        shuangHuangSrcData2.isCurve = shuangHuangSrcData2.curveList1.size() > 2 || shuangHuangSrcData2.curveList2.size() > 2;
        K3SrcData k3SrcDataCopy2 = shuangHuangSrcData.copy();
        Objects.requireNonNull(k3SrcDataCopy2, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.k3collect.src.impl.ShuangHuangSrcData");
        ShuangHuangSrcData shuangHuangSrcData3 = (ShuangHuangSrcData) k3SrcDataCopy2;
        shuangHuangSrcData3.id = null;
        shuangHuangSrcData3.curveList1 = arrayList3;
        shuangHuangSrcData3.line1Start = (Gps) arrayList3.get(0);
        shuangHuangSrcData3.line1End = (Gps) arrayList3.get(arrayList3.size() - 1);
        shuangHuangSrcData3.curveList2 = arrayList5;
        shuangHuangSrcData3.line2Start = (Gps) arrayList5.get(0);
        shuangHuangSrcData3.line2End = (Gps) arrayList5.get(arrayList5.size() - 1);
        shuangHuangSrcData3.isCurve = shuangHuangSrcData3.curveList1.size() > 2 || shuangHuangSrcData3.curveList2.size() > 2;
        arrayList.add(shuangHuangSrcData2);
        arrayList.add(shuangHuangSrcData3);
        return arrayList;
    }

    public final boolean a(b converter, K3SrcData srcData, Pos selectPos) {
        r.e(converter, "converter");
        r.e(srcData, "srcData");
        r.e(selectPos, "selectPos");
        if (srcData instanceof SingleLineSrcData) {
            SingleLineSrcData singleLineSrcData = (SingleLineSrcData) srcData;
            List<Pos> posList = o.f(converter, singleLineSrcData.lineList);
            r.d(posList, "posList");
            int iB = b(posList, selectPos);
            if (singleLineSrcData.lineList.size() > 2 && iB >= 0 && iB <= singleLineSrcData.lineList.size()) {
                singleLineSrcData.lineList.remove(iB);
                singleLineSrcData.isCurve = singleLineSrcData.lineList.size() > 2;
            }
            return true;
        }
        if (srcData instanceof ShuangHuangSrcData) {
            ShuangHuangSrcData shuangHuangSrcData = (ShuangHuangSrcData) srcData;
            List<Pos> posList1 = o.f(converter, shuangHuangSrcData.curveList1);
            r.d(posList1, "posList1");
            int iB2 = b(posList1, selectPos);
            if (shuangHuangSrcData.curveList1.size() > 2 && iB2 >= 0 && iB2 <= shuangHuangSrcData.curveList1.size()) {
                shuangHuangSrcData.curveList1.remove(iB2);
                shuangHuangSrcData.isCurve = shuangHuangSrcData.curveList1.size() > 2 || shuangHuangSrcData.curveList2.size() > 2;
                return true;
            }
            List<Pos> posList2 = o.f(converter, shuangHuangSrcData.curveList2);
            r.d(posList2, "posList2");
            int iB3 = b(posList2, selectPos);
            if (shuangHuangSrcData.curveList2.size() > 2 && iB3 >= 0 && iB3 < shuangHuangSrcData.curveList2.size()) {
                shuangHuangSrcData.curveList2.remove(iB3);
                shuangHuangSrcData.isCurve = shuangHuangSrcData.curveList1.size() > 2 || shuangHuangSrcData.curveList2.size() > 2;
                return true;
            }
        }
        return false;
    }

    public final List<ShuangHuangSrcData> d(b converter, ShuangHuangSrcData srcData, Pos targetPos) {
        Pos posN;
        int i;
        Pos posN2;
        int i2;
        r.e(converter, "converter");
        r.e(srcData, "srcData");
        r.e(targetPos, "targetPos");
        List<Gps> curveList1 = srcData.curveList1;
        List<Gps> curveList2 = srcData.curveList2;
        int i3 = 1;
        if (curveList1.get(0).distanceTo(curveList2.get(0)) > curveList1.get(0).distanceTo(curveList2.get(curveList2.size() - 1))) {
            r.d(curveList2, "curveList2");
            curveList2 = CollectionsKt___CollectionsKt.A0(curveList2);
            srcData.curveList2 = curveList2;
        }
        List<Gps> curveList3 = curveList2;
        List<Pos> posList1 = o.f(converter, curveList1);
        List<Pos> posList2 = o.f(converter, curveList3);
        r.d(posList1, "posList1");
        int iB = b(posList1, targetPos);
        r.d(posList2, "posList2");
        int iB2 = b(posList2, targetPos);
        if (iB > 0) {
            if (iB <= 0 || iB >= posList1.size() - 1) {
                return null;
            }
            int size = posList2.size();
            if (1 >= size) {
                posN2 = null;
                i2 = -1;
                break;
            }
            while (true) {
                int i4 = i3 + 1;
                i2 = i3 - 1;
                Pos pos = posList2.get(i2);
                Pos pos2 = posList2.get(i3);
                posN2 = a.n(targetPos, pos, pos2);
                if (a.y(posN2, pos, pos2)) {
                    break;
                }
                if (i4 >= size) {
                    posN2 = null;
                    i2 = -1;
                    break;
                }
                i3 = i4;
            }
            if (posN2 == null || i2 <= 0) {
                return null;
            }
            r.d(curveList1, "curveList1");
            r.d(curveList3, "curveList2");
            Gps gpsB = converter.b(posN2);
            r.d(gpsB, "converter.gaussToGps(otherCurveSelectFooter)");
            return c(curveList1, iB, curveList3, i2, gpsB, srcData);
        }
        if (iB2 <= 0 || iB2 <= 0 || iB2 >= posList2.size() - 1) {
            return null;
        }
        int size2 = posList1.size();
        if (1 >= size2) {
            posN = null;
            i = -1;
            break;
        }
        while (true) {
            int i5 = i3 + 1;
            int i6 = i3 - 1;
            Pos pos3 = posList1.get(i6);
            Pos pos4 = posList1.get(i3);
            posN = a.n(targetPos, pos3, pos4);
            if (a.y(posN, pos3, pos4)) {
                i = i6;
                break;
            }
            if (i5 >= size2) {
                posN = null;
                i = -1;
                break;
            }
            i3 = i5;
        }
        if (posN == null || i <= 0) {
            return null;
        }
        r.d(curveList3, "curveList2");
        r.d(curveList1, "curveList1");
        Gps gpsB2 = converter.b(posN);
        r.d(gpsB2, "converter.gaussToGps(otherCurveSelectFooter)");
        return c(curveList3, iB2, curveList1, i, gpsB2, srcData);
    }

    public final List<SingleLineSrcData> e(b bVar, SingleLineSrcData srcData, Pos selectPos) {
        r.e(srcData, "srcData");
        r.e(selectPos, "selectPos");
        List<Pos> posList = o.f(bVar, srcData.lineList);
        r.d(posList, "posList");
        int iB = b(posList, selectPos);
        if (srcData.lineList.size() <= 2 || iB <= 0 || iB >= srcData.lineList.size() - 1) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        List<Gps> listSubList = srcData.lineList.subList(0, iB + 1);
        K3SrcData k3SrcDataCopy = srcData.copy();
        Objects.requireNonNull(k3SrcDataCopy, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.k3collect.src.impl.SingleLineSrcData");
        SingleLineSrcData singleLineSrcData = (SingleLineSrcData) k3SrcDataCopy;
        singleLineSrcData.id = null;
        singleLineSrcData.lineList = listSubList;
        singleLineSrcData.isCurve = listSubList.size() > 2;
        singleLineSrcData.start = listSubList.get(0);
        singleLineSrcData.end = listSubList.get(listSubList.size() - 1);
        List<Gps> list = srcData.lineList;
        List<Gps> listSubList2 = list.subList(iB, list.size());
        K3SrcData k3SrcDataCopy2 = srcData.copy();
        Objects.requireNonNull(k3SrcDataCopy2, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.k3collect.src.impl.SingleLineSrcData");
        SingleLineSrcData singleLineSrcData2 = (SingleLineSrcData) k3SrcDataCopy2;
        singleLineSrcData2.id = null;
        singleLineSrcData2.lineList = listSubList2;
        singleLineSrcData2.isCurve = listSubList2.size() > 2;
        singleLineSrcData2.start = listSubList2.get(0);
        singleLineSrcData2.end = listSubList2.get(listSubList2.size() - 1);
        arrayList.add(singleLineSrcData);
        arrayList.add(singleLineSrcData2);
        return arrayList;
    }
}
