package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"BanParcelableUsage"})
final class FragmentState implements Parcelable {
    public static final Parcelable.Creator<FragmentState> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final String f1310a;
    final String b;
    final boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final int f1311d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final int f1312e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final String f1313f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final boolean f1314g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final boolean f1315h;
    final boolean i;
    final Bundle j;
    final boolean k;
    final int l;
    Bundle m;

    class a implements Parcelable.Creator<FragmentState> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public FragmentState createFromParcel(Parcel parcel) {
            return new FragmentState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public FragmentState[] newArray(int i) {
            return new FragmentState[i];
        }
    }

    FragmentState(Fragment fragment) {
        this.f1310a = fragment.getClass().getName();
        this.b = fragment.mWho;
        this.c = fragment.mFromLayout;
        this.f1311d = fragment.mFragmentId;
        this.f1312e = fragment.mContainerId;
        this.f1313f = fragment.mTag;
        this.f1314g = fragment.mRetainInstance;
        this.f1315h = fragment.mRemoving;
        this.i = fragment.mDetached;
        this.j = fragment.mArguments;
        this.k = fragment.mHidden;
        this.l = fragment.mMaxState.ordinal();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentState{");
        sb.append(this.f1310a);
        sb.append(" (");
        sb.append(this.b);
        sb.append(")}:");
        if (this.c) {
            sb.append(" fromLayout");
        }
        if (this.f1312e != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.f1312e));
        }
        String str = this.f1313f;
        if (str != null && !str.isEmpty()) {
            sb.append(" tag=");
            sb.append(this.f1313f);
        }
        if (this.f1314g) {
            sb.append(" retainInstance");
        }
        if (this.f1315h) {
            sb.append(" removing");
        }
        if (this.i) {
            sb.append(" detached");
        }
        if (this.k) {
            sb.append(" hidden");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1310a);
        parcel.writeString(this.b);
        parcel.writeInt(this.c ? 1 : 0);
        parcel.writeInt(this.f1311d);
        parcel.writeInt(this.f1312e);
        parcel.writeString(this.f1313f);
        parcel.writeInt(this.f1314g ? 1 : 0);
        parcel.writeInt(this.f1315h ? 1 : 0);
        parcel.writeInt(this.i ? 1 : 0);
        parcel.writeBundle(this.j);
        parcel.writeInt(this.k ? 1 : 0);
        parcel.writeBundle(this.m);
        parcel.writeInt(this.l);
    }

    FragmentState(Parcel parcel) {
        this.f1310a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readInt() != 0;
        this.f1311d = parcel.readInt();
        this.f1312e = parcel.readInt();
        this.f1313f = parcel.readString();
        this.f1314g = parcel.readInt() != 0;
        this.f1315h = parcel.readInt() != 0;
        this.i = parcel.readInt() != 0;
        this.j = parcel.readBundle();
        this.k = parcel.readInt() != 0;
        this.m = parcel.readBundle();
        this.l = parcel.readInt();
    }
}
