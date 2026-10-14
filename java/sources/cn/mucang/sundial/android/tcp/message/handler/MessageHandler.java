package cn.mucang.sundial.android.tcp.message.handler;

import cn.mucang.sundial.android.tcp.message.Message;
import cn.mucang.sundial.android.tcp.message.SendMessage;

/* JADX INFO: loaded from: classes5.dex */
public interface MessageHandler<T extends Message> {
    Class<T> getMessageClass();

    SendMessage handleMessage(T t);
}
