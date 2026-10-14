package androidx.activity.result;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"BanParcelableUsage"})
public final class IntentSenderRequest implements Parcelable {
    public static final Parcelable.Creator<IntentSenderRequest> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final IntentSender f55a;
    private final Intent b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f56d;

    class a implements Parcelable.Creator<IntentSenderRequest> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public IntentSenderRequest createFromParcel(Parcel parcel) {
            return new IntentSenderRequest(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public IntentSenderRequest[] newArray(int i) {
            return new IntentSenderRequest[i];
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private IntentSender f57a;
        private Intent b;
        private int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f58d;

        public b(IntentSender intentSender) {
            this.f57a = intentSender;
        }

        public IntentSenderRequest a() {
            return new IntentSenderRequest(this.f57a, this.b, this.c, this.f58d);
        }

        public b b(Intent intent) {
            this.b = intent;
            return this;
        }

        public b c(int i, int i2) {
            this.f58d = i;
            this.c = i2;
            return this;
        }
    }

    IntentSenderRequest(IntentSender intentSender, Intent intent, int i, int i2) {
        this.f55a = intentSender;
        this.b = intent;
        this.c = i;
        this.f56d = i2;
    }

    public Intent a() {
        return this.b;
    }

    public int b() {
        return this.c;
    }

    public int c() {
        return this.f56d;
    }

    public IntentSender d() {
        return this.f55a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f55a, i);
        parcel.writeParcelable(this.b, i);
        parcel.writeInt(this.c);
        parcel.writeInt(this.f56d);
    }

    IntentSenderRequest(Parcel parcel) {
        this.f55a = (IntentSender) parcel.readParcelable(IntentSender.class.getClassLoader());
        this.b = (Intent) parcel.readParcelable(Intent.class.getClassLoader());
        this.c = parcel.readInt();
        this.f56d = parcel.readInt();
    }
}
