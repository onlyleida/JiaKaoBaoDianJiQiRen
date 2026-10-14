package org.apache.commons.math3.primes;

import cn.mucang.android.jiakaoyi.signal.communicate.receive.l;
import com.alibaba.fastjson.asm.Opcodes;
import com.autonavi.base.amap.mapcore.tools.GLMapStaticValue;
import com.google.zxing.pdf417.PDF417Common;
import com.sixents.sdk.base.SixentsCode;
import io.agora.rtc.Constants;
import io.agora.rtc.internal.RtcEngineEvent;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import okhttp3.internal.http.StatusLine;
import org.apache.commons.math3.util.FastMath;
import org.opencv.imgproc.Imgproc;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes6.dex */
class SmallPrimes {
    public static final int[] PRIMES;
    public static final int PRIMES_LAST;

    static {
        int[] iArr = {2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, Imgproc.COLOR_RGB2YUV_YV12, 137, 139, Opcodes.FCMPL, 151, 157, Opcodes.IF_ICMPGT, 167, l.Receive_Ai_Camera_Frame_Res, l.Receive_Ai_Hand_Result, 181, 191, 193, 197, Opcodes.IFNONNULL, 211, 223, 227, 229, 233, 239, l.RECEIVE_FAULT_CODE_CLEAR_RET, 251, 257, 263, 269, 271, 277, 281, 283, 293, StatusLine.HTTP_TEMP_REDIRECT, 311, 313, 317, 331, 337, 347, 349, 353, 359, 367, 373, 379, 383, 389, 397, Videoio.CAP_PROP_XI_DATA_FORMAT, Videoio.CAP_PROP_XI_GPO_SELECTOR, Videoio.CAP_PROP_XI_AEAG_LEVEL, Videoio.CAP_PROP_XI_EXPOSURE, Videoio.CAP_PROP_XI_DECIMATION_SELECTOR, Videoio.CAP_PROP_XI_DECIMATION_HORIZONTAL, Videoio.CAP_PROP_XI_AEAG_ROI_OFFSET_X, 443, Videoio.CAP_PROP_XI_WB_KG, 457, Videoio.CAP_PROP_XI_OUTPUT_DATA_BIT_DEPTH, Videoio.CAP_PROP_XI_OUTPUT_DATA_PACKING, Videoio.CAP_PROP_XI_TARGET_TEMP, Videoio.CAP_PROP_XI_CC_MATRIX_00, Videoio.CAP_PROP_XI_CC_MATRIX_20, Videoio.CAP_PROP_XI_CC_MATRIX_30, Videoio.CAP_PROP_XI_ACQ_FRAME_BURST_COUNT, 503, Videoio.CAP_PROP_XI_DEBOUNCE_T1, Videoio.CAP_PROP_XI_DEVICE_MODEL_ID, 523, Videoio.CAP_PROP_XI_LUT_EN, Videoio.CAP_PROP_XI_IS_DEVICE_EXIST, 557, Videoio.CAP_PROP_XI_KNEEPOINT1, 569, Videoio.CAP_PROP_XI_HW_REVISION, 577, Videoio.CAP_PROP_XI_TEST_PATTERN_GENERATOR_SELECTOR, 593, 599, 601, 607, 613, 617, 619, 631, 641, 643, 647, 653, 659, 661, 673, 677, 683, 691, 701, 709, 719, 727, 733, 739, 743, 751, 757, 761, 769, 773, 787, 797, 809, 811, 821, 823, 827, 829, 839, 853, 857, 859, 863, 877, 881, 883, 887, 907, 911, 919, PDF417Common.NUMBER_OF_CODEWORDS, 937, 941, 947, 953, 967, 971, 977, 983, 991, 997, 1009, 1013, 1019, 1021, 1031, 1033, 1039, 1049, 1051, 1061, 1063, 1069, 1087, 1091, 1093, 1097, 1103, RtcEngineEvent.EvtType.EVT_CLIENT_ROLE_CHANGED, RtcEngineEvent.EvtType.EVT_PRIVILEGE_WILL_EXPIRE, 1123, 1129, 1151, 1153, 1163, 1171, 1181, 1187, 1193, SixentsCode.SIXENTS_STATE_AUTHENTICATE_OK, SixentsCode.SIXENTS_STATE_AUTHENTICATE_UNSUPPORTED_PROTOCOL, SixentsCode.SIXENTS_STATE_INSTANCE_UNUSED_FAILURE, 1223, 1229, 1231, 1237, 1249, 1259, 1277, 1279, 1283, 1289, 1291, 1297, SixentsCode.SIXENTS_STATE_NW_CONNECT_SUCCESS, SixentsCode.SIXENTS_STATE_NW_CONNECT_LOADING, SixentsCode.SIXENTS_STATE_SERVER_AUTHENTICATE_SUCCESS, 1319, 1321, 1327, 1361, 1367, 1373, 1381, 1399, 1409, 1423, 1427, 1429, 1433, 1439, 1447, 1451, 1453, 1459, 1471, 1481, 1483, 1487, 1489, 1493, 1499, 1511, 1523, 1531, 1543, 1549, 1553, 1559, 1567, 1571, 1579, 1583, 1597, 1601, 1607, 1609, 1613, 1619, 1621, 1627, 1637, 1657, 1663, 1667, 1669, 1693, 1697, 1699, 1709, 1721, 1723, 1733, 1741, 1747, 1753, 1759, 1777, 1783, 1787, 1789, 1801, 1811, 1823, 1831, 1847, 1861, 1867, 1871, 1873, 1877, 1879, 1889, 1901, 1907, 1913, 1931, 1933, 1949, 1951, 1973, 1979, 1987, 1993, 1997, 1999, 2003, GLMapStaticValue.MAP_PARAMETERNAME_SATELLITE, GLMapStaticValue.AM_PARAMETERNAME_SHOW_BUILDING_MARK, 2027, 2029, 2039, 2053, Constants.LOG_FILTER_DEBUG, 2069, 2081, 2083, 2087, 2089, 2099, 2111, 2113, 2129, 2131, 2137, 2141, 2143, 2153, 2161, 2179, 2203, 2207, 2213, 2221, 2237, 2239, 2243, 2251, 2267, 2269, 2273, 2281, 2287, 2293, 2297, 2309, 2311, 2333, 2339, 2341, 2347, 2351, 2357, 2371, 2377, 2381, 2383, 2389, 2393, 2399, 2411, 2417, 2423, 2437, 2441, 2447, 2459, 2467, 2473, 2477, 2503, 2521, 2531, 2539, 2543, 2549, 2551, 2557, 2579, 2591, 2593, 2609, 2617, 2621, 2633, 2647, 2657, 2659, 2663, 2671, 2677, 2683, 2687, 2689, 2693, 2699, 2707, 2711, 2713, 2719, 2729, 2731, 2741, 2749, 2753, 2767, 2777, 2789, 2791, 2797, GLMapStaticValue.AM_PARAMETERNAME_RENDER_COMPLETE, 2803, 2819, 2833, 2837, 2843, 2851, 2857, 2861, 2879, 2887, 2897, 2903, 2909, 2917, 2927, 2939, 2953, 2957, 2963, 2969, 2971, 2999, GLMapStaticValue.AM_PARAMETERNAME_PROCESS_REALCITY, 3011, 3019, 3023, 3037, 3041, 3049, 3061, 3067, 3079, 3083, 3089, 3109, 3119, 3121, 3137, 3163, 3167, 3169, 3181, 3187, 3191, 3203, 3209, 3217, 3221, 3229, 3251, 3253, 3257, 3259, 3271, 3299, 3301, 3307, 3313, 3319, 3323, 3329, 3331, 3343, 3347, 3359, 3361, 3371, 3373, 3389, 3391, 3407, 3413, 3433, 3449, 3457, 3461, 3463, 3467, 3469, 3491, 3499, 3511, 3517, 3527, 3529, 3533, 3539, 3541, 3547, 3557, 3559, 3571, 3581, 3583, 3593, 3607, 3613, 3617, 3623, 3631, 3637, 3643, 3659, 3671};
        PRIMES = iArr;
        PRIMES_LAST = iArr[iArr.length - 1];
    }

    private SmallPrimes() {
    }

    public static int boundedTrialDivision(int i, int i2, List<Integer> list) {
        int i3 = PRIMES_LAST;
        while (true) {
            int i4 = i3 + 2;
            if (i4 > i2) {
                break;
            }
            if (i % i4 == 0) {
                i /= i4;
                list.add(Integer.valueOf(i4));
                break;
            }
            i3 = i4 + 4;
            if (i % i3 == 0) {
                i /= i3;
                list.add(Integer.valueOf(i3));
                break;
            }
        }
        if (i != 1) {
            list.add(Integer.valueOf(i));
        }
        return i;
    }

    public static boolean millerRabinPrimeTest(int i) {
        int i2 = i - 1;
        int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(i2);
        int i3 = i2 >> iNumberOfTrailingZeros;
        int i4 = i >= 2047 ? 2 : 1;
        if (i >= 1373653) {
            i4 = 3;
        }
        if (i >= 25326001) {
            i4 = 4;
        }
        BigInteger bigIntegerValueOf = BigInteger.valueOf(i3);
        long j = i;
        BigInteger bigIntegerValueOf2 = BigInteger.valueOf(j);
        for (int i5 = 0; i5 < i4; i5++) {
            int iIntValue = BigInteger.valueOf(PRIMES[i5]).modPow(bigIntegerValueOf, bigIntegerValueOf2).intValue();
            if (1 != iIntValue && iIntValue != i2) {
                for (int i6 = 1; i6 <= iNumberOfTrailingZeros - 1 && i2 != iIntValue; i6++) {
                    long j2 = iIntValue;
                    iIntValue = (int) ((j2 * j2) % j);
                    if (1 == iIntValue) {
                        return false;
                    }
                }
                if (i2 != iIntValue) {
                    return false;
                }
            }
        }
        return true;
    }

    public static int smallTrialDivision(int i, List<Integer> list) {
        for (int i2 : PRIMES) {
            while (i % i2 == 0) {
                i /= i2;
                list.add(Integer.valueOf(i2));
            }
        }
        return i;
    }

    public static List<Integer> trialDivision(int i) {
        ArrayList arrayList = new ArrayList(32);
        int iSmallTrialDivision = smallTrialDivision(i, arrayList);
        if (1 == iSmallTrialDivision) {
            return arrayList;
        }
        boundedTrialDivision(iSmallTrialDivision, (int) FastMath.sqrt(iSmallTrialDivision), arrayList);
        return arrayList;
    }
}
