package cn.mucang.sundial.android.tcp;

import cn.mucang.android.core.utils.o;
import cn.mucang.android.core.utils.t;
import cn.mucang.sundial.android.db.entity.DeviceInfo;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.data.DataManager;
import cn.mucang.sundial.android.tcp.message.Message;
import cn.mucang.sundial.android.tcp.message.NextMessageSequenceGenerator;
import cn.mucang.sundial.android.tcp.message.RawMessage;
import cn.mucang.sundial.android.tcp.message.RawMessageAware;
import cn.mucang.sundial.android.tcp.message.ReceiveMessage;
import cn.mucang.sundial.android.tcp.message.SendMessage;
import cn.mucang.sundial.android.tcp.message.handler.MessageHandler;
import cn.mucang.sundial.android.tcp.message.training.ExtendReceiveMessage;
import cn.mucang.sundial.android.tcp.message.training.ReceiveTrainingMessage;
import cn.mucang.sundial.android.tcp.utils.DeviceUtils;
import cn.mucang.sundial.android.tcp.utils.ProtocolConfig;
import com.mobile.auth.BuildConfig;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public class SocketManager {
    private static volatile SocketManager INSTANCE;
    private final AtomicReference<SocketClient> clientRef = new AtomicReference<>();
    private ScheduledExecutorService es;
    private final String ip;
    private final MessageManager messageManager;
    private final int port;

    private SocketManager() {
        DeviceInfo deviceInfo = DataManager.getInstance().getDeviceInfo();
        this.ip = deviceInfo.getPlatformIp();
        this.port = deviceInfo.getPlatformPort();
        this.messageManager = new MessageManager();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkSocket() {
        SocketClient socketClientInitSocket;
        if (this.clientRef.get() != null || (socketClientInitSocket = initSocket()) == null) {
            return;
        }
        if (this.clientRef.compareAndSet(null, socketClientInitSocket)) {
            socketClientInitSocket.start();
        } else {
            o.a(socketClientInitSocket);
        }
    }

    private ExtendReceiveMessage createExtendReceiveMessage(int i, byte[] bArr) {
        try {
            ExtendReceiveMessage extendReceiveMessage = this.messageManager.getExtendReceiveMessage(i);
            if (extendReceiveMessage != null) {
                ExtendReceiveMessage extendReceiveMessage2 = (ExtendReceiveMessage) extendReceiveMessage.getClass().newInstance();
                extendReceiveMessage2.init(bArr);
                return extendReceiveMessage2;
            }
            f.a.b.a.a.a.a("碰到一条无法解析扩展的消息，tid=" + DeviceUtils.formatMessageId(i));
            SundialLog.com("碰到一条无法解析扩展的消息，tid=" + DeviceUtils.formatMessageId(i));
            return null;
        } catch (Exception e2) {
            throw cn.mucang.android.core.encode.b.a(e2);
        }
    }

    private ReceiveMessage createReceiveMessage(int i, byte[] bArr) {
        try {
            ReceiveMessage receiveMessage = this.messageManager.getReceiveMessage(i);
            if (receiveMessage != null) {
                ReceiveMessage receiveMessage2 = (ReceiveMessage) receiveMessage.getClass().newInstance();
                receiveMessage2.init(bArr);
                return receiveMessage2;
            }
            t.m(ProtocolConfig.SUNDIAL, "碰到一条无法解析的消息，messageId=" + DeviceUtils.formatMessageId(i));
            SundialLog.com("碰到一条无法解析的消息，messageId=" + DeviceUtils.formatMessageId(i));
            return null;
        } catch (Exception e2) {
            throw cn.mucang.android.core.encode.b.a(e2);
        }
    }

    public static SocketManager getInstance() {
        if (INSTANCE == null) {
            synchronized (SocketManager.class) {
                if (INSTANCE == null) {
                    INSTANCE = new SocketManager();
                }
            }
        }
        return INSTANCE;
    }

    private SocketClient initSocket() {
        try {
            t.h(ProtocolConfig.SUNDIAL, "准备连接计时平台TCP，ip=" + this.ip + ",port=" + this.port);
            SundialLog.com("准备连接计时平台TCP，ip=" + this.ip + ",port=" + this.port);
            Socket socket = new Socket();
            socket.connect(new InetSocketAddress(this.ip, this.port), 10000);
            return new SocketClient(this, socket);
        } catch (Exception e2) {
            t.m(ProtocolConfig.SUNDIAL, "初始化连接失败：" + e2.toString());
            SundialLog.com("初始化连接失败：" + e2.toString());
            return null;
        }
    }

    private Message parseMessage(RawMessage rawMessage) {
        ReceiveMessage receiveMessageCreateReceiveMessage = createReceiveMessage(rawMessage.getHeader().getMessageId(), rawMessage.getBody());
        if (receiveMessageCreateReceiveMessage instanceof RawMessageAware) {
            ((RawMessageAware) receiveMessageCreateReceiveMessage).setRawMessage(rawMessage);
        }
        if (!(receiveMessageCreateReceiveMessage instanceof ReceiveTrainingMessage)) {
            return receiveMessageCreateReceiveMessage;
        }
        ReceiveTrainingMessage receiveTrainingMessage = (ReceiveTrainingMessage) receiveMessageCreateReceiveMessage;
        ExtendReceiveMessage extendReceiveMessageCreateExtendReceiveMessage = createExtendReceiveMessage(receiveTrainingMessage.getTid(), receiveTrainingMessage.getBody());
        if (extendReceiveMessageCreateExtendReceiveMessage == null) {
            return null;
        }
        if (extendReceiveMessageCreateExtendReceiveMessage instanceof RawMessageAware) {
            ((RawMessageAware) extendReceiveMessageCreateExtendReceiveMessage).setRawMessage(rawMessage);
        }
        extendReceiveMessageCreateExtendReceiveMessage.setTrainingMessage(receiveTrainingMessage);
        return extendReceiveMessageCreateExtendReceiveMessage;
    }

    private void showMessageInfo(int i, MessageHandler messageHandler) {
        StringBuilder sb = new StringBuilder();
        sb.append("++++++++收到消息:");
        sb.append(DeviceUtils.formatMessageId(i));
        sb.append("，准备由Handler处理消息，handler=");
        if (messageHandler == null) {
            sb.append(BuildConfig.COMMON_MODULE_COMMIT_ID);
        } else {
            sb.append(messageHandler.getClass().getSimpleName());
        }
        t.h(ProtocolConfig.SUNDIAL, sb.toString());
    }

    public List<RawMessage> createRawMessage(SendMessage sendMessage) {
        SocketClient socketClient = this.clientRef.get();
        if (socketClient != null) {
            return socketClient.createRawMessage(sendMessage);
        }
        return null;
    }

    public void destroy() {
        this.es.shutdown();
        this.es = null;
        SocketClient socketClient = this.clientRef.get();
        if (socketClient != null) {
            DeviceUtils.close(socketClient);
            this.clientRef.set(null);
        }
    }

    public NextMessageSequenceGenerator getNextMessageSequenceGenerator() {
        SocketClient socketClient = this.clientRef.get();
        if (socketClient != null) {
            return socketClient.getNextMessageSequenceGenerator();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    SendMessage handleMessage(RawMessage rawMessage) {
        Message message = parseMessage(rawMessage);
        if (message == null) {
            return null;
        }
        MessageHandler<? extends Message> messageHandler = this.messageManager.getMessageHandler(message.getClass());
        showMessageInfo(message.getId(), messageHandler);
        if (messageHandler != null) {
            return messageHandler.handleMessage(message);
        }
        throw new IllegalArgumentException("有消息无法处理，请实现此消息的处理器:" + message.getClass());
    }

    public boolean hasConnection() {
        return this.clientRef.get() != null;
    }

    void removeSocketClient(SocketClient socketClient) {
        this.clientRef.compareAndSet(socketClient, null);
    }

    public void resendPacket(int i, int[] iArr) {
        SocketClient socketClient = this.clientRef.get();
        if (socketClient != null) {
            socketClient.resendPacket(i, iArr);
        }
    }

    public boolean sendMessage(SendMessage sendMessage) {
        return sendMessage(sendMessage, null);
    }

    public boolean sendRawMessage(RawMessage rawMessage) {
        SocketClient socketClient = this.clientRef.get();
        if (socketClient != null) {
            return socketClient.sendRawMessage(rawMessage);
        }
        return false;
    }

    public synchronized void start() {
        if (this.es != null) {
            return;
        }
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        this.es = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
        scheduledExecutorServiceNewSingleThreadScheduledExecutor.scheduleWithFixedDelay(new Runnable() { // from class: cn.mucang.sundial.android.tcp.f
            @Override // java.lang.Runnable
            public final void run() {
                this.f10367a.checkSocket();
            }
        }, 0L, 10L, TimeUnit.SECONDS);
    }

    public boolean sendMessage(SendMessage sendMessage, PacketResponseObserver.RequestResultListener requestResultListener) {
        SocketClient socketClient = this.clientRef.get();
        if (socketClient != null) {
            return socketClient.send(sendMessage, requestResultListener);
        }
        if (requestResultListener != null) {
            requestResultListener.onResult(false);
        }
        return false;
    }
}
