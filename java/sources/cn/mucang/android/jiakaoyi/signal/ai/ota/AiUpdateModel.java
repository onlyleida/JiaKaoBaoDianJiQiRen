package cn.mucang.android.jiakaoyi.signal.ai.ota;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class AiUpdateModel implements Serializable {
    public String filePath;
    public boolean force;
    public String md5;
    public int size;
    public int version;
}
