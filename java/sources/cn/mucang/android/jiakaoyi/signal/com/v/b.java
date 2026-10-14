package cn.mucang.android.jiakaoyi.signal.com.v;

import cn.mucang.android.jiakaoyi.signal.com.exception.ComException;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.provider.names.ComName;
import java.io.Closeable;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes3.dex */
public interface b extends Closeable {
    void init() throws ComException;

    boolean isRunning();

    OutputStream m();

    ComName o();

    InputStream t();

    int v();

    String w();
}
