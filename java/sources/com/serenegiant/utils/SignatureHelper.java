package com.serenegiant.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.text.TextUtils;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
public class SignatureHelper {
    public static boolean checkSignature(Context context, String str) throws PackageManager.NameNotFoundException, IllegalArgumentException {
        if (context == null || TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("context or key is null");
        }
        Signature signature = new Signature(str);
        PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 64);
        int i = 0;
        boolean zEquals = true;
        while (true) {
            Signature[] signatureArr = packageInfo.signatures;
            if (i >= signatureArr.length) {
                return zEquals;
            }
            zEquals &= signature.equals(signatureArr[i]);
            i++;
        }
    }

    public static String getSignature(Context context) {
        if (context == null) {
            return null;
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 64);
            StringBuilder sb = new StringBuilder();
            int i = 0;
            while (true) {
                Signature[] signatureArr = packageInfo.signatures;
                if (i >= signatureArr.length) {
                    return sb.toString();
                }
                Signature signature = signatureArr[i];
                if (signature != null) {
                    sb.append(signature.toCharsString());
                }
                i++;
            }
        } catch (Exception unused) {
            return null;
        }
    }

    public static byte[] getSignatureBytes(Context context) {
        if (context == null) {
            return null;
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 64);
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(1024);
            int i = 0;
            while (true) {
                Signature[] signatureArr = packageInfo.signatures;
                if (i >= signatureArr.length) {
                    break;
                }
                Signature signature = signatureArr[i];
                if (signature != null) {
                    byte[] byteArray = signature.toByteArray();
                    int length = byteArray != null ? byteArray.length : 0;
                    if (length > 0) {
                        if (length > byteBufferAllocate.remaining()) {
                            byteBufferAllocate.flip();
                            ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(byteBufferAllocate.capacity() + (length * 2));
                            byteBufferAllocate2.put(byteBufferAllocate);
                            byteBufferAllocate = byteBufferAllocate2;
                        }
                        byteBufferAllocate.put(byteArray);
                    }
                }
                i++;
            }
            byteBufferAllocate.flip();
            int iLimit = byteBufferAllocate.limit();
            if (iLimit <= 0) {
                return null;
            }
            byte[] bArr = new byte[iLimit];
            byteBufferAllocate.get(bArr);
            return bArr;
        } catch (Exception unused) {
            return null;
        }
    }
}
