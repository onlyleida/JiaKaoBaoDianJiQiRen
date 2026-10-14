package com.iflytek.speech.aidl;

import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.iflytek.speech.TextUnderstanderListener;

/* JADX INFO: loaded from: classes4.dex */
public interface ITextUnderstander extends IInterface {

    public static class Default implements ITextUnderstander {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.iflytek.speech.aidl.ITextUnderstander
        public void cancel(TextUnderstanderListener textUnderstanderListener) throws RemoteException {
        }

        @Override // com.iflytek.speech.aidl.ITextUnderstander
        public boolean isUnderstanding() throws RemoteException {
            return false;
        }

        @Override // com.iflytek.speech.aidl.ITextUnderstander
        public void understandText(Intent intent, TextUnderstanderListener textUnderstanderListener) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements ITextUnderstander {
        private static final String DESCRIPTOR = "com.iflytek.speech.aidl.ITextUnderstander";
        static final int TRANSACTION_cancel = 2;
        static final int TRANSACTION_isUnderstanding = 3;
        static final int TRANSACTION_understandText = 1;

        private static class Proxy implements ITextUnderstander {
            public static ITextUnderstander sDefaultImpl;
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.iflytek.speech.aidl.ITextUnderstander
            public void cancel(TextUnderstanderListener textUnderstanderListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(textUnderstanderListener != null ? textUnderstanderListener.asBinder() : null);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().cancel(textUnderstanderListener);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.iflytek.speech.aidl.ITextUnderstander
            public boolean isUnderstanding() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isUnderstanding();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.iflytek.speech.aidl.ITextUnderstander
            public void understandText(Intent intent, TextUnderstanderListener textUnderstanderListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(textUnderstanderListener != null ? textUnderstanderListener.asBinder() : null);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().understandText(intent, textUnderstanderListener);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ITextUnderstander asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ITextUnderstander)) ? new Proxy(iBinder) : (ITextUnderstander) iInterfaceQueryLocalInterface;
        }

        public static ITextUnderstander getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(ITextUnderstander iTextUnderstander) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iTextUnderstander == null) {
                return false;
            }
            Proxy.sDefaultImpl = iTextUnderstander;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                understandText(parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null, TextUnderstanderListener.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            if (i == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                cancel(TextUnderstanderListener.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            if (i != 3) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            boolean zIsUnderstanding = isUnderstanding();
            parcel2.writeNoException();
            parcel2.writeInt(zIsUnderstanding ? 1 : 0);
            return true;
        }
    }

    void cancel(TextUnderstanderListener textUnderstanderListener) throws RemoteException;

    boolean isUnderstanding() throws RemoteException;

    void understandText(Intent intent, TextUnderstanderListener textUnderstanderListener) throws RemoteException;
}
