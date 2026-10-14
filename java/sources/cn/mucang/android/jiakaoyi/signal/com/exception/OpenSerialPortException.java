package cn.mucang.android.jiakaoyi.signal.com.exception;

/* JADX INFO: loaded from: classes3.dex */
public class OpenSerialPortException extends Exception {
    public OpenSerialPortException(Exception exc) {
        super("串口打开失败", exc);
    }
}
