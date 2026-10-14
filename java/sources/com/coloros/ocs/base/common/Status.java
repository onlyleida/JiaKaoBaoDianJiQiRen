package com.coloros.ocs.base.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.coloros.ocs.base.internal.safeparcel.AbstractSafeParcelable;
import g.b.a.a.c.c;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class Status extends AbstractSafeParcelable {
    public static final Parcelable.Creator<Status> CREATOR = new d();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f11662a;
    private int b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private PendingIntent f11663d;

    Status(int i, int i2, String str, PendingIntent pendingIntent) {
        this.f11662a = i;
        this.b = i2;
        this.c = str;
        this.f11663d = pendingIntent;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Status) {
            Status status = (Status) obj;
            if (this.f11662a == status.f11662a && this.b == status.b && c.b(this.c, status.c) && c.b(this.f11663d, status.f11663d)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f11662a), Integer.valueOf(this.b), this.c, this.f11663d});
    }

    public String toString() {
        c.a aVarA = c.a(this);
        String strA = this.c;
        if (strA == null) {
            strA = com.coloros.ocs.base.common.e.a.a(this.b);
        }
        aVarA.a("statusCode", strA);
        aVarA.a("resolution", this.f11663d);
        return aVarA.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iC = com.coloros.ocs.base.internal.safeparcel.b.c(parcel, 20293);
        com.coloros.ocs.base.internal.safeparcel.b.b(parcel, 1, this.b);
        com.coloros.ocs.base.internal.safeparcel.b.b(parcel, 1000, this.f11662a);
        String str = this.c;
        if (str != null) {
            int iC2 = com.coloros.ocs.base.internal.safeparcel.b.c(parcel, 2);
            parcel.writeString(str);
            com.coloros.ocs.base.internal.safeparcel.b.a(parcel, iC2);
        }
        PendingIntent pendingIntent = this.f11663d;
        if (pendingIntent != null) {
            int iC3 = com.coloros.ocs.base.internal.safeparcel.b.c(parcel, 3);
            pendingIntent.writeToParcel(parcel, i);
            com.coloros.ocs.base.internal.safeparcel.b.a(parcel, iC3);
        }
        com.coloros.ocs.base.internal.safeparcel.b.a(parcel, iC);
    }
}
