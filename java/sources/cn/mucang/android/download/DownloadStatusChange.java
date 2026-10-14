package cn.mucang.android.download;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class DownloadStatusChange implements Parcelable {
    public static final Parcelable.Creator<DownloadStatusChange> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f2943a;
    public int b;
    public int c;

    class a implements Parcelable.Creator<DownloadStatusChange> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public DownloadStatusChange createFromParcel(Parcel parcel) {
            return new DownloadStatusChange(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public DownloadStatusChange[] newArray(int i) {
            return new DownloadStatusChange[i];
        }
    }

    /* synthetic */ DownloadStatusChange(Parcel parcel, a aVar) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f2943a);
        parcel.writeInt(this.b);
        parcel.writeInt(this.c);
    }

    public DownloadStatusChange(long j, int i, int i2) {
        this.f2943a = j;
        this.b = i;
        this.c = i2;
    }

    private DownloadStatusChange(Parcel parcel) {
        this.f2943a = parcel.readLong();
        this.b = parcel.readInt();
        this.c = parcel.readInt();
    }
}
