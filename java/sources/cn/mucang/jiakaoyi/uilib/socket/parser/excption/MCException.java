package cn.mucang.jiakaoyi.uilib.socket.parser.excption;

/* JADX INFO: loaded from: classes5.dex */
public class MCException extends Exception {
    public static final int CODE_CRC_ERROR = 2;
    public static final int CODE_Frame_Handler_Error = 5;
    public static final int CODE_HEADER_ERROR = 1;
    public static final int CODE_LOGIN_AUTH = 4;
    public static final int CODE_LOGIN_FAIL = 3;
    public int code;

    public MCException(int i, String str) {
        super(str);
        this.code = i;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return "帧错误码=" + this.code + "," + super.getMessage();
    }
}
