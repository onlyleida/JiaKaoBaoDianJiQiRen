package org.opencv.android;

import android.util.Log;
import com.iflytek.speech.VoiceWakeuperAidl;
import java.util.StringTokenizer;
import org.opencv.core.Core;

/* JADX INFO: loaded from: classes6.dex */
class StaticHelper {
    private static final String TAG = "OpenCV/StaticHelper";

    StaticHelper() {
    }

    private static native String getLibraryList();

    public static boolean initOpenCV(boolean z) {
        String libraryList;
        if (z) {
            loadLibrary("cudart");
            loadLibrary("nppc");
            loadLibrary("nppi");
            loadLibrary("npps");
            loadLibrary("cufft");
            loadLibrary("cublas");
        }
        Log.d(TAG, "Trying to get library list");
        try {
            System.loadLibrary("opencv_info");
            libraryList = getLibraryList();
        } catch (UnsatisfiedLinkError unused) {
            Log.e(TAG, "OpenCV error: Cannot load info library for OpenCV");
            libraryList = "";
        }
        Log.d(TAG, "Library list: \"" + libraryList + "\"");
        Log.d(TAG, "First attempt to load libs");
        if (!initOpenCVLibs(libraryList)) {
            Log.d(TAG, "First attempt to load libs fails");
            return false;
        }
        Log.d(TAG, "First attempt to load libs is OK");
        for (String str : Core.getBuildInformation().split(System.getProperty("line.separator"))) {
            Log.i(TAG, str);
        }
        return true;
    }

    private static boolean initOpenCVLibs(String str) {
        Log.d(TAG, "Trying to init OpenCV libs");
        if (str == null || str.length() == 0) {
            return loadLibrary("opencv_java4");
        }
        Log.d(TAG, "Trying to load libs by dependency list");
        StringTokenizer stringTokenizer = new StringTokenizer(str, VoiceWakeuperAidl.PARAMS_SEPARATE);
        boolean zLoadLibrary = true;
        while (stringTokenizer.hasMoreTokens()) {
            zLoadLibrary &= loadLibrary(stringTokenizer.nextToken());
        }
        return zLoadLibrary;
    }

    private static boolean loadLibrary(String str) {
        Log.d(TAG, "Trying to load library " + str);
        try {
            System.loadLibrary(str);
            Log.d(TAG, "Library " + str + " loaded");
            return true;
        } catch (UnsatisfiedLinkError e2) {
            Log.d(TAG, "Cannot load library \"" + str + "\"");
            e2.printStackTrace();
            return false;
        }
    }
}
