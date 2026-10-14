package com.huawei.hms.ads.identifier;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.annotation.Keep;
import d.b.a.a.a.a;
import d.b.a.a.a.b;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
@Keep
public class AdvertisingIdClient {
    private static final String SETTINGS_AD_ID = "pps_oaid";
    private static final String SETTINGS_TRACK_LIMIT = "pps_track_limit";

    @Keep
    public static final class Info {
        private final String advertisingId;
        private final boolean limitAdTrackingEnabled;

        @Keep
        public Info(String str, boolean z) {
            this.advertisingId = str;
            this.limitAdTrackingEnabled = z;
        }

        @Keep
        public final String getId() {
            return this.advertisingId;
        }

        @Keep
        public final boolean isLimitAdTrackingEnabled() {
            return this.limitAdTrackingEnabled;
        }
    }

    public static class XI implements Runnable {

        /* JADX INFO: renamed from: XI, reason: collision with root package name */
        public final /* synthetic */ Context f12039XI;

        public XI(Context context) {
            this.f12039XI = context;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                AdvertisingIdClient.requestAdvertisingIdInfo(this.f12039XI);
            } catch (Throwable unused) {
            }
        }
    }

    @Keep
    public static Info getAdvertisingIdInfo(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            try {
                String string = Settings.Global.getString(context.getContentResolver(), SETTINGS_AD_ID);
                String string2 = Settings.Global.getString(context.getContentResolver(), SETTINGS_TRACK_LIMIT);
                if (!TextUtils.isEmpty(string) && !TextUtils.isEmpty(string2)) {
                    updateAdvertisingIdInfo(context);
                    return new Info(string, Boolean.valueOf(string2).booleanValue());
                }
            } catch (Throwable unused) {
            }
        }
        return requestAdvertisingIdInfo(context);
    }

    @Keep
    public static boolean isAdvertisingIdAvailable(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            packageManager.getPackageInfo("com.huawei.hwid", 0);
            Intent intent = new Intent("com.uodis.opendevice.OPENIDS_SERVICE");
            intent.setPackage("com.huawei.hwid");
            return !packageManager.queryIntentServices(intent, 0).isEmpty();
        } catch (PackageManager.NameNotFoundException | Exception unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Info requestAdvertisingIdInfo(Context context) throws IOException {
        try {
            context.getPackageManager().getPackageInfo("com.huawei.hwid", 0);
            b bVar = new b();
            Intent intent = new Intent("com.uodis.opendevice.OPENIDS_SERVICE");
            intent.setPackage("com.huawei.hwid");
            try {
                if (!context.bindService(intent, bVar, 1)) {
                    throw new IOException("bind failed");
                }
                try {
                    try {
                        if (bVar.f14432a) {
                            throw new IllegalStateException();
                        }
                        bVar.f14432a = true;
                        IBinder iBinderTake = bVar.b.take();
                        Parcel parcelObtain = Parcel.obtain();
                        Parcel parcelObtain2 = Parcel.obtain();
                        try {
                            parcelObtain.writeInterfaceToken("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                            iBinderTake.transact(1, parcelObtain, parcelObtain2, 0);
                            parcelObtain2.readException();
                            String string = parcelObtain2.readString();
                            parcelObtain2.recycle();
                            parcelObtain.recycle();
                            Parcel parcelObtain3 = Parcel.obtain();
                            Parcel parcelObtain4 = Parcel.obtain();
                            try {
                                parcelObtain3.writeInterfaceToken("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                                iBinderTake.transact(2, parcelObtain3, parcelObtain4, 0);
                                parcelObtain4.readException();
                                boolean z = parcelObtain4.readInt() != 0;
                                parcelObtain4.recycle();
                                parcelObtain3.recycle();
                                Info info = new Info(string, z);
                                try {
                                    context.unbindService(bVar);
                                } catch (Throwable th) {
                                    String str = "unbind " + th.getClass().getSimpleName();
                                }
                                return info;
                            } catch (Throwable th2) {
                                parcelObtain4.recycle();
                                parcelObtain3.recycle();
                                throw th2;
                            }
                        } catch (Throwable th3) {
                            parcelObtain2.recycle();
                            parcelObtain.recycle();
                            throw th3;
                        }
                    } catch (RemoteException unused) {
                        throw new IOException("bind hms service RemoteException");
                    }
                } catch (InterruptedException unused2) {
                    throw new IOException("bind hms service InterruptedException");
                }
            } catch (Throwable th4) {
                try {
                    context.unbindService(bVar);
                } catch (Throwable th5) {
                    String str2 = "unbind " + th5.getClass().getSimpleName();
                }
                throw th4;
            }
        } catch (PackageManager.NameNotFoundException unused3) {
            throw new IOException("Service not found");
        }
    }

    private static void updateAdvertisingIdInfo(Context context) {
        a.f14431a.execute(new XI(context));
    }

    @Keep
    public static boolean verifyAdId(Context context, String str, boolean z) throws AdIdVerifyException {
        try {
            Info infoRequestAdvertisingIdInfo = requestAdvertisingIdInfo(context);
            return infoRequestAdvertisingIdInfo != null && TextUtils.equals(str, infoRequestAdvertisingIdInfo.getId()) && z == infoRequestAdvertisingIdInfo.isLimitAdTrackingEnabled();
        } catch (Throwable unused) {
            throw new AdIdVerifyException("Something wrong with verification, please try later.");
        }
    }
}
