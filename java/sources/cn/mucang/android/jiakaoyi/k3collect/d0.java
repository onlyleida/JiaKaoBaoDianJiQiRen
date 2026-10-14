package cn.mucang.android.jiakaoyi.k3collect;

import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.ShuangHuangSrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.SingleLineSrcData;

/* JADX INFO: loaded from: classes3.dex */
public class d0 {
    public static LineLayoutType a(int i, boolean z) {
        LineLayoutType[] lineLayoutTypeArrValues = LineLayoutType.values();
        if (lineLayoutTypeArrValues.length > 0) {
            for (LineLayoutType lineLayoutType : lineLayoutTypeArrValues) {
                if (lineLayoutType.getLineType() == i) {
                    if (1 == i) {
                        return z ? LineLayoutType.DASH_LINE : LineLayoutType.FULL_LINE;
                    }
                    if (2 == i) {
                        return z ? LineLayoutType.SHUANG_HUANG_DASH : LineLayoutType.SHUANG_HUANG_FULL;
                    }
                    return lineLayoutType;
                }
            }
        }
        return LineLayoutType.FULL_LINE;
    }

    public static LineLayoutType b(K3SrcData k3SrcData) {
        if (k3SrcData instanceof SingleLineSrcData) {
            return a(k3SrcData.type, ((SingleLineSrcData) k3SrcData).isDashed);
        }
        return k3SrcData instanceof ShuangHuangSrcData ? a(k3SrcData.type, ((ShuangHuangSrcData) k3SrcData).isDashed) : a(k3SrcData.type, false);
    }

    public static int c(LineLayoutType lineLayoutType) {
        return lineLayoutType.getLineType();
    }
}
