package cn.mucang.sundial.android.tcp.message.handler;

import cn.mucang.sundial.android.tcp.message.Message;
import java.lang.reflect.ParameterizedType;

/* JADX INFO: loaded from: classes5.dex */
public abstract class BaseMessageHandler<T extends Message> implements MessageHandler<T> {
    @Override // cn.mucang.sundial.android.tcp.message.handler.MessageHandler
    public Class<T> getMessageClass() {
        return (Class) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
    }
}
