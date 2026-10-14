package cn.mucang.android.jiakaoyi.teachingk2.dksingle;

import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public enum SingleType {
    All(k0.a(R.string.teakingk2_normal_daoku), "正常倒库", 1),
    Left(k0.a(R.string.teachingk2_zuodaoku), "左倒库", 2),
    Right(k0.a(R.string.teachingk2_youdaoku), "右倒库", 3);

    public final int type;
    public final String typeName;
    public final String zhTypeName;

    SingleType(String str, String str2, int i) {
        this.typeName = str;
        this.zhTypeName = str2;
        this.type = i;
    }

    public static SingleType getByType(int i) {
        SingleType singleType = Left;
        if (i == singleType.type) {
            return singleType;
        }
        SingleType singleType2 = Right;
        return i == singleType2.type ? singleType2 : All;
    }

    public static Map<String, String> typeList() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (SingleType singleType : values()) {
            linkedHashMap.put(String.valueOf(singleType.type), singleType.typeName);
        }
        return linkedHashMap;
    }
}
