package com.amap.api.mapcore.util;

import android.content.Context;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes5.dex */
public class s2 {
    static s2 b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Context f11165a;

    private s2(Context context) {
        this.f11165a = context;
    }

    public static String a(String str) {
        StringBuilder sb = new StringBuilder();
        InputStream inputStreamC = b.c(str);
        if (inputStreamC == null) {
            return null;
        }
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamC, "utf-8"));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                sb.append(line);
                sb.append('\n');
            }
            bufferedReader.close();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        return sb.toString();
    }

    public static void b(Context context) {
        b = new s2(context);
    }

    public InputStream c(String str) {
        try {
            return this.f11165a.getAssets().open(str);
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
