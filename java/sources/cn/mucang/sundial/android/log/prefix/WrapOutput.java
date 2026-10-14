package cn.mucang.sundial.android.log.prefix;

import cn.mucang.sundial.android.log.LogType;

/* JADX INFO: loaded from: classes5.dex */
public interface WrapOutput {
    String signal(LogType logType, byte[] bArr, String str, long j);

    String text(LogType logType, String str, long j);
}
