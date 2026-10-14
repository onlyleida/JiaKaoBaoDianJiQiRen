package com.google.android.exoplayer2.upstream;

import android.text.TextUtils;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.common.base.Ascii;

/* JADX INFO: compiled from: HttpDataSource.java */
/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class g {
    public static /* synthetic */ boolean a(String str) {
        if (str == null) {
            return false;
        }
        String lowerCase = Ascii.toLowerCase(str);
        if (TextUtils.isEmpty(lowerCase)) {
            return false;
        }
        return ((lowerCase.contains("text") && !lowerCase.contains(MimeTypes.TEXT_VTT)) || lowerCase.contains("html") || lowerCase.contains("xml")) ? false : true;
    }
}
