package com.serenegiant.utils;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.UriPermission;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.os.StatFs;
import android.provider.DocumentsContract;
import android.text.TextUtils;
import android.util.Log;
import androidx.documentfile.a.a;
import androidx.fragment.app.d;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public class SDUtils {
    private static final String TAG = "SDUtils";

    public interface FileFilter {
        boolean accept(a aVar);
    }

    public interface handleOnResultDelegater {
        void onFailed(int i, Intent intent);

        boolean onResult(int i, Uri uri, Intent intent);
    }

    private static void clearUri(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(context.getPackageName(), 0);
        if (sharedPreferences == null || !sharedPreferences.contains(str)) {
            return;
        }
        try {
            sharedPreferences.edit().remove(str).apply();
        } catch (Exception e2) {
            Log.w(TAG, e2);
        }
    }

    @TargetApi(21)
    public static File createStorageDir(Context context, int i) {
        Uri storageUri;
        if (!BuildCheck.isLollipop() || (storageUri = getStorageUri(context, i)) == null) {
            return null;
        }
        String path = UriHelper.getPath(context, a.e(context, storageUri).g());
        if (TextUtils.isEmpty(path)) {
            return null;
        }
        return new File(path);
    }

    @TargetApi(21)
    public static File createStorageFile(Context context, int i, String str, String str2) {
        return createStorageFile(context, getStorageUri(context, i), str, str2);
    }

    @TargetApi(21)
    public static int createStorageFileFD(Context context, int i, String str, String str2) {
        Log.i(TAG, "createStorageFileFD:" + str2);
        return createStorageFileFD(context, getStorageUri(context, i), str, str2);
    }

    private static String getKey(int i) {
        return String.format(Locale.US, "SDUtils-%d", Integer.valueOf(i));
    }

    public static a getStorage(Context context, int i) throws IOException {
        return getStorage(context, i, (String) null);
    }

    @TargetApi(21)
    public static a getStorageFile(Context context, int i, String str, String str2) throws IOException {
        return getStorageFile(context, i, (String) null, str, str2);
    }

    @TargetApi(21)
    public static ParcelFileDescriptor getStorageFileFD(Context context, int i, String str, String str2, String str3) throws IOException {
        a storage;
        if (!BuildCheck.isLollipop() || (storage = getStorage(context, i, str)) == null) {
            throw new FileNotFoundException();
        }
        a aVarD = storage.d(str3);
        if (aVarD == null) {
            return context.getContentResolver().openFileDescriptor(storage.c(str2, str3).g(), "rw");
        }
        if (aVarD.i()) {
            return context.getContentResolver().openFileDescriptor(aVarD.g(), "rw");
        }
        throw new IOException("directory with same name already exists");
    }

    @SuppressLint({"NewApi"})
    public static StorageInfo getStorageInfo(Context context, a aVar) {
        try {
            String path = UriHelper.getPath(context, aVar.g());
            if (path != null) {
                File file = new File(path);
                if (file.isDirectory() && file.canRead()) {
                    long totalSpace = file.getTotalSpace();
                    long freeSpace = file.getFreeSpace();
                    if (freeSpace < file.getUsableSpace()) {
                        freeSpace = file.getUsableSpace();
                    }
                    return new StorageInfo(totalSpace, freeSpace);
                }
            }
        } catch (Exception unused) {
        }
        if (!BuildCheck.isJellyBeanMR2()) {
            return null;
        }
        try {
            StatFs statFs = new StatFs(UriHelper.getPath(context, aVar.g()));
            return new StorageInfo(statFs.getTotalBytes(), statFs.getAvailableBytes());
        } catch (Exception unused2) {
            return null;
        }
    }

    @TargetApi(21)
    public static InputStream getStorageInputStream(Context context, int i, String str, String str2) throws IOException {
        return getStorageInputStream(context, i, (String) null, str, str2);
    }

    @TargetApi(21)
    public static OutputStream getStorageOutputStream(Context context, int i, String str, String str2) throws IOException {
        return getStorageOutputStream(context, i, (String) null, str, str2);
    }

    @TargetApi(21)
    public static Uri getStorageUri(Context context, int i) {
        Uri uriLoadUri;
        if (!BuildCheck.isLollipop() || (uriLoadUri = loadUri(context, getKey(i))) == null) {
            return null;
        }
        boolean z = false;
        Iterator<UriPermission> it = context.getContentResolver().getPersistedUriPermissions().iterator();
        while (it.hasNext()) {
            if (it.next().getUri().equals(uriLoadUri)) {
                z = true;
                break;
            }
        }
        if (z) {
            return uriLoadUri;
        }
        return null;
    }

    public static boolean handleOnResult(Context context, int i, int i2, Intent intent, handleOnResultDelegater handleonresultdelegater) {
        Uri data;
        if (intent != null && i2 == -1 && (data = intent.getData()) != null) {
            try {
                return handleonresultdelegater.onResult(i, data, intent);
            } catch (Exception e2) {
                Log.w(TAG, e2);
            }
        }
        try {
            clearUri(context, getKey(i));
            handleonresultdelegater.onFailed(i, intent);
            return false;
        } catch (Exception e3) {
            Log.w(TAG, e3);
            return false;
        }
    }

    @TargetApi(19)
    public static boolean hasStorageAccess(Context context, int i) {
        Uri uriLoadUri;
        if (BuildCheck.isLollipop() && (uriLoadUri = loadUri(context, getKey(i))) != null) {
            Iterator<UriPermission> it = context.getContentResolver().getPersistedUriPermissions().iterator();
            while (it.hasNext()) {
                if (it.next().getUri().equals(uriLoadUri)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static Collection<a> listFiles(Context context, a aVar, FileFilter fileFilter) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (aVar.h()) {
            for (a aVar2 : aVar.j()) {
                if (fileFilter == null || fileFilter.accept(aVar2)) {
                    arrayList.add(aVar2);
                }
            }
        }
        return arrayList;
    }

    private static Uri loadUri(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(context.getPackageName(), 0);
        if (sharedPreferences == null || !sharedPreferences.contains(str)) {
            return null;
        }
        try {
            return Uri.parse(sharedPreferences.getString(str, null));
        } catch (Exception e2) {
            Log.w(TAG, e2);
            return null;
        }
    }

    @TargetApi(19)
    private static Intent prepareCreateDocument(String str, String str2) {
        Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT");
        intent.setType(str);
        if (!TextUtils.isEmpty(str2)) {
            intent.putExtra("android.intent.extra.TITLE", str2);
        }
        return intent;
    }

    @TargetApi(19)
    private static Intent prepareOpenDocumentIntent(String str) {
        Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT");
        intent.setType(str);
        return intent;
    }

    @TargetApi(21)
    private static Intent prepareStorageAccessPermission() {
        return new Intent("android.intent.action.OPEN_DOCUMENT_TREE");
    }

    @TargetApi(21)
    public static void releaseStorageAccessPermission(Context context, int i) {
        String key;
        Uri uriLoadUri;
        if (!BuildCheck.isLollipop() || (uriLoadUri = loadUri(context, (key = getKey(i)))) == null) {
            return;
        }
        context.getContentResolver().releasePersistableUriPermission(uriLoadUri, 3);
        clearUri(context, key);
    }

    @TargetApi(19)
    public static void requestCreateDocument(Activity activity, String str, int i) {
        if (BuildCheck.isKitKat()) {
            activity.startActivityForResult(prepareCreateDocument(str, null), i);
        }
    }

    @TargetApi(19)
    public static boolean requestDeleteDocument(Context context, Uri uri) {
        try {
            return BuildCheck.isKitKat() && DocumentsContract.deleteDocument(context.getContentResolver(), uri);
        } catch (FileNotFoundException unused) {
            return false;
        }
    }

    @TargetApi(19)
    public static void requestOpenDocument(Activity activity, String str, int i) {
        if (BuildCheck.isKitKat()) {
            activity.startActivityForResult(prepareOpenDocumentIntent(str), i);
        }
    }

    @TargetApi(21)
    public static Uri requestStorageAccess(Activity activity, int i) {
        if (!BuildCheck.isLollipop()) {
            return null;
        }
        Uri storageUri = getStorageUri(activity, i);
        if (storageUri == null) {
            activity.startActivityForResult(prepareStorageAccessPermission(), i);
        }
        return storageUri;
    }

    @TargetApi(21)
    public static Uri requestStorageAccessPermission(Context context, int i, Uri uri) {
        return requestStorageAccessPermission(context, i, uri, 3);
    }

    private static void saveUri(Context context, String str, Uri uri) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(context.getPackageName(), 0);
        if (sharedPreferences != null) {
            sharedPreferences.edit().putString(str, uri.toString()).apply();
        }
    }

    @TargetApi(21)
    public static File createStorageFile(Context context, Uri uri, String str, String str2) {
        Log.i(TAG, "createStorageFile:" + str2);
        if (!BuildCheck.isLollipop() || uri == null || TextUtils.isEmpty(str2)) {
            return null;
        }
        String path = UriHelper.getPath(context, a.e(context, uri).c(str, str2).g());
        if (TextUtils.isEmpty(path)) {
            return null;
        }
        return new File(path);
    }

    public static a getStorage(Context context, int i, String str) throws IOException {
        Uri storageUri;
        if (!BuildCheck.isLollipop() || (storageUri = getStorageUri(context, i)) == null) {
            return null;
        }
        a aVarE = a.e(context, storageUri);
        if (!TextUtils.isEmpty(str)) {
            for (String str2 : str.split("/")) {
                if (!TextUtils.isEmpty(str2)) {
                    a aVarD = aVarE.d(str2);
                    if (aVarD != null && aVarD.h()) {
                        aVarE = aVarD;
                    } else {
                        if (aVarD != null) {
                            throw new IOException("can't create directory, file with same name already exists");
                        }
                        if (!aVarE.a()) {
                            throw new IOException("can't create directory");
                        }
                        aVarE = aVarE.b(str2);
                    }
                }
            }
        }
        return aVarE;
    }

    @TargetApi(21)
    public static a getStorageFile(Context context, int i, String str, String str2, String str3) throws IOException {
        a storage;
        if (!BuildCheck.isLollipop() || (storage = getStorage(context, i, str)) == null) {
            return null;
        }
        a aVarD = storage.d(str3);
        if (aVarD == null) {
            return storage.c(str2, str3);
        }
        if (aVarD.i()) {
            return aVarD;
        }
        throw new IOException("directory with same name already exists");
    }

    @TargetApi(21)
    public static InputStream getStorageInputStream(Context context, int i, String str, String str2, String str3) throws IOException {
        a storage;
        a aVarD;
        if (!BuildCheck.isLollipop() || (storage = getStorage(context, i, str)) == null || (aVarD = storage.d(str3)) == null) {
            throw new FileNotFoundException();
        }
        if (aVarD.i()) {
            return context.getContentResolver().openInputStream(aVarD.g());
        }
        throw new IOException("directory with same name already exists");
    }

    @TargetApi(21)
    public static OutputStream getStorageOutputStream(Context context, int i, String str, String str2, String str3) throws IOException {
        a storage;
        if (!BuildCheck.isLollipop() || (storage = getStorage(context, i, str)) == null) {
            throw new FileNotFoundException();
        }
        a aVarD = storage.d(str3);
        if (aVarD == null) {
            return context.getContentResolver().openOutputStream(storage.c(str2, str3).g());
        }
        if (aVarD.i()) {
            return context.getContentResolver().openOutputStream(aVarD.g());
        }
        throw new IOException("directory with same name already exists");
    }

    @TargetApi(21)
    public static Uri requestStorageAccessPermission(Context context, int i, Uri uri, int i2) {
        if (!BuildCheck.isLollipop()) {
            return null;
        }
        context.getContentResolver().takePersistableUriPermission(uri, i2);
        saveUri(context, getKey(i), uri);
        return uri;
    }

    @TargetApi(21)
    public static int createStorageFileFD(Context context, Uri uri, String str, String str2) {
        Log.i(TAG, "createStorageFileFD:" + str2);
        if (BuildCheck.isLollipop() && uri != null && !TextUtils.isEmpty(str2)) {
            try {
                ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(a.e(context, uri).c(str, str2).g(), "rw");
                if (parcelFileDescriptorOpenFileDescriptor != null) {
                    return parcelFileDescriptorOpenFileDescriptor.getFd();
                }
                return 0;
            } catch (FileNotFoundException e2) {
                Log.w(TAG, e2);
            }
        }
        return 0;
    }

    @TargetApi(19)
    public static void requestCreateDocument(Activity activity, String str, String str2, int i) {
        if (BuildCheck.isKitKat()) {
            activity.startActivityForResult(prepareCreateDocument(str, str2), i);
        }
    }

    @TargetApi(19)
    public static void requestOpenDocument(d dVar, String str, int i) {
        if (BuildCheck.isKitKat()) {
            dVar.startActivityForResult(prepareOpenDocumentIntent(str), i);
        }
    }

    @TargetApi(21)
    public static Uri requestStorageAccess(d dVar, int i) {
        if (!BuildCheck.isLollipop()) {
            return null;
        }
        Uri storageUri = getStorageUri(dVar, i);
        if (storageUri == null) {
            dVar.startActivityForResult(prepareStorageAccessPermission(), i);
        }
        return storageUri;
    }

    @TargetApi(19)
    public static void requestCreateDocument(d dVar, String str, int i) {
        if (BuildCheck.isKitKat()) {
            dVar.startActivityForResult(prepareCreateDocument(str, null), i);
        }
    }

    @TargetApi(19)
    @Deprecated
    public static void requestOpenDocument(Fragment fragment, String str, int i) {
        if (BuildCheck.isKitKat()) {
            fragment.startActivityForResult(prepareOpenDocumentIntent(str), i);
        }
    }

    @TargetApi(19)
    public static void requestCreateDocument(d dVar, String str, String str2, int i) {
        if (BuildCheck.isKitKat()) {
            dVar.startActivityForResult(prepareCreateDocument(str, str2), i);
        }
    }

    @TargetApi(19)
    public static void requestOpenDocument(androidx.fragment.app.Fragment fragment, String str, int i) {
        if (BuildCheck.isKitKat()) {
            fragment.startActivityForResult(prepareOpenDocumentIntent(str), i);
        }
    }

    @TargetApi(21)
    @Deprecated
    public static Uri requestStorageAccess(Fragment fragment, int i) {
        Uri storageUri = getStorageUri(fragment.getActivity(), i);
        if (storageUri == null) {
            fragment.startActivityForResult(prepareStorageAccessPermission(), i);
        }
        return storageUri;
    }

    public static a getStorageFile(Context context, a aVar, String str, String str2, String str3) throws IOException {
        a storage = getStorage(context, aVar, str);
        if (storage == null) {
            return null;
        }
        a aVarD = storage.d(str3);
        if (aVarD != null) {
            if (aVarD.i()) {
                return aVarD;
            }
            throw new IOException("directory with same name already exists");
        }
        return storage.c(str2, str3);
    }

    @TargetApi(19)
    public static void requestCreateDocument(Fragment fragment, String str, int i) {
        if (BuildCheck.isKitKat()) {
            fragment.startActivityForResult(prepareCreateDocument(str, null), i);
        }
    }

    @TargetApi(21)
    public static Uri requestStorageAccess(androidx.fragment.app.Fragment fragment, int i) {
        Uri storageUri = null;
        if (BuildCheck.isLollipop()) {
            d activity = fragment.getActivity();
            storageUri = activity != null ? getStorageUri(activity, i) : null;
            if (storageUri == null) {
                fragment.startActivityForResult(prepareStorageAccessPermission(), i);
            }
        }
        return storageUri;
    }

    public static InputStream getStorageInputStream(Context context, a aVar, String str, String str2, String str3) throws IOException {
        a aVarD;
        a storage = getStorage(context, aVar, str);
        if (storage != null && (aVarD = storage.d(str3)) != null) {
            if (aVarD.i()) {
                return context.getContentResolver().openInputStream(aVarD.g());
            }
            throw new IOException("directory with same name already exists");
        }
        throw new FileNotFoundException();
    }

    @TargetApi(19)
    public static void requestCreateDocument(Fragment fragment, String str, String str2, int i) {
        if (BuildCheck.isKitKat()) {
            fragment.startActivityForResult(prepareCreateDocument(str, str2), i);
        }
    }

    public static ParcelFileDescriptor getStorageFileFD(Context context, a aVar, String str, String str2, String str3) throws IOException {
        a storage = getStorage(context, aVar, str);
        if (storage != null) {
            a aVarD = storage.d(str3);
            if (aVarD != null) {
                if (aVarD.i()) {
                    return context.getContentResolver().openFileDescriptor(aVarD.g(), "rw");
                }
                throw new IOException("directory with same name already exists");
            }
            return context.getContentResolver().openFileDescriptor(storage.c(str2, str3).g(), "rw");
        }
        throw new FileNotFoundException();
    }

    @TargetApi(19)
    public static void requestCreateDocument(androidx.fragment.app.Fragment fragment, String str, int i) {
        if (BuildCheck.isKitKat()) {
            fragment.startActivityForResult(prepareCreateDocument(str, null), i);
        }
    }

    public static OutputStream getStorageOutputStream(Context context, a aVar, String str, String str2, String str3) throws IOException {
        a storage = getStorage(context, aVar, str);
        if (storage != null) {
            a aVarD = storage.d(str3);
            if (aVarD != null) {
                if (aVarD.i()) {
                    return context.getContentResolver().openOutputStream(aVarD.g());
                }
                throw new IOException("directory with same name already exists");
            }
            return context.getContentResolver().openOutputStream(storage.c(str2, str3).g());
        }
        throw new FileNotFoundException();
    }

    public static a getStorage(Context context, a aVar, String str) throws IOException {
        if (!TextUtils.isEmpty(str)) {
            for (String str2 : str.split("/")) {
                if (!TextUtils.isEmpty(str2)) {
                    a aVarD = aVar.d(str2);
                    if (aVarD != null && aVarD.h()) {
                        aVar = aVarD;
                    } else if (aVarD == null) {
                        if (aVar.a()) {
                            aVar = aVar.b(str2);
                        } else {
                            throw new IOException("can't create directory");
                        }
                    } else {
                        throw new IOException("can't create directory, file with same name already exists");
                    }
                }
            }
        }
        return aVar;
    }

    @TargetApi(19)
    public static void requestCreateDocument(androidx.fragment.app.Fragment fragment, String str, String str2, int i) {
        if (BuildCheck.isKitKat()) {
            fragment.startActivityForResult(prepareCreateDocument(str, str2), i);
        }
    }
}
