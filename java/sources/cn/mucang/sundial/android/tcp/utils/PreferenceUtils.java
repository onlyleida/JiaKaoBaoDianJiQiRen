package cn.mucang.sundial.android.tcp.utils;

import cn.mucang.android.core.utils.j0;

/* JADX INFO: loaded from: classes5.dex */
public class PreferenceUtils {
    public static final String FILE_NAME = "Sundial";
    public static final String KEY_CLEAR_RECORD_TIMESTAMP = "clear_record_timestamp";
    public static final String KEY_COACH_TAKE_PHOTO = "coach_take_photo";
    public static final String KEY_DISABLE_TRAINING_STATUS = "disable_training_status";
    public static final String KEY_INIT_DEFAULT_PARAM = "init_default_param";
    public static final String KEY_K2_LEARN_DATA_FACTOR = "k2_learn_data_factor";
    public static final String KEY_K3_LEARN_DATA_FACTOR = "k3_learn_data_factor";
    public static final String KEY_LAST_TIME_STAMP = "app.last_timestamp";
    public static final String KEY_LEARN_DATA_FACTOR = "learn_data_factor";
    public static final String KEY_LIVE_IMAGE_SECOND = "live_image_second";
    public static final String KEY_LOCATION_DATA_STRATEGY = "location_data_strategy";
    public static final String KEY_LOGIN_MODE = "login_mode";
    public static final String KEY_LOGIN_OUT_SECOND = "login_out_second";
    public static final String KEY_MAX_SPEED_LIMIT = "max_speed_limit";
    public static final String KEY_MILEAGE_ACCURACY = "mileage_accuracy";
    public static final String KEY_OBD_LOCATION_STRATEGY = "obd_location_strategy";
    public static final String KEY_TAKE_PHOTO_DELAY = "take_photo_delay";
    public static final String KEY_TAKE_PHOTO_VOICE = "take_photo_voice";

    private PreferenceUtils() {
    }

    public static boolean getBoolean(String str, boolean z) {
        return getBoolean(FILE_NAME, str, z);
    }

    public static float getFloat(String str, float f2) {
        return getFloat(FILE_NAME, str, f2);
    }

    public static int getInt(String str, int i) {
        return getInt(FILE_NAME, str, i);
    }

    public static long getLong(String str, long j) {
        return getLong(FILE_NAME, str, j);
    }

    public static String getString(String str, String str2) {
        return getString(FILE_NAME, str, str2);
    }

    public static void putBoolean(String str, boolean z) {
        putBoolean(FILE_NAME, str, z);
    }

    public static void putFloat(String str, float f2) {
        putFloat(FILE_NAME, str, f2);
    }

    public static void putInt(String str, int i) {
        putInt(FILE_NAME, str, i);
    }

    public static void putLong(String str, long j) {
        putLong(FILE_NAME, str, j);
    }

    public static void putString(String str, String str2) {
        putString(FILE_NAME, str, str2);
    }

    public static boolean getBoolean(String str, String str2, boolean z) {
        return j0.g(str, str2, z);
    }

    public static float getFloat(String str, String str2, float f2) {
        return j0.c(str, str2, f2);
    }

    public static int getInt(String str, String str2, int i) {
        return j0.d(str, str2, i);
    }

    public static long getLong(String str, String str2, long j) {
        return j0.e(str, str2, j);
    }

    public static String getString(String str, String str2, String str3) {
        return j0.f(str, str2, str3);
    }

    public static void putBoolean(String str, String str2, boolean z) {
        j0.l(str, str2, z);
    }

    public static void putFloat(String str, String str2, float f2) {
        j0.h(str, str2, f2);
    }

    public static void putInt(String str, String str2, int i) {
        j0.i(str, str2, i);
    }

    public static void putLong(String str, String str2, long j) {
        j0.j(str, str2, j);
    }

    public static void putString(String str, String str2, String str3) {
        j0.k(str, str2, str3);
    }
}
