package cn.mucang.sundial.android.tcp.utils;

import cn.mucang.sundial.android.tcp.message.NextMessageSequenceGenerator;

/* JADX INFO: loaded from: classes5.dex */
public class SequenceGenerator implements NextMessageSequenceGenerator {
    private int messageIndex;

    @Override // cn.mucang.sundial.android.tcp.message.NextMessageSequenceGenerator
    public synchronized int getNextMessageIndex() {
        int i;
        i = this.messageIndex;
        if (!DeviceUtils.isValidWORD(i)) {
            i = 0;
            this.messageIndex = 0;
        }
        this.messageIndex++;
        return i;
    }
}
