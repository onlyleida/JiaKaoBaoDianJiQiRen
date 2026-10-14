package com.iflytek.speech.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.iflytek.speech.VerifierListener;

/* JADX INFO: loaded from: classes4.dex */
public interface ISpeakerVerifier extends IInterface {

    public static class Default implements ISpeakerVerifier {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.iflytek.speech.aidl.ISpeakerVerifier
        public void endSpeak() throws RemoteException {
        }

        @Override // com.iflytek.speech.aidl.ISpeakerVerifier
        public String getParameter(String str) throws RemoteException {
            return null;
        }

        @Override // com.iflytek.speech.aidl.ISpeakerVerifier
        public int register(String str, String str2, VerifierListener verifierListener) throws RemoteException {
            return 0;
        }

        @Override // com.iflytek.speech.aidl.ISpeakerVerifier
        public int setParameter(String str, String str2) throws RemoteException {
            return 0;
        }

        @Override // com.iflytek.speech.aidl.ISpeakerVerifier
        public void stopSpeak() throws RemoteException {
        }

        @Override // com.iflytek.speech.aidl.ISpeakerVerifier
        public int verify(String str, String str2, VerifierListener verifierListener) throws RemoteException {
            return 0;
        }
    }

    public static abstract class Stub extends Binder implements ISpeakerVerifier {
        private static final String DESCRIPTOR = "com.iflytek.speech.aidl.ISpeakerVerifier";
        static final int TRANSACTION_endSpeak = 3;
        static final int TRANSACTION_getParameter = 6;
        static final int TRANSACTION_register = 2;
        static final int TRANSACTION_setParameter = 5;
        static final int TRANSACTION_stopSpeak = 4;
        static final int TRANSACTION_verify = 1;

        private static class Proxy implements ISpeakerVerifier {
            public static ISpeakerVerifier sDefaultImpl;
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.iflytek.speech.aidl.ISpeakerVerifier
            public void endSpeak() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().endSpeak();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.iflytek.speech.aidl.ISpeakerVerifier
            public String getParameter(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getParameter(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.iflytek.speech.aidl.ISpeakerVerifier
            public int register(String str, String str2, VerifierListener verifierListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeStrongBinder(verifierListener != null ? verifierListener.asBinder() : null);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().register(str, str2, verifierListener);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.iflytek.speech.aidl.ISpeakerVerifier
            public int setParameter(String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().setParameter(str, str2);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.iflytek.speech.aidl.ISpeakerVerifier
            public void stopSpeak() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().stopSpeak();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.iflytek.speech.aidl.ISpeakerVerifier
            public int verify(String str, String str2, VerifierListener verifierListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeStrongBinder(verifierListener != null ? verifierListener.asBinder() : null);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().verify(str, str2, verifierListener);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ISpeakerVerifier asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ISpeakerVerifier)) ? new Proxy(iBinder) : (ISpeakerVerifier) iInterfaceQueryLocalInterface;
        }

        public static ISpeakerVerifier getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(ISpeakerVerifier iSpeakerVerifier) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iSpeakerVerifier == null) {
                return false;
            }
            Proxy.sDefaultImpl = iSpeakerVerifier;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iVerify = verify(parcel.readString(), parcel.readString(), VerifierListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(iVerify);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iRegister = register(parcel.readString(), parcel.readString(), VerifierListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(iRegister);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    endSpeak();
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopSpeak();
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    int parameter = setParameter(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(parameter);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    String parameter2 = getParameter(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(parameter2);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void endSpeak() throws RemoteException;

    String getParameter(String str) throws RemoteException;

    int register(String str, String str2, VerifierListener verifierListener) throws RemoteException;

    int setParameter(String str, String str2) throws RemoteException;

    void stopSpeak() throws RemoteException;

    int verify(String str, String str2, VerifierListener verifierListener) throws RemoteException;
}
