package cn.mucang.android.jiakaoyi.signal.communicate;

/* JADX INFO: loaded from: classes3.dex */
public interface ComStateListener {

    public enum State {
        Valid,
        Close,
        Error
    }

    void a(State state, Throwable th);
}
