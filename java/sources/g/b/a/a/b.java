package g.b.a.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes5.dex */
public interface b extends IInterface {

    public static abstract class a extends Binder implements b {

        /* JADX INFO: renamed from: g.b.a.a.b$a$a, reason: collision with other inner class name */
        static class C0305a implements b {
            public static b b;

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f14550a;

            C0305a(IBinder iBinder) {
                this.f14550a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f14550a;
            }

            @Override // g.b.a.a.b
            public void g(String str, String str2, g.b.a.a.a aVar) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.coloros.ocs.base.IServiceBroker");
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    if (this.f14550a.transact(1, parcelObtain, parcelObtain2, 0) || a.o() == null) {
                        parcelObtain2.readException();
                    } else {
                        a.o().g(str, str2, aVar);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // g.b.a.a.b
            public IBinder m(String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.coloros.ocs.base.IServiceBroker");
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (!this.f14550a.transact(2, parcelObtain, parcelObtain2, 0) && a.o() != null) {
                        return a.o().m(str, str2);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readStrongBinder();
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
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.coloros.ocs.base.IServiceBroker");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof b)) ? new C0305a(iBinder) : (b) iInterfaceQueryLocalInterface;
        }

        public static b o() {
            return C0305a.b;
        }
    }

    void g(String str, String str2, g.b.a.a.a aVar) throws RemoteException;

    IBinder m(String str, String str2) throws RemoteException;
}
