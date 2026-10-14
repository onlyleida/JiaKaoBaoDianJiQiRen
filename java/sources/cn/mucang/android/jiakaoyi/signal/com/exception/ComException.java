package cn.mucang.android.jiakaoyi.signal.com.exception;

import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.signal.com.ComState;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.provider.names.ComName;

/* JADX INFO: loaded from: classes3.dex */
public class ComException extends Exception {
    private final ComName name;
    public final ComState state;
    public String tip;

    public ComException(ComName comName, ComState comState, Throwable th, String str) {
        super(th);
        this.name = comName;
        this.state = comState;
        this.tip = str;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        if (!n0.g(this.tip)) {
            return super.getMessage();
        }
        return this.state.desc + " : " + this.tip;
    }

    public ComName getName() {
        return this.name;
    }

    public ComException(ComName comName, ComState comState, Throwable th) {
        super(th);
        this.name = comName;
        this.state = comState;
    }

    public ComException(ComName comName, ComState comState, String str) {
        super(str);
        this.name = comName;
        this.state = comState;
        this.tip = str;
    }
}
