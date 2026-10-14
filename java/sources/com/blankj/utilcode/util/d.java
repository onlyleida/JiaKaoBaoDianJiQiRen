package com.blankj.utilcode.util;

import android.view.inputmethod.InputMethodManager;

/* JADX INFO: loaded from: classes5.dex */
public final class d {
    public static void a() {
        InputMethodManager inputMethodManager = (InputMethodManager) Utils.d().getSystemService("input_method");
        if (inputMethodManager == null) {
            return;
        }
        inputMethodManager.toggleSoftInput(0, 0);
    }
}
