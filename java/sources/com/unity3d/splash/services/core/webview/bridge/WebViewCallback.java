package com.unity3d.splash.services.core.webview.bridge;

import android.os.Parcel;
import android.os.Parcelable;
import com.unity3d.splash.services.core.log.DeviceLog;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public class WebViewCallback implements Parcelable {
    public static final Parcelable.Creator CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f14423a;
    private int b;
    private String c;

    static class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final WebViewCallback createFromParcel(Parcel parcel) {
            return new WebViewCallback(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final WebViewCallback[] newArray(int i) {
            return new WebViewCallback[i];
        }
    }

    public WebViewCallback(Parcel parcel) {
        this.c = parcel.readString();
        this.f14423a = parcel.readByte() != 0;
        this.b = parcel.readInt();
    }

    public WebViewCallback(String str, int i) {
        this.c = str;
        this.b = i;
    }

    private void c(CallbackStatus callbackStatus, Enum r4, Object... objArr) {
        String str;
        if (this.f14423a || (str = this.c) == null || str.length() == 0) {
            return;
        }
        this.f14423a = true;
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(Arrays.asList(objArr));
        arrayList.add(0, this.c);
        com.unity3d.splash.services.core.webview.bridge.a aVarC = com.unity3d.splash.services.core.webview.bridge.a.c(this.b);
        if (aVarC != null) {
            aVarC.g(callbackStatus, r4, arrayList.toArray());
            return;
        }
        DeviceLog.e("Couldn't get batch with id: " + b());
    }

    public void a(Enum r2, Object... objArr) {
        c(CallbackStatus.ERROR, r2, objArr);
    }

    public int b() {
        return this.b;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 45678;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.c);
        parcel.writeByte(this.f14423a ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.b);
    }
}
