package com.google.mlkit.common.internal.model;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import cn.mucang.sundial.android.tcp.message.training.TrainingMessage;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.mlkit_common.zzad;
import com.google.android.gms.internal.mlkit_common.zzi;
import com.google.common.primitives.UnsignedBytes;
import com.google.mlkit.common.model.LocalModel;
import com.google.mlkit.common.sdkinternal.MlKitContext;
import com.google.mlkit.common.sdkinternal.SharedPrefManager;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
@KeepForSdk
public class ModelUtils {
    private static final GmsLogger zza = null;

    @KeepForSdk
    public static abstract class AutoMLManifest {
        public AutoMLManifest() {
        }

        @KeepForSdk
        public abstract String getLabelsFile();

        @KeepForSdk
        public abstract String getModelFile();

        @KeepForSdk
        public abstract String getModelType();
    }

    @KeepForSdk
    public static abstract class ModelLoggingInfo {
        public ModelLoggingInfo() {
        }

        static ModelLoggingInfo zza(long r1, String r3, boolean r4) {
            return new AutoValue_ModelUtils_ModelLoggingInfo(r1, zzad.zzb(r3), r4);
        }

        @KeepForSdk
        public abstract String getHash();

        @KeepForSdk
        public abstract long getSize();

        @KeepForSdk
        public abstract boolean isManifestModel();
    }

    static {
        zza = new GmsLogger("ModelUtils", "");
    }

    private ModelUtils() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r5v2 */
    @KeepForSdk
    public static ModelLoggingInfo getModelLoggingInfo(Context r11, LocalModel r12) {
        String r0 = r12.getAssetFilePath();
        String r1 = r12.getAbsoluteFilePath();
        Uri r2 = r12.getUri();
        ?? r5 = 0;
        if (r0 != null) goto L5;
        if (r1 != null) goto L27;
        if (r2 != null) goto L117;
        zza.e("ModelUtils", "Local model doesn't have any valid path.");
        return null;
    L117:
        AssetFileDescriptor r6 = zzi.zza(r11, r2, "r");     // Catch: IOException -> L96
        long r7 = r6.getLength();     // Catch: Throwable -> L89
        if (r6 == null) goto L38;
        r6.close();     // Catch: IOException -> L96
    L38:
        SharedPrefManager r8 = (SharedPrefManager) MlKitContext.getInstance().get(SharedPrefManager.class);
        if (r0 == null) goto L41;
        String r9 = r0;
    L44:
        String r10 = r8.zza(r9, r7);
        if (r10 == null) goto L101;
        return ModelLoggingInfo.zza(r7, r10, r12.isManifestFile());
    L101:
        if (r0 == null) goto L55;
        InputStream r13 = r11.getAssets().open(r0);     // Catch: Throwable -> L51 IOException -> L53
    L58:
        if (r13 != null) goto L102;
        String r3 = null;
    L63:
        if (r3 == null) goto L65;
        r8.zzb(r9, r7, r3);     // Catch: IOException -> L60 Throwable -> L81
    L65:
        ModelLoggingInfo r14 = ModelLoggingInfo.zza(r7, r3, r12.isManifestFile());     // Catch: IOException -> L60 Throwable -> L81
        if (r13 != null) goto L108;
    L71:
        return r14;
    L108:
        r13.close();     // Catch: IOException -> L69
    L69:
        e = move-exception;
        zza.e("ModelUtils", "Failed to close model file", e);
    L60:
        IOException e2 = e;
    L74:
        zza.e("ModelUtils", "Failed to open model file", e2);     // Catch: Throwable -> L81
        if (r13 != null) goto L118;
    L80:
        return null;
    L118:
        r13.close();     // Catch: IOException -> L78
    L78:
        e = move-exception;
        zza.e("ModelUtils", "Failed to close model file", e);
        goto L80
    L102:
        r3 = zzc(r13);     // Catch: IOException -> L60 Throwable -> L81
        goto L63
    L55:
        if (r1 == null) goto L57;
        r13 = new FileInputStream(new File(r1));     // Catch: Throwable -> L51 IOException -> L53
        goto L58
    L57:
        r13 = zzi.zzb(r11, (Uri) Preconditions.checkNotNull(r2));     // Catch: Throwable -> L51 IOException -> L53
    L81:
        Throwable th = th;
        r5 = r11;
    L83:
        if (r5 != 0) goto L106;
    L88:
        throw th;
    L106:
        r5.close();     // Catch: IOException -> L86
    L86:
        e = move-exception;
        zza.e("ModelUtils", "Failed to close model file", e);
    L53:
        e = move-exception;
        e2 = e;
        r13 = null;
    L51:
        th = move-exception;
        th = th;
        goto L83
    L41:
        if (r1 == null) goto L43;
        r9 = r1;
        goto L44
    L43:
        r9 = ((Uri) Preconditions.checkNotNull(r2)).toString();
        goto L44
    L89:
        th = move-exception;
        if (r6 != null) goto L112;
    L95:
        throw th;     // Catch: IOException -> L96
    L112:
        r6.close();     // Catch: Throwable -> L93
    L93:
        th = move-exception;
        zzh.zza(th, th);     // Catch: IOException -> L96
    L96:
        e = move-exception;
        zza.e("ModelUtils", "Failed to open model file", e);
        return null;
    L27:
        if (r12.isManifestFile() == false) goto L32;
        r1 = zzb(r11, r1, false);
        if (r1 != null) goto L32;
        return null;
    L32:
        r7 = new File(r1).length();
        goto L38
    L5:
        if (r12.isManifestFile() == false) goto L116;
        r0 = zzb(r11, r0, true);
        if (r0 != null) goto L116;
        return null;
    L116:
        AssetFileDescriptor r15 = r11.getAssets().openFd(r0);     // Catch: IOException -> L22
        r7 = r15.getLength();     // Catch: Throwable -> L15
        if (r15 == null) goto L38;
        r15.close();     // Catch: IOException -> L22
        goto L38
    L15:
        th = move-exception;
        if (r15 != null) goto L114;
    L21:
        throw th;     // Catch: IOException -> L22
    L114:
        r15.close();     // Catch: Throwable -> L19
    L19:
        th = move-exception;
        zzh.zza(th, th);     // Catch: IOException -> L22
    L22:
        e = move-exception;
        zza.e("ModelUtils", "Failed to open model file", e);
        return null;
    }

    @KeepForSdk
    public static String getSHA256(File r2) {
        FileInputStream r0 = new FileInputStream(r2);     // Catch: IOException -> L12
        String r3 = zzc(r0);     // Catch: Throwable -> L6
        r0.close();     // Catch: IOException -> L12
        return r3;
    L6:
        th = move-exception;
        r0.close();     // Catch: Throwable -> L9
    L11:
        throw th;     // Catch: IOException -> L12
    L9:
        th = move-exception;
        zzh.zza(th, th);     // Catch: IOException -> L12
    L12:
        e = move-exception;
        zza.e("ModelUtils", "Failed to create FileInputStream for model: ".concat(e.toString()));
        return null;
    }

    @KeepForSdk
    public static AutoMLManifest parseManifestFile(String r5, boolean r6, Context r7) {
        GmsLogger r0 = zza;
        String r1 = String.valueOf(r5);
        if (r1.length() == 0) goto L5;
        String r2 = "Manifest file path: ".concat(r1);
    L6:
        r0.d("ModelUtils", r2);
        if (r6 == false) goto L13;
        InputStream r3 = r7.getAssets().open(r5);     // Catch: IOException -> L45
        if (r3 == null) goto L52;
        r3.close();     // Catch: IOException -> L45
    L52:
    L40:
        e = move-exception;
        zza.e("ModelUtils", "Error parsing the manifest file.", e);
        return null;
    L17:
        if (r5.isEmpty() == false) goto L19;
        byte[] r8 = new byte[0];     // Catch: Throwable -> L40 JSONException -> L42
    L27:
        String r9 = new String(r8, "UTF-8");     // Catch: Throwable -> L40 JSONException -> L42
        if (r9.length() == 0) goto L30;
        String r10 = "Json string from the manifest file: ".concat(r9);     // Catch: Throwable -> L40 JSONException -> L42
    L31:
        r0.d("ModelUtils", r10);     // Catch: Throwable -> L40 JSONException -> L42
        JSONObject r11 = new JSONObject(r9);     // Catch: Throwable -> L40 JSONException -> L42
        return new AutoValue_ModelUtils_AutoMLManifest(r11.getString("modelType"), r11.getString("modelFile"), r11.getString("labelsFile"));
    L30:
        r10 = new String("Json string from the manifest file: ");     // Catch: Throwable -> L40 JSONException -> L42
        goto L31
    L19:
        if (r6 == false) goto L22;
        InputStream r12 = r7.getAssets().open(r5);     // Catch: Throwable -> L40 JSONException -> L42
    L50:
        int r13 = r12.available();     // Catch: Throwable -> L33
        byte[] r14 = new byte[r13];     // Catch: Throwable -> L33
        r12.read(r14, 0, r13);     // Catch: Throwable -> L33
        if (r12 == null) goto L26;
        r12.close();     // Catch: Throwable -> L40 JSONException -> L42
    L26:
        r8 = r14;
        goto L27
    L33:
        th = move-exception;
        if (r12 != null) goto L48;
    L39:
        throw th;     // Catch: Throwable -> L40 JSONException -> L42
    L48:
        r12.close();     // Catch: Throwable -> L37
    L37:
        th = move-exception;
        zzh.zza(th, th);     // Catch: Throwable -> L40 JSONException -> L42
        goto L39
    L22:
        r12 = new FileInputStream(new File(r5));     // Catch: Throwable -> L40 JSONException -> L42
    L14:
        zza.e("ModelUtils", "Manifest file does not exist.");
        return null;
    L13:
        if (new File(r5).exists() == true) goto L52;
    L5:
        r2 = new String("Manifest file path: ");
        goto L6
    }

    public static boolean zza(File r4, String r5) {
        String r6 = getSHA256(r4);
        GmsLogger r0 = zza;
        String r1 = String.valueOf(r6);
        if (r1.length() == 0) goto L5;
        String r2 = "Calculated hash value is: ".concat(r1);
    L6:
        r0.d("ModelUtils", r2);
        return r5.equals(r6);
    L5:
        r2 = new String("Calculated hash value is: ");
        goto L6
    }

    private static String zzb(Context r1, String r2, boolean r3) {
        AutoMLManifest r4 = parseManifestFile(r2, r3, r1);
        if (r4 != null) goto L7;
        zza.e("ModelUtils", "Failed to parse manifest file.");
        return null;
    L7:
        return new File(new File(r2).getParent(), r4.getModelFile()).toString();
    }

    private static String zzc(InputStream r6) {
        MessageDigest r1 = MessageDigest.getInstance(TrainingMessage.ExtendAttribute.SHA_256);     // Catch: IOException -> L16 NoSuchAlgorithmException -> L17
        byte[] r2 = new byte[1048576];     // Catch: IOException -> L16 NoSuchAlgorithmException -> L17
    L4:
        int r3 = r6.read(r2);     // Catch: IOException -> L16 NoSuchAlgorithmException -> L17
        int r5 = 0;
        if (r3 == (-1)) goto L7;
        r1.update(r2, 0, r3);     // Catch: IOException -> L16 NoSuchAlgorithmException -> L17
        goto L4
    L7:
        byte[] r7 = r1.digest();     // Catch: IOException -> L16 NoSuchAlgorithmException -> L17
        StringBuilder r4 = new StringBuilder();     // Catch: IOException -> L16 NoSuchAlgorithmException -> L17
    L9:
        if (r5 >= r7.length) goto L14;
        String r8 = Integer.toHexString(r7[r5] & UnsignedBytes.MAX_VALUE);     // Catch: IOException -> L16 NoSuchAlgorithmException -> L17
        if (r8.length() != 1) goto L13;
        r4.append('0');     // Catch: IOException -> L16 NoSuchAlgorithmException -> L17
    L13:
        r4.append(r8);     // Catch: IOException -> L16 NoSuchAlgorithmException -> L17
        r5 = r5 + 1;     // Catch: IOException -> L16 NoSuchAlgorithmException -> L17
        goto L9
    L14:
        return r4.toString();
    L16:
        zza.e("ModelUtils", "Failed to read model file");
        return null;
    L17:
        zza.e("ModelUtils", "Do not have SHA-256 algorithm");
        return null;
    }
}
