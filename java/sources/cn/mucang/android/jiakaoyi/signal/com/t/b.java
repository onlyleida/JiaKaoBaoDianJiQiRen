package cn.mucang.android.jiakaoyi.signal.com.t;

import cn.mucang.android.jiakaoyi.signal.com.exception.ComException;
import cn.mucang.android.jiakaoyi.signal.communicate.restruct.channel.provider.names.ComName;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
public abstract class b extends cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.m.a<a> {
    @Override // cn.mucang.android.jiakaoyi.signal.communicate.w.p004n.m.a
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public abstract a a(InputStream inputStream, int i, ComName comName) throws ComException, IOException;
}
