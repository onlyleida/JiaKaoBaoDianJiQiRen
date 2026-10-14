package com.google.android.gms.internal.mlkit_vision_face_bundled;

import cn.mucang.android.jiakaoyi.signal.communicate.receive.l;
import com.google.mlkit.common.MlKitException;
import com.iflytek.cloud.ErrorCode;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes2.dex */
public final class zzrz {
    private static final zzoq zza = new zzrx();

    public static int zza(int i) {
        if (i == 200) {
            return MlKitException.CODE_SCANNER_CANCELLED;
        }
        if (i == 300) {
            return Videoio.CAP_PROP_PVAPI_FRAMESTARTTRIGGERMODE;
        }
        if (i == 302) {
            return Videoio.CAP_PROP_PVAPI_DECIMATIONVERTICAL;
        }
        if (i == 312) {
            return 313;
        }
        if (i == 15000) {
            return ErrorCode.MSP_ERROR_MMP_MYSQL_INITFAIL;
        }
        if (i == 304) {
            return Videoio.CAP_PROP_PVAPI_BINNINGY;
        }
        if (i == 305) {
            return Videoio.CAP_PROP_PVAPI_PIXELFORMAT;
        }
        switch (i) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 3;
            case 3:
                return 4;
            case 4:
                return 5;
            case 5:
                return 6;
            case 6:
                return 7;
            default:
                switch (i) {
                    case 9:
                        return 10;
                    case 10:
                        return 11;
                    case 11:
                        return 12;
                    case 12:
                        return 13;
                    case 13:
                        return 14;
                    default:
                        switch (i) {
                            case 43:
                                return 44;
                            case 44:
                                return 45;
                            case 45:
                                return 46;
                            default:
                                switch (i) {
                                    case 220:
                                        return 221;
                                    case 221:
                                        return 222;
                                    case 222:
                                        return 223;
                                    case 223:
                                        return 224;
                                    case 224:
                                        return 225;
                                    case 225:
                                        return 226;
                                    case 226:
                                        return 227;
                                    case 227:
                                        return 228;
                                    default:
                                        switch (i) {
                                            case 238:
                                                return 239;
                                            case 239:
                                                return 240;
                                            case 240:
                                                return l.RECEIVE_FAULT_CODE_CLEAR_RET;
                                            case l.RECEIVE_FAULT_CODE_CLEAR_RET /* 241 */:
                                                return 242;
                                            case 242:
                                                return l.Receive_AutoAssist_Response;
                                            case l.Receive_AutoAssist_Response /* 243 */:
                                                return l.Receive_AutoAssist_Error;
                                            default:
                                                switch (i) {
                                                    case 314:
                                                        return 315;
                                                    case 315:
                                                        return 316;
                                                    case 316:
                                                        return 317;
                                                    default:
                                                        return 0;
                                                }
                                        }
                                }
                        }
                }
        }
    }
}
