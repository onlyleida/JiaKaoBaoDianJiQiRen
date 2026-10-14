package cn.mucang.android.jiakaoyi.framework.tts.models;

import cn.mucang.android.core.db.IdEntity;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.FormatUtils;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class SynthEntity extends IdEntity {
    public int code;
    public String content;
    public String filePath;
    public long fileSize;
    public int kemu;
    public String key;
    public String time;
    public String url;

    public SynthEntity() {
    }

    public SynthEntity(int i, String str, File file, String str2) {
        this.code = i;
        this.content = str;
        this.filePath = file.getPath();
        this.kemu = AppUtils.a();
        this.key = str2;
        this.fileSize = file.length();
        this.time = FormatUtils.d("yyyy-MM-dd HH:mm:ss", System.currentTimeMillis());
    }
}
