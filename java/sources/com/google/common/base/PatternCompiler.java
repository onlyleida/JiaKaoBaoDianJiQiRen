package com.google.common.base;

import com.google.common.annotations.GwtIncompatible;

/* JADX INFO: loaded from: classes3.dex */
@GwtIncompatible
interface PatternCompiler {
    CommonPattern compile(String str);

    boolean isPcreLike();
}
