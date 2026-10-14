package cn.mucang.android.account.api.data;

import cn.mucang.android.core.utils.n0;

/* JADX INFO: loaded from: classes.dex */
public enum Gender {
    Male,
    Female;

    public static Gender from(String str) {
        if (n0.e(str)) {
            return null;
        }
        for (Gender gender : values()) {
            if (gender.name().equalsIgnoreCase(str)) {
                return gender;
            }
        }
        return null;
    }
}
