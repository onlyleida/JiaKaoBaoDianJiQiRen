package g.d.a.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes4.dex */
public interface b extends IInterface {

    public static abstract class a extends Binder implements b {

        /* JADX INFO: renamed from: g.d.a.a.b$a$a, reason: collision with other inner class name */
        private static class C0311a implements b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f14566a;

            C0311a(IBinder iBinder) {
                this.f14566a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f14566a;
            }

            @Override // g.d.a.a.b
            public int d(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.huawei.multimedia.audioengine.IHwAudioKaraokeFeature");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f14566a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // g.d.a.a.b
            public int e(String str, int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.huawei.multimedia.audioengine.IHwAudioKaraokeFeature");
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i);
                    this.f14566a.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // g.d.a.a.b
            public void j(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.huawei.multimedia.audioengine.IHwAudioKaraokeFeature");
                    parcelObtain.writeString(str);
                    this.f14566a.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // g.d.a.a.b
            public int k() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.huawei.multimedia.audioengine.IHwAudioKaraokeFeature");
                    this.f14566a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // g.d.a.a.b
            public boolean l() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.huawei.multimedia.audioengine.IHwAudioKaraokeFeature");
                    this.f14566a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static b n(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.huawei.multimedia.audioengine.IHwAudioKaraokeFeature");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof b)) ? new C0311a(iBinder) : (b) iInterfaceQueryLocalInterface;
        }
    }

    int d(boolean z) throws RemoteException;

    int e(String str, int i) throws RemoteException;

    void j(String str) throws RemoteException;

    int k() throws RemoteException;

    boolean l() throws RemoteException;
}
