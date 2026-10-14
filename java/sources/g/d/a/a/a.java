package g.d.a.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes4.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: g.d.a.a.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0309a extends Binder implements a {

        /* JADX INFO: renamed from: g.d.a.a.a$a$a, reason: collision with other inner class name */
        private static class C0310a implements a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f14565a;

            C0310a(IBinder iBinder) {
                this.f14565a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f14565a;
            }

            @Override // g.d.a.a.a
            public void b(String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.huawei.multimedia.audioengine.IHwAudioEngine");
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.f14565a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
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
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.huawei.multimedia.audioengine.IHwAudioEngine");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0310a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }
    }

    void b(String str, String str2) throws RemoteException;
}
