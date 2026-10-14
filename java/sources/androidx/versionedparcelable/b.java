package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseIntArray;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
class b extends VersionedParcel {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final SparseIntArray f1944d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Parcel f1945e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f1946f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f1947g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f1948h;
    private int i;
    private int j;
    private int k;

    b(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new androidx.collection.a(), new androidx.collection.a(), new androidx.collection.a());
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void A(byte[] bArr) {
        if (bArr == null) {
            this.f1945e.writeInt(-1);
        } else {
            this.f1945e.writeInt(bArr.length);
            this.f1945e.writeByteArray(bArr);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    protected void C(CharSequence charSequence) {
        TextUtils.writeToParcel(charSequence, this.f1945e, 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void E(int i) {
        this.f1945e.writeInt(i);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void G(Parcelable parcelable) {
        this.f1945e.writeParcelable(parcelable, 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void I(String str) {
        this.f1945e.writeString(str);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void a() {
        int i = this.i;
        if (i >= 0) {
            int i2 = this.f1944d.get(i);
            int iDataPosition = this.f1945e.dataPosition();
            this.f1945e.setDataPosition(i2);
            this.f1945e.writeInt(iDataPosition - i2);
            this.f1945e.setDataPosition(iDataPosition);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    protected VersionedParcel b() {
        Parcel parcel = this.f1945e;
        int iDataPosition = parcel.dataPosition();
        int i = this.j;
        if (i == this.f1946f) {
            i = this.f1947g;
        }
        return new b(parcel, iDataPosition, i, this.f1948h + "  ", this.f1943a, this.b, this.c);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public boolean g() {
        return this.f1945e.readInt() != 0;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public byte[] i() {
        int i = this.f1945e.readInt();
        if (i < 0) {
            return null;
        }
        byte[] bArr = new byte[i];
        this.f1945e.readByteArray(bArr);
        return bArr;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    protected CharSequence k() {
        return (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(this.f1945e);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public boolean m(int i) {
        while (this.j < this.f1947g) {
            int i2 = this.k;
            if (i2 == i) {
                return true;
            }
            if (String.valueOf(i2).compareTo(String.valueOf(i)) > 0) {
                return false;
            }
            this.f1945e.setDataPosition(this.j);
            int i3 = this.f1945e.readInt();
            this.k = this.f1945e.readInt();
            this.j += i3;
        }
        return this.k == i;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public int o() {
        return this.f1945e.readInt();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public <T extends Parcelable> T q() {
        return (T) this.f1945e.readParcelable(b.class.getClassLoader());
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public String s() {
        return this.f1945e.readString();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void w(int i) {
        a();
        this.i = i;
        this.f1944d.put(i, this.f1945e.dataPosition());
        E(0);
        E(i);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void y(boolean z) {
        this.f1945e.writeInt(z ? 1 : 0);
    }

    private b(Parcel parcel, int i, int i2, String str, androidx.collection.a<String, Method> aVar, androidx.collection.a<String, Method> aVar2, androidx.collection.a<String, Class> aVar3) {
        super(aVar, aVar2, aVar3);
        this.f1944d = new SparseIntArray();
        this.i = -1;
        this.j = 0;
        this.k = -1;
        this.f1945e = parcel;
        this.f1946f = i;
        this.f1947g = i2;
        this.j = i;
        this.f1948h = str;
    }
}
