package cn.mucang.android.download;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class DownloadProgress implements Parcelable {
    public static final Parcelable.Creator<DownloadProgress> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f2942a;
    public long b;
    public long c;

    class a implements Parcelable.Creator<DownloadProgress> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public DownloadProgress createFromParcel(Parcel parcel) {
            return new DownloadProgress(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public DownloadProgress[] newArray(int i) {
            return new DownloadProgress[i];
        }
    }

    /* synthetic */ DownloadProgress(Parcel parcel, a aVar) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f2942a);
        parcel.writeLong(this.b);
        parcel.writeLong(this.c);
    }

    public DownloadProgress(DownloadEntity downloadEntity) {
        this.f2942a = downloadEntity.getId().longValue();
        this.b = downloadEntity.getContentLength();
        this.c = downloadEntity.getDownloadedLength();
    }

    private DownloadProgress(Parcel parcel) {
        this.f2942a = parcel.readLong();
        this.b = parcel.readLong();
        this.c = parcel.readLong();
    }
}
