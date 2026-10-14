package com.amap.api.maps;

import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public class InfoWindowParams {
    public static final int INFOWINDOW_TYPE_IMAGE = 1;
    public static final int INFOWINDOW_TYPE_VIEW = 2;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f11483a = 2;
    private int b;
    private View c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f11484d;

    public View getInfoContents() {
        return this.f11484d;
    }

    public View getInfoWindow() {
        return this.c;
    }

    public int getInfoWindowType() {
        return this.f11483a;
    }

    public long getInfoWindowUpdateTime() {
        return this.b;
    }

    public void setInfoContent(View view) {
        this.f11484d = view;
    }

    public void setInfoWindow(View view) {
        this.c = view;
    }

    public void setInfoWindowType(int i) {
        this.f11483a = i;
    }

    public void setInfoWindowUpdateTime(int i) {
        this.b = i;
    }
}
