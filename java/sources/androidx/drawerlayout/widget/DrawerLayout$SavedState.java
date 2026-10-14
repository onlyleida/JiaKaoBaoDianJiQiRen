package androidx.drawerlayout.widget;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.customview.view.AbsSavedState;

/* JADX INFO: loaded from: classes.dex */
public class DrawerLayout$SavedState extends AbsSavedState {
    public static final Parcelable.Creator<DrawerLayout$SavedState> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f1258a;
    int b;
    int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f1259d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f1260e;

    static class a implements Parcelable.ClassLoaderCreator<DrawerLayout$SavedState> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public DrawerLayout$SavedState createFromParcel(Parcel parcel) {
            return new DrawerLayout$SavedState(parcel, null);
        }

        @Override // android.os.Parcelable.ClassLoaderCreator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public DrawerLayout$SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
            return new DrawerLayout$SavedState(parcel, classLoader);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public DrawerLayout$SavedState[] newArray(int i) {
            return new DrawerLayout$SavedState[i];
        }
    }

    public DrawerLayout$SavedState(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f1258a = 0;
        this.f1258a = parcel.readInt();
        this.b = parcel.readInt();
        this.c = parcel.readInt();
        this.f1259d = parcel.readInt();
        this.f1260e = parcel.readInt();
    }

    @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f1258a);
        parcel.writeInt(this.b);
        parcel.writeInt(this.c);
        parcel.writeInt(this.f1259d);
        parcel.writeInt(this.f1260e);
    }
}
