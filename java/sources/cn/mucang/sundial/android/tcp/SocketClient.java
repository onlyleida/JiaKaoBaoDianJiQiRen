package cn.mucang.sundial.android.tcp;

import android.util.SparseArray;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.t;
import cn.mucang.sundial.android.db.entity.RegisterInfo;
import cn.mucang.sundial.android.eventbus.LiveBus;
import cn.mucang.sundial.android.eventbus.event.RegisterResponseEvent;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.data.DataManager;
import cn.mucang.sundial.android.tcp.encoder.BytesEncoder;
import cn.mucang.sundial.android.tcp.message.NextMessageSequenceGenerator;
import cn.mucang.sundial.android.tcp.message.RawMessage;
import cn.mucang.sundial.android.tcp.message.Request;
import cn.mucang.sundial.android.tcp.message.SendMessage;
import cn.mucang.sundial.android.tcp.message.receive.RegisterResponse;
import cn.mucang.sundial.android.tcp.message.send.AuthenticationRequest;
import cn.mucang.sundial.android.tcp.message.send.ClientCommonResponse;
import cn.mucang.sundial.android.tcp.message.training.ExtendSendMessage;
import cn.mucang.sundial.android.tcp.message.training.SendTrainingMessage;
import cn.mucang.sundial.android.tcp.utils.DeviceUtils;
import cn.mucang.sundial.android.tcp.utils.ProtocolConfig;
import cn.mucang.sundial.android.tcp.utils.SequenceGenerator;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.security.PrivateKey;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public class SocketClient implements Closeable {
    private volatile boolean go;
    private final InputStream inputStream;
    private final SocketManager manager;
    private final OutputStream outputStream;
    private PrivateKey privateKey;
    private RegisterInfo registerInfo;
    private final Socket socket;
    private Thread thread;
    private int trainingMessageIndex;
    private final Map<MessageKey, MessageValue> packetMap = new HashMap();
    private final LinkedList<Integer> receivedIndex = new LinkedList<>();
    private final SequenceGenerator nextSequenceGenerator = new SequenceGenerator();
    private final HashMap<Integer, SparseArray<RawMessage>> lastSendMessage = new LinkedHashMap<Integer, SparseArray<RawMessage>>(16) { // from class: cn.mucang.sundial.android.tcp.SocketClient.1
        @Override // java.util.LinkedHashMap
        protected boolean removeEldestEntry(Map.Entry<Integer, SparseArray<RawMessage>> entry) {
            return SocketClient.this.lastSendMessage.size() > 8;
        }
    };

    private static class MessageKey {
        private int id;

        public MessageKey(int i) {
            this.id = i;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.id == ((MessageKey) obj).id;
        }

        public int hashCode() {
            return Objects.hash(Integer.valueOf(this.id));
        }
    }

    private static class MessageValue {
        private List<RawMessage> messageList;

        private MessageValue() {
            this.messageList = new ArrayList();
        }

        void addPacket(RawMessage rawMessage) {
            this.messageList.add(rawMessage);
            t.h(ProtocolConfig.SUNDIAL, "收到分包，序号为：" + rawMessage.getSplitIndex() + "，总数为：" + rawMessage.getHeader().getPacket().getTotal() + "，sequence=" + rawMessage.getHeader().getMessageSequence());
            SundialLog.com("收到分包，序号为：" + rawMessage.getSplitIndex() + "，总数为：" + rawMessage.getHeader().getPacket().getTotal() + "，sequence=" + rawMessage.getHeader().getMessageSequence());
        }
    }

    public SocketClient(SocketManager socketManager, Socket socket) throws IOException {
        this.manager = socketManager;
        this.socket = socket;
        this.outputStream = socket.getOutputStream();
        this.inputStream = socket.getInputStream();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void b(RawMessage rawMessage, long j) {
        try {
            handleMessage(rawMessage);
        } catch (Exception e2) {
            t.e(ProtocolConfig.SUNDIAL, "Handle message " + j + " with exception", e2);
            SundialLog.com("Handle message " + j + " with exception：" + e2.getLocalizedMessage());
        }
    }

    private MessageKey buildMessageKey(RawMessage.Header header) {
        return new MessageKey(header.getMessageId());
    }

    private RawMessage combine(RawMessage rawMessage) {
        RawMessage.Header header = rawMessage.getHeader();
        if (!header.getAttribute().isSplitPacket()) {
            return rawMessage;
        }
        send(ClientCommonResponse.createSuccess(rawMessage));
        int messageSequence = header.getMessageSequence();
        if (isNewSplitPacket(messageSequence)) {
            MessageKey messageKeyBuildMessageKey = buildMessageKey(header);
            MessageValue messageValue = this.packetMap.get(messageKeyBuildMessageKey);
            if (messageValue == null) {
                messageValue = new MessageValue();
                this.packetMap.put(messageKeyBuildMessageKey, messageValue);
            }
            messageValue.addPacket(rawMessage);
            return tryCombineMessage(messageValue.messageList);
        }
        t.m(ProtocolConfig.SUNDIAL, "收到一条重复的分包数据了:" + messageSequence);
        SundialLog.com("收到一条重复的分包数据了:" + messageSequence);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void e(SendMessage sendMessage, boolean z) {
        if (TimeoutManager.getInstance().onTimeout(sendMessage.getId(), z)) {
            send(sendMessage);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doLoopRead() {
        while (this.go) {
            try {
                t.a(ProtocolConfig.SUNDIAL, "开始死循环接收消息...");
                SundialLog.com("开始死循环接收消息...");
                RawMessage message = DeviceUtils.readMessage(this.inputStream);
                if (message != null) {
                    final long messageId = message.getHeader() != null ? message.getHeader().getMessageId() : -1L;
                    t.a(ProtocolConfig.SUNDIAL, "message = " + messageId);
                    SundialLog.com("message = " + messageId);
                    final RawMessage rawMessageCombine = combine(message);
                    if (rawMessageCombine != null) {
                        MucangConfig.f(new Runnable() { // from class: cn.mucang.sundial.android.tcp.c
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f10363a.b(rawMessageCombine, messageId);
                            }
                        });
                    }
                }
            } catch (EOFException unused) {
                t.m(ProtocolConfig.SUNDIAL, "服务器主动断开了连接");
                SundialLog.com("服务器主动断开了连接");
                DeviceUtils.close(this);
            } catch (Exception e2) {
                t.e(ProtocolConfig.SUNDIAL, "读取计时平台消息异常", e2);
                SundialLog.com("读取计时平台消息异常：" + e2.getLocalizedMessage());
                DeviceUtils.close(this);
            }
        }
    }

    private void doRegister(RawMessage rawMessage) {
        TimeoutManager.getInstance().onMessageReply(256, false);
        RegisterResponse registerResponse = new RegisterResponse();
        registerResponse.init(rawMessage.getBody());
        t.h(ProtocolConfig.SUNDIAL, "终端注册应答，注册结果：" + registerResponse.getResult().name());
        SundialLog.com("终端注册应答，注册结果：" + registerResponse.getResult().name());
        boolean z = registerResponse.getResult() == RegisterResponse.Result.SUCCESS;
        if (z) {
            DataManager.getInstance().saveRegisterInfo(registerResponse.getRegisterInfo());
            initOther();
        }
        LiveBus.post(new RegisterResponseEvent(z, registerResponse.getResult().message));
    }

    private RawMessage findMessageByIndex(List<RawMessage> list, int i) {
        for (RawMessage rawMessage : list) {
            if (rawMessage.getHeader().getPacket().getCurrent() == i) {
                return rawMessage;
            }
        }
        return null;
    }

    private void handleMessage(RawMessage rawMessage) {
        int messageId = rawMessage.getHeader().getMessageId();
        t.a(ProtocolConfig.SUNDIAL, "收到消息，messageId = " + DeviceUtils.formatMessageId(messageId));
        SundialLog.com("收到消息，messageId = " + DeviceUtils.formatMessageId(messageId));
        if (messageId == 33024) {
            doRegister(rawMessage);
            return;
        }
        SendMessage sendMessageHandleMessage = this.manager.handleMessage(rawMessage);
        if (sendMessageHandleMessage != null) {
            send(sendMessageHandleMessage);
        }
    }

    private void initOther() {
        RegisterInfo registerInfo = DataManager.getInstance().getRegisterInfo();
        t.a(ProtocolConfig.SUNDIAL, "鉴权... ");
        SundialLog.com("鉴权... ");
        if (registerInfo == null) {
            return;
        }
        this.registerInfo = registerInfo;
        this.privateKey = DeviceUtils.readPrivateKey(registerInfo);
        login();
    }

    private boolean isNewSplitPacket(int i) {
        if (this.receivedIndex.contains(Integer.valueOf(i))) {
            return false;
        }
        while (this.receivedIndex.size() >= 100) {
            this.receivedIndex.removeFirst();
        }
        this.receivedIndex.addLast(Integer.valueOf(i));
        return true;
    }

    private void login() {
        send(AuthenticationRequest.create(this));
    }

    private RawMessage tryCombineMessage(List<RawMessage> list) {
        RawMessage.Header header = list.get(list.size() - 1).getHeader();
        int total = header.getPacket().getTotal();
        if (list.size() < total) {
            return null;
        }
        BytesEncoder bytesEncoder = new BytesEncoder();
        for (int i = 1; i <= total; i++) {
            RawMessage rawMessageFindMessageByIndex = findMessageByIndex(list, i);
            if (rawMessageFindMessageByIndex == null) {
                t.h(ProtocolConfig.SUNDIAL, "尝试组包，此包找不到,index=" + i);
                SundialLog.com("尝试组包，此包找不到,index=" + i);
                return null;
            }
            bytesEncoder.appendBytes(rawMessageFindMessageByIndex.getBody());
        }
        this.packetMap.remove(buildMessageKey(header));
        t.h(ProtocolConfig.SUNDIAL, "组包完成，total：" + total);
        SundialLog.com("组包完成，total：" + total);
        return RawMessage.copy(header, bytesEncoder.toByteArray(), list);
    }

    private void updatePacketForResend(List<RawMessage> list) {
        if (g.g(list) <= 1) {
            return;
        }
        RawMessage rawMessage = list.get(0);
        if (rawMessage.getHeader().getAttribute().isSplitPacket()) {
            t.h(ProtocolConfig.SUNDIAL, "记录分包数据以重传，初始序列号为：" + rawMessage.getHeader().getMessageSequence());
            SundialLog.com("记录分包数据以重传，初始序列号为：" + rawMessage.getHeader().getMessageSequence());
            SparseArray<RawMessage> sparseArray = new SparseArray<>(list.size());
            for (RawMessage rawMessage2 : list) {
                sparseArray.put(rawMessage2.getSplitIndex(), rawMessage2);
            }
            this.lastSendMessage.put(Integer.valueOf(rawMessage.getHeader().getMessageSequence()), sparseArray);
        }
    }

    private SendMessage wrapExtendMessageIfNeed(SendMessage sendMessage) {
        return sendMessage instanceof ExtendSendMessage ? SendTrainingMessage.create(this, (ExtendSendMessage) sendMessage) : sendMessage;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.go = false;
        Thread thread = this.thread;
        if (thread != null) {
            thread.interrupt();
        }
        DeviceUtils.close(this.inputStream);
        DeviceUtils.close(this.outputStream);
        DeviceUtils.close(this.socket);
        this.manager.removeSocketClient(this);
    }

    synchronized List<RawMessage> createRawMessage(SendMessage sendMessage) {
        if (sendMessage == null) {
            return null;
        }
        try {
            List<RawMessage> listWrite = RawMessage.write(this.nextSequenceGenerator, wrapExtendMessageIfNeed(sendMessage));
            updatePacketForResend(listWrite);
            return listWrite;
        } catch (Exception e2) {
            t.e(ProtocolConfig.SUNDIAL, "消息格式异常", e2);
            SundialLog.com("消息格式异常：" + e2.getLocalizedMessage());
            return null;
        }
    }

    public NextMessageSequenceGenerator getNextMessageSequenceGenerator() {
        return this.nextSequenceGenerator;
    }

    public synchronized int getNextTrainingMessageIndex() {
        int i;
        i = this.trainingMessageIndex;
        if (!DeviceUtils.isValidWORD(i)) {
            i = 0;
            this.trainingMessageIndex = 0;
        }
        this.trainingMessageIndex++;
        return i;
    }

    public PrivateKey getPrivateKey() {
        return this.privateKey;
    }

    public RegisterInfo getRegisterInfo() {
        return this.registerInfo;
    }

    void resendPacket(int i, int[] iArr) {
        SparseArray<RawMessage> sparseArray = this.lastSendMessage.get(Integer.valueOf(i));
        if (sparseArray == null) {
            t.h(ProtocolConfig.SUNDIAL, "找不到初始流水号为 " + i + " 的包");
            SundialLog.com("找不到初始流水号为 " + i + " 的包");
            return;
        }
        LinkedList<RawMessage> linkedList = new LinkedList();
        for (int i2 : iArr) {
            RawMessage rawMessage = sparseArray.get(i2);
            if (rawMessage != null) {
                linkedList.add(rawMessage);
            }
        }
        for (RawMessage rawMessage2 : linkedList) {
            t.h(ProtocolConfig.SUNDIAL, "重传分包：" + rawMessage2.getHeader().getMessageSequence());
            SundialLog.com("重传分包：" + rawMessage2.getHeader().getMessageSequence());
            sendRawMessage(rawMessage2);
        }
    }

    synchronized boolean send(SendMessage sendMessage) {
        return send(sendMessage, null);
    }

    public boolean sendRawMessage(RawMessage rawMessage) {
        t.m(ProtocolConfig.SUNDIAL, "sendRawMessage --- Sequence: " + rawMessage.getHeader().getMessageSequence() + ", Id: " + DeviceUtils.formatMessageId(rawMessage.getHeader().getMessageId()));
        SundialLog.com("sendRawMessage --- Sequence: " + rawMessage.getHeader().getMessageSequence() + ", Id: " + DeviceUtils.formatMessageId(rawMessage.getHeader().getMessageId()));
        try {
            this.outputStream.write(rawMessage.writeAll());
            this.outputStream.flush();
            return true;
        } catch (IOException e2) {
            t.e(ProtocolConfig.SUNDIAL, "写数据发生异常", e2);
            SundialLog.com("写数据发生异常" + e2.getLocalizedMessage());
            DeviceUtils.close(this);
            return false;
        }
    }

    public synchronized void start() {
        if (this.thread != null) {
            return;
        }
        this.go = true;
        Thread thread = new Thread(new Runnable() { // from class: cn.mucang.sundial.android.tcp.e
            @Override // java.lang.Runnable
            public final void run() {
                this.f10366a.doLoopRead();
            }
        }, "读取TCP响应线程");
        this.thread = thread;
        thread.start();
        initOther();
    }

    synchronized boolean send(final SendMessage sendMessage, PacketResponseObserver.RequestResultListener requestResultListener) {
        boolean z;
        if (sendMessage instanceof Request) {
            final boolean z2 = sendMessage instanceof ExtendSendMessage;
            TimeoutManager.getInstance().addTimeoutTask(sendMessage.getId(), z2, new Runnable() { // from class: cn.mucang.sundial.android.tcp.d
                @Override // java.lang.Runnable
                public final void run() {
                    this.f10364a.e(sendMessage, z2);
                }
            });
        }
        List<RawMessage> listCreateRawMessage = createRawMessage(sendMessage);
        boolean z3 = sendMessage instanceof PacketResultConcern;
        if (listCreateRawMessage != null && !listCreateRawMessage.isEmpty()) {
            if (z3 && requestResultListener != null) {
                PacketResponseObserver.ObserveRequest requestResultListener2 = new PacketResponseObserver.ObserveRequest().setRequestResultListener(requestResultListener);
                Iterator<RawMessage> it = listCreateRawMessage.iterator();
                while (it.hasNext()) {
                    requestResultListener2.observePacket(it.next().getHeader().getMessageSequence());
                }
                requestResultListener2.observe();
            }
            Iterator<RawMessage> it2 = listCreateRawMessage.iterator();
            while (true) {
                while (true) {
                    if (!it2.hasNext()) {
                        return z;
                    }
                    z = z && sendRawMessage(it2.next());
                }
            }
        }
        if (z3 && requestResultListener != null) {
            requestResultListener.onResult(false);
        }
        return false;
    }
}
