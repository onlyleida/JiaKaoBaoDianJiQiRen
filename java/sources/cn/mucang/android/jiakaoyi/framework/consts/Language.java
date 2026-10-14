package cn.mucang.android.jiakaoyi.framework.consts;

import com.amap.api.maps.AMap;

/* JADX INFO: loaded from: classes2.dex */
public enum Language {
    CHINESE("zh", "汉语", "zh"),
    ENGLISH(AMap.ENGLISH, "英语", AMap.ENGLISH),
    UYGUR("ug", "维吾尔语", "ug");

    public final String desc;
    public final String lang;
    public final String serverCode;

    Language(String str, String str2, String str3) {
        this.lang = str;
        this.desc = str2;
        this.serverCode = str3;
    }

    public static Language get(String str) {
        for (Language language : values()) {
            if (language.lang.equals(str)) {
                return language;
            }
        }
        return CHINESE;
    }
}
