package cn.mucang.android.core.utils;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public class t0 {
    public static View a(Context context, int i) {
        return LayoutInflater.from(context).inflate(i, (ViewGroup) null);
    }

    public static View b(ViewGroup viewGroup, int i) {
        return LayoutInflater.from(viewGroup.getContext()).inflate(i, viewGroup, false);
    }
}
