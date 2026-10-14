package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.lifecycle.Lifecycle;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"BanParcelableUsage"})
final class BackStackState implements Parcelable {
    public static final Parcelable.Creator<BackStackState> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int[] f1261a;
    final ArrayList<String> b;
    final int[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final int[] f1262d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final int f1263e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final String f1264f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final int f1265g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final int f1266h;
    final CharSequence i;
    final int j;
    final CharSequence k;
    final ArrayList<String> l;
    final ArrayList<String> m;
    final boolean n;

    class a implements Parcelable.Creator<BackStackState> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BackStackState createFromParcel(Parcel parcel) {
            return new BackStackState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public BackStackState[] newArray(int i) {
            return new BackStackState[i];
        }
    }

    public BackStackState(androidx.fragment.app.a aVar) {
        int size = aVar.f1393a.size();
        this.f1261a = new int[size * 5];
        if (!aVar.f1397g) {
            throw new IllegalStateException("Not on back stack");
        }
        this.b = new ArrayList<>(size);
        this.c = new int[size];
        this.f1262d = new int[size];
        int i = 0;
        int i2 = 0;
        while (i < size) {
            u.a aVar2 = aVar.f1393a.get(i);
            int i3 = i2 + 1;
            this.f1261a[i2] = aVar2.f1399a;
            ArrayList<String> arrayList = this.b;
            Fragment fragment = aVar2.b;
            arrayList.add(fragment != null ? fragment.mWho : null);
            int[] iArr = this.f1261a;
            int i4 = i3 + 1;
            iArr[i3] = aVar2.c;
            int i5 = i4 + 1;
            iArr[i4] = aVar2.f1400d;
            int i6 = i5 + 1;
            iArr[i5] = aVar2.f1401e;
            iArr[i6] = aVar2.f1402f;
            this.c[i] = aVar2.f1403g.ordinal();
            this.f1262d[i] = aVar2.f1404h.ordinal();
            i++;
            i2 = i6 + 1;
        }
        this.f1263e = aVar.f1396f;
        this.f1264f = aVar.i;
        this.f1265g = aVar.t;
        this.f1266h = aVar.j;
        this.i = aVar.k;
        this.j = aVar.l;
        this.k = aVar.m;
        this.l = aVar.n;
        this.m = aVar.o;
        this.n = aVar.p;
    }

    public androidx.fragment.app.a a(FragmentManager fragmentManager) {
        androidx.fragment.app.a aVar = new androidx.fragment.app.a(fragmentManager);
        int i = 0;
        int i2 = 0;
        while (true) {
            int[] iArr = this.f1261a;
            if (i >= iArr.length) {
                aVar.f1396f = this.f1263e;
                aVar.i = this.f1264f;
                aVar.t = this.f1265g;
                aVar.f1397g = true;
                aVar.j = this.f1266h;
                aVar.k = this.i;
                aVar.l = this.j;
                aVar.m = this.k;
                aVar.n = this.l;
                aVar.o = this.m;
                aVar.p = this.n;
                aVar.w(1);
                return aVar;
            }
            u.a aVar2 = new u.a();
            int i3 = i + 1;
            aVar2.f1399a = iArr[i];
            if (FragmentManager.H0(2)) {
                Log.v("FragmentManager", "Instantiate " + aVar + " op #" + i2 + " base fragment #" + this.f1261a[i3]);
            }
            String str = this.b.get(i2);
            if (str != null) {
                aVar2.b = fragmentManager.h0(str);
            } else {
                aVar2.b = null;
            }
            aVar2.f1403g = Lifecycle.State.values()[this.c[i2]];
            aVar2.f1404h = Lifecycle.State.values()[this.f1262d[i2]];
            int[] iArr2 = this.f1261a;
            int i4 = i3 + 1;
            int i5 = iArr2[i3];
            aVar2.c = i5;
            int i6 = i4 + 1;
            int i7 = iArr2[i4];
            aVar2.f1400d = i7;
            int i8 = i6 + 1;
            int i9 = iArr2[i6];
            aVar2.f1401e = i9;
            int i10 = iArr2[i8];
            aVar2.f1402f = i10;
            aVar.b = i5;
            aVar.c = i7;
            aVar.f1394d = i9;
            aVar.f1395e = i10;
            aVar.f(aVar2);
            i2++;
            i = i8 + 1;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeIntArray(this.f1261a);
        parcel.writeStringList(this.b);
        parcel.writeIntArray(this.c);
        parcel.writeIntArray(this.f1262d);
        parcel.writeInt(this.f1263e);
        parcel.writeString(this.f1264f);
        parcel.writeInt(this.f1265g);
        parcel.writeInt(this.f1266h);
        TextUtils.writeToParcel(this.i, parcel, 0);
        parcel.writeInt(this.j);
        TextUtils.writeToParcel(this.k, parcel, 0);
        parcel.writeStringList(this.l);
        parcel.writeStringList(this.m);
        parcel.writeInt(this.n ? 1 : 0);
    }

    public BackStackState(Parcel parcel) {
        this.f1261a = parcel.createIntArray();
        this.b = parcel.createStringArrayList();
        this.c = parcel.createIntArray();
        this.f1262d = parcel.createIntArray();
        this.f1263e = parcel.readInt();
        this.f1264f = parcel.readString();
        this.f1265g = parcel.readInt();
        this.f1266h = parcel.readInt();
        this.i = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.j = parcel.readInt();
        this.k = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.l = parcel.createStringArrayList();
        this.m = parcel.createStringArrayList();
        this.n = parcel.readInt() != 0;
    }
}
