package com.mobile.auth.gatewayauth.manager.compat;

import com.google.common.base.Ascii;
import com.mobile.auth.gatewayauth.Constant;
import com.mobile.auth.gatewayauth.ResultCode;
import com.mobile.auth.gatewayauth.model.TokenRet;

/* JADX INFO: loaded from: classes4.dex */
public class b implements ResultCodeProcessor {
    /* JADX WARN: Failed to clean up code after switch over string restore
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r1v0 int, still in use, count: 4, list:
      (r1v0 int) from 0x000d: IF  (r1v0 int) != (1656378 int)  -> B:7:0x000f A[HIDDEN]
      (r1v0 int) from 0x0012: IF  (r1v0 int) != (1715960 int)  -> B:9:0x0014 A[HIDDEN]
      (r1v0 int) from 0x0017: IF  (r1v0 int) != (1335041987 int)  -> B:11:0x0019 A[HIDDEN]
      (r1v0 int) from 0x001c: SWITCH (r1v0 int)
     case 1340651407: goto B:17:0x002d
     case 1340651408: goto B:14:0x0021
     default: goto B:13:0x001f A[Catch: all -> 0x00e4, RegionRef:SW:12]
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:93)
    	at jadx.core.utils.InsnRemover.remove(InsnRemover.java:226)
    	at jadx.core.utils.InsnRemover.remove(InsnRemover.java:215)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.replaceWithMergedSwitch(SwitchOverStringVisitor.java:355)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:111)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:72)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:140)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterative(DepthRegionTraversal.java:47)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visit(SwitchOverStringVisitor.java:66)
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private String a(String str) {
        if (str == null) {
            return ResultCode.CODE_GET_TOKEN_FAIL;
        }
        try {
            byte b = -1;
            if (iHashCode != 1656378) {
                if (iHashCode != 1715960) {
                    if (iHashCode != 1335041987) {
                        switch (str) {
                            case "-10001":
                                b = 2;
                                break;
                            case "-10002":
                                b = 4;
                                break;
                            case "-10003":
                                b = 5;
                                break;
                            case "-10004":
                                b = 6;
                                break;
                            case "-10005":
                                b = 7;
                                break;
                            case "-10006":
                                b = 8;
                                break;
                            case "-10007":
                                b = 9;
                                break;
                            case "-10008":
                                b = 10;
                                break;
                            case "-10009":
                                b = Ascii.VT;
                                break;
                            default:
                                switch (iHashCode) {
                                    case 1340651407:
                                        if (str.equals(Constant.CODE_ERROR_USER_CANCEL)) {
                                            b = 3;
                                        }
                                        break;
                                    case 1340651408:
                                        if (str.equals(Constant.CODE_ERROR_USER_SWITCH)) {
                                            b = Ascii.CR;
                                        }
                                        break;
                                }
                        }
                    } else if (str.equals(Constant.CODE_ERROR_FUNCTION_LIMIT)) {
                        b = Ascii.FF;
                    }
                } else if (str.equals(Constant.CODE_GET_TOKEN_SUCCESS)) {
                    b = 0;
                }
            } else if (str.equals(Constant.CODE_START_AUTHPAGE_SUCCESS)) {
                b = 1;
            }
            switch (b) {
                case 0:
                    return "600000";
                case 1:
                    return ResultCode.CODE_START_AUTHPAGE_SUCCESS;
                case 2:
                    return ResultCode.CODE_ERROR_START_AUTHPAGE_FAIL;
                case 3:
                    return ResultCode.CODE_ERROR_USER_CANCEL;
                case 4:
                    return ResultCode.CODE_ERROR_GET_CONFIG_FAIL;
                case 5:
                    return ResultCode.CODE_ERROR_PHONE_UNSAFE_FAIL;
                case 6:
                    return ResultCode.CODE_ERROR_NO_PERMISSION_FAIL;
                case 7:
                    return ResultCode.CODE_ERROR_NO_SIM_FAIL;
                case 8:
                    return ResultCode.CODE_ERROR_NO_MOBILE_NETWORK_FAIL;
                case 9:
                    return ResultCode.CODE_ERROR_OPERATOR_UNKNOWN_FAIL;
                case 10:
                    return ResultCode.CODE_ERROR_UNKNOWN_FAIL;
                case 11:
                    return ResultCode.CODE_ERROR_FUNCTION_DEMOTE;
                case 12:
                    return ResultCode.CODE_ERROR_FUNCTION_LIMIT;
                case 13:
                    return ResultCode.CODE_ERROR_USER_SWITCH;
                default:
                    return str;
            }
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    @Override // com.mobile.auth.gatewayauth.manager.compat.ResultCodeProcessor
    public String convertCode(String str) {
        try {
            return a(str);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    @Override // com.mobile.auth.gatewayauth.manager.compat.ResultCodeProcessor
    public TokenRet convertErrorInfo(String str, String str2, String str3) {
        try {
            TokenRet tokenRet = new TokenRet();
            tokenRet.setCode(a(str));
            tokenRet.setMsg(str2);
            tokenRet.setVendorName(str3);
            return tokenRet;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    @Override // com.mobile.auth.gatewayauth.manager.compat.ResultCodeProcessor
    public String getApiLevel() {
        try {
            return String.valueOf(1);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }
}
