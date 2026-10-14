package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"BanParcelableUsage"})
final class FragmentManagerState implements Parcelable {
    public static final Parcelable.Creator<FragmentManagerState> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ArrayList<FragmentState> f1304a;
    ArrayList<String> b;
    BackStackState[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f1305d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    String f1306e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    ArrayList<String> f1307f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    ArrayList<Bundle> f1308g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    ArrayList<FragmentManager.LaunchedFragmentInfo> f1309h;

    class a implements Parcelable.Creator<FragmentManagerState> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public FragmentManagerState createFromParcel(Parcel parcel) {
            return new FragmentManagerState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public FragmentManagerState[] newArray(int i) {
            return new FragmentManagerState[i];
        }
    }

    public FragmentManagerState() {
        this.f1306e = null;
        this.f1307f = new ArrayList<>();
        this.f1308g = new ArrayList<>();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedList(this.f1304a);
        parcel.writeStringList(this.b);
        parcel.writeTypedArray(this.c, i);
        parcel.writeInt(this.f1305d);
        parcel.writeString(this.f1306e);
        parcel.writeStringList(this.f1307f);
        parcel.writeTypedList(this.f1308g);
        parcel.writeTypedList(this.f1309h);
    }

    public FragmentManagerState(Parcel parcel) {
        this.f1306e = null;
        this.f1307f = new ArrayList<>();
        this.f1308g = new ArrayList<>();
        this.f1304a = parcel.createTypedArrayList(FragmentState.CREATOR);
        this.b = parcel.createStringArrayList();
        this.c = (BackStackState[]) parcel.createTypedArray(BackStackState.CREATOR);
        this.f1305d = parcel.readInt();
        this.f1306e = parcel.readString();
        this.f1307f = parcel.createStringArrayList();
        this.f1308g = parcel.createTypedArrayList(Bundle.CREATOR);
        this.f1309h = parcel.createTypedArrayList(FragmentManager.LaunchedFragmentInfo.CREATOR);
    }
}
