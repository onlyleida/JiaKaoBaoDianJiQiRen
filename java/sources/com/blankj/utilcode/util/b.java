package com.blankj.utilcode.util;

import java.util.Collection;

/* JADX INFO: loaded from: classes5.dex */
public final class b {
    public static boolean a(Collection collection) {
        return collection == null || collection.size() == 0;
    }

    public static boolean b(Collection collection) {
        return !a(collection);
    }
}
