package cn.mucang.sundial.android.tcp.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.Base64;
import androidx.exifinterface.media.ExifInterface;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.encode.b;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.o0;
import cn.mucang.android.core.utils.x;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.db.entity.RegisterInfo;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.encoder.BytesEncoder;
import cn.mucang.sundial.android.tcp.message.RawMessage;
import com.blankj.utilcode.util.f;
import com.google.common.base.Ascii;
import com.google.common.primitives.UnsignedBytes;
import com.tencent.connect.common.Constants;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.Enumeration;

/* JADX INFO: loaded from: classes5.dex */
public class DeviceUtils {
    public static final String __SP_IMEI__ = "__IMEI__";
    private static final SimpleDateFormat BCD_FORMAT = new SimpleDateFormat("yyMMddHHmmss");
    private static final SimpleDateFormat BCD_3_FORMAT = new SimpleDateFormat("HHmmss");

    private DeviceUtils() {
    }

    public static byte[] bytesFromString(String str) {
        try {
            if (n0.e(str)) {
                return new byte[1];
            }
            byte[] bytes = str.getBytes("GBK");
            byte[] bArr = new byte[bytes.length + 1];
            System.arraycopy(bytes, 0, bArr, 0, bytes.length);
            return bArr;
        } catch (UnsupportedEncodingException e2) {
            throw b.a(e2);
        }
    }

    public static void checkBYTE(int i) {
        if (isValidBYTE(i)) {
            return;
        }
        throw new IllegalArgumentException("非法的BYTE类型：" + i);
    }

    public static void checkDWORD(long j) {
        if (isValidDWORD(j)) {
            return;
        }
        throw new IllegalArgumentException("非法的DWORD类型:" + j);
    }

    public static void checkWORD(int i) {
        if (isValidWORD(i)) {
            return;
        }
        throw new IllegalArgumentException("非法的WORD类型：" + i);
    }

    public static void close(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static BigDecimal divideTen(long j) {
        return BigDecimal.valueOf(j).divide(BigDecimal.TEN, 1, RoundingMode.DOWN);
    }

    public static String formatMessageId(int i) {
        String hexString = Integer.toHexString(i);
        while (hexString.length() < 4) {
            hexString = "0" + hexString;
        }
        return "0x" + hexString;
    }

    public static int getBrightness(Context context) {
        try {
            return Settings.System.getInt(context.getContentResolver(), "screen_brightness");
        } catch (Settings.SettingNotFoundException unused) {
            return 120;
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static String getCarTypeCode(String str) {
        str.hashCode();
        byte b = -1;
        switch (str.hashCode()) {
            case 68:
                if (str.equals("D")) {
                    b = 0;
                }
                break;
            case 69:
                if (str.equals(ExifInterface.LONGITUDE_EAST)) {
                    b = 1;
                }
                break;
            case 70:
                if (str.equals("F")) {
                    b = 2;
                }
                break;
            case 77:
                if (str.equals("M")) {
                    b = 3;
                }
                break;
            case 78:
                if (str.equals("N")) {
                    b = 4;
                }
                break;
            case 80:
                if (str.equals("P")) {
                    b = 5;
                }
                break;
            case 2064:
                if (str.equals("A1")) {
                    b = 6;
                }
                break;
            case 2065:
                if (str.equals("A2")) {
                    b = 7;
                }
                break;
            case 2066:
                if (str.equals("A3")) {
                    b = 8;
                }
                break;
            case 2095:
                if (str.equals("B1")) {
                    b = 9;
                }
                break;
            case 2096:
                if (str.equals("B2")) {
                    b = 10;
                }
                break;
            case 2126:
                if (str.equals("C1")) {
                    b = Ascii.VT;
                }
                break;
            case 2127:
                if (str.equals("C2")) {
                    b = Ascii.FF;
                }
                break;
            case 2128:
                if (str.equals("C3")) {
                    b = Ascii.CR;
                }
                break;
            case 2129:
                if (str.equals("C4")) {
                    b = Ascii.SO;
                }
                break;
            case 2130:
                if (str.equals("C5")) {
                    b = Ascii.SI;
                }
                break;
        }
        switch (b) {
            case 0:
                return "31";
            case 1:
                return "32";
            case 2:
                return "33";
            case 3:
                return "41";
            case 4:
                return "42";
            case 5:
                return "43";
            case 6:
                return "01";
            case 7:
                return "02";
            case 8:
                return "03";
            case 9:
                return Constants.VIA_REPORT_TYPE_SHARE_TO_QZONE;
            case 10:
                return Constants.VIA_REPORT_TYPE_SET_AVATAR;
            case 11:
                return "21";
            case 12:
                return Constants.VIA_REPORT_TYPE_DATALINE;
            case 13:
                return Constants.VIA_REPORT_TYPE_SHARE_TO_TROOPBAR;
            case 14:
                return Constants.VIA_REPORT_TYPE_CHAT_AIO;
            case 15:
                return Constants.VIA_REPORT_TYPE_CHAT_AUDIO;
            default:
                return "00";
        }
    }

    public static String getImageSize(int i) {
        switch (i) {
            case 1:
                return "320×240";
            case 2:
                return "640×480";
            case 3:
                return "800×600";
            case 4:
                return "1024×768";
            case 5:
                return "176×144[Qcif]";
            case 6:
                return "352×288[Cif]";
            case 7:
                return "704×288[HALF D1]";
            case 8:
                return "704×576[D1]";
            default:
                return "0x0[Unknown]";
        }
    }

    public static String getImei() {
        String strJ;
        String strF = f.b().f(__SP_IMEI__, "");
        if (strF.length() >= 15) {
            return strF;
        }
        String imeiByApi = getImeiByApi();
        if (n0.e(imeiByApi) && (strJ = o0.j()) != null && strJ.length() >= 15) {
            imeiByApi = strJ;
        }
        return imeiByApi == null ? "" : imeiByApi;
    }

    @SuppressLint({"NewApi", "MissingPermission"})
    private static String getImeiByApi() {
        try {
            return ((TelephonyManager) MucangConfig.getContext().getSystemService("phone")).getImei();
        } catch (Exception unused) {
            return null;
        }
    }

    public static boolean hasNetWork() {
        return SundialManager.getInstance().hasConnection() && x.e();
    }

    public static boolean isSingleApk(Context context) {
        return "cn.mucang.sundial.android".equals(context.getPackageName());
    }

    private static boolean isValidBCD(int i) {
        return i >= 0 && i <= 9;
    }

    public static boolean isValidBYTE(int i) {
        return i >= 0 && i <= 255;
    }

    public static boolean isValidDWORD(long j) {
        return j >= 0 && j <= 4294967295L;
    }

    public static boolean isValidWORD(int i) {
        return i >= 0 && i <= 65535;
    }

    public static String readBCD(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            int i = b & UnsignedBytes.MAX_VALUE;
            int i2 = i >>> 4;
            int i3 = i & 15;
            if (!isValidBCD(i2) || !isValidBCD(i3)) {
                throw new IllegalArgumentException("非法的BCD码解出来的值：v1=" + i2 + ",v2=" + i3);
            }
            sb.append(i2);
            sb.append(i3);
        }
        return sb.toString();
    }

    public static RawMessage readMessage(InputStream inputStream) throws IOException {
        int i;
        int i2 = inputStream.read();
        if (i2 == -1) {
            throw new EOFException("服务器端关闭了连接");
        }
        if (i2 != 126) {
            throw new IOException("读到非法的头，应该是0x7e，实际却是0x" + Integer.toHexString(i2) + "(" + i2 + ")");
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(1024);
        byteArrayOutputStream.write(i2);
        do {
            i = inputStream.read();
            if (i == -1) {
                return null;
            }
            byteArrayOutputStream.write(i);
        } while (i != 126);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        return RawMessage.read(replaceBytes(Arrays.copyOfRange(byteArray, 1, byteArray.length - 1)), byteArray);
    }

    public static PrivateKey readPrivateKey(RegisterInfo registerInfo) {
        if (registerInfo == null) {
            return null;
        }
        String certPassword = registerInfo.getCertPassword();
        try {
            byte[] bArrDecode = Base64.decode(registerInfo.getDeviceCertificate(), 0);
            KeyStore keyStore = KeyStore.getInstance("PKCS12");
            keyStore.load(new ByteArrayInputStream(bArrDecode), certPassword.toCharArray());
            Enumeration<String> enumerationAliases = keyStore.aliases();
            if (!enumerationAliases.hasMoreElements()) {
                throw new RuntimeException("no alias found");
            }
            while (enumerationAliases.hasMoreElements()) {
                try {
                    PrivateKey privateKey = (PrivateKey) keyStore.getKey(enumerationAliases.nextElement(), certPassword.toCharArray());
                    if (privateKey != null) {
                        return privateKey;
                    }
                } catch (Exception e2) {
                    SundialLog.com("获取私钥失败：" + e2.getLocalizedMessage());
                }
            }
            return null;
        } catch (Exception e3) {
            SundialLog.com("生成证书异常：" + e3.getLocalizedMessage());
            return null;
        }
    }

    public static byte[] replaceBytes(byte[] bArr) {
        BytesEncoder bytesEncoder = new BytesEncoder();
        int i = 0;
        while (i < bArr.length) {
            byte b = bArr[i];
            if (b == 125) {
                i++;
                if (i >= bArr.length) {
                    throw new IllegalArgumentException("非法的数据：以0x7d结尾了");
                }
                byte b2 = bArr[i];
                if (b2 == 2) {
                    bytesEncoder.appendBYTE(126);
                } else {
                    if (b2 != 1) {
                        throw new IllegalArgumentException("非法的数据：0x7d" + Integer.toHexString(b2 & UnsignedBytes.MAX_VALUE));
                    }
                    bytesEncoder.appendBYTE(125);
                }
            } else {
                bytesEncoder.appendBYTE(b & UnsignedBytes.MAX_VALUE);
            }
            i++;
        }
        return bytesEncoder.toByteArray();
    }

    public static void setBrightness(Context context, int i) {
        Settings.System.putInt(context.getContentResolver(), "screen_brightness", i);
    }

    public static String stringFromBytes(byte[] bArr) {
        BytesEncoder bytesEncoder = new BytesEncoder();
        for (byte b : bArr) {
            if (b == 0) {
                break;
            }
            bytesEncoder.appendBYTE(b & UnsignedBytes.MAX_VALUE);
        }
        try {
            return new String(bytesEncoder.toByteArray(), "GBK");
        } catch (UnsupportedEncodingException e2) {
            throw b.a(e2);
        }
    }

    public static String toBCD(Date date) {
        return BCD_FORMAT.format(date);
    }

    public static String toBCD3(Date date) {
        return BCD_3_FORMAT.format(date);
    }

    public static long toTimestamp(String str) {
        Date date;
        try {
            date = BCD_FORMAT.parse(str);
        } catch (ParseException unused) {
            date = null;
        }
        if (date == null) {
            return 0L;
        }
        return date.getTime();
    }

    public static String trimBCDString(String str) {
        return new BigInteger(str).toString();
    }

    public static byte[] writeBCD(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isDigit(str.charAt(i))) {
                throw new IllegalArgumentException("只能把纯数字转成BCD码");
            }
        }
        if (length % 2 != 0) {
            str = "0" + str;
        }
        byte[] bArr = new byte[str.length() / 2];
        for (int i2 = 0; i2 < str.length(); i2 += 2) {
            bArr[i2 / 2] = (byte) (((str.charAt(i2) - '0') << 4) | ((str.charAt(i2 + 1) - '0') & 15));
        }
        return bArr;
    }
}
