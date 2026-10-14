package com.serenegiant.utils;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.documentfile.a.a;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public class DocumentFileHelper {
    public static a getDocumentFile(Context context, a aVar, String str) throws IOException {
        if (!TextUtils.isEmpty(str)) {
            for (String str2 : str.split("/")) {
                if (!TextUtils.isEmpty(str2)) {
                    a aVarD = aVar.d(str2);
                    if (aVarD != null && aVarD.h()) {
                        aVar = aVarD;
                    } else {
                        if (aVarD != null) {
                            throw new IOException("can't create directory, file with same name already exists");
                        }
                        if (!aVar.a()) {
                            throw new IOException("can't create directory");
                        }
                        aVar = aVar.b(str2);
                    }
                }
            }
        }
        return aVar;
    }

    public static a getDocumentFile(Context context, a aVar, Uri uri) throws IOException {
        if (uri == null) {
            return null;
        }
        String path = UriHelper.getPath(context, aVar.g());
        String path2 = UriHelper.getPath(context, uri);
        if (TextUtils.isEmpty(path) || TextUtils.isEmpty(path2) || !path2.startsWith(path)) {
            return null;
        }
        return getDocumentFile(context, aVar, path2.substring(path.length()));
    }
}
