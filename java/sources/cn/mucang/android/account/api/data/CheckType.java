package cn.mucang.android.account.api.data;

import cn.mucang.android.core.utils.n0;

/* JADX INFO: loaded from: classes.dex */
public enum CheckType {
    TRUE,
    FALSE;

    public static CheckType from(String str) {
        if (n0.e(str)) {
            return null;
        }
        for (CheckType checkType : values()) {
            if (checkType.name().equalsIgnoreCase(str)) {
                return checkType;
            }
        }
        return null;
    }
}
