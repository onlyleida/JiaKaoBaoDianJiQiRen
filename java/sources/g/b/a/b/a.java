package g.b.a.b;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes5.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: g.b.a.b.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0306a extends Binder implements a {

        /* JADX INFO: renamed from: g.b.a.b.a$a$a, reason: collision with other inner class name */
        private static class C0307a implements a {
            public static a b;

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f14554a;

            C0307a(IBinder iBinder) {
                this.f14554a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f14554a;
            }

            @Override // g.b.a.b.a
            public int c(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.coloros.ocs.mediaunit.IKaraokeService");
                    parcelObtain.writeString(str);
                    if (!this.f14554a.transact(2, parcelObtain, parcelObtain2, 0) && AbstractBinderC0306a.o() != null) {
                        return AbstractBinderC0306a.o().c(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // g.b.a.b.a
            public int i(IBinder iBinder, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.coloros.ocs.mediaunit.IKaraokeService");
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeString(str);
                    if (!this.f14554a.transact(1, parcelObtain, parcelObtain2, 0) && AbstractBinderC0306a.o() != null) {
                        return AbstractBinderC0306a.o().i(iBinder, str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static a n(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.coloros.ocs.mediaunit.IKaraokeService");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0307a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        public static a o() {
            return C0307a.b;
        }
    }

    int c(String str) throws RemoteException;

    int i(IBinder iBinder, String str) throws RemoteException;
}
