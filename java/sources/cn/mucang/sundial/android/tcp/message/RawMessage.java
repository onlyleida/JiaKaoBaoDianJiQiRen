package cn.mucang.sundial.android.tcp.message;

import cn.mucang.sundial.android.tcp.data.DataManager;
import cn.mucang.sundial.android.tcp.decoder.BytesDecoder;
import cn.mucang.sundial.android.tcp.encoder.BytesEncoder;
import cn.mucang.sundial.android.tcp.utils.ArrayUtils;
import cn.mucang.sundial.android.tcp.utils.DeviceUtils;
import com.google.common.primitives.UnsignedBytes;
import f.a.b.a.a.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class RawMessage implements Send {
    public static final int MARK_VALUE = 126;
    private byte[] body;
    private Header header;
    private byte[] originalData;
    private List<RawMessage> packetList;

    public static class Attribute implements Send {
        private static final int MASK_ENCRYPTED = 1024;
        private static final int MASK_MESSAGE_SIZE = 1023;
        private static final int MASK_SPLIT_PACKET = 8192;
        static final int MAX_MESSAGE_SIZE = 1023;
        private boolean encrypted;
        private int messageSize;
        private boolean splitPacket;

        static Attribute from(BytesDecoder bytesDecoder) {
            Attribute attribute = new Attribute();
            int word = bytesDecoder.readWORD();
            attribute.messageSize = word & 1023;
            attribute.encrypted = (word & 1024) != 0;
            attribute.splitPacket = (word & 8192) != 0;
            return attribute;
        }

        Attribute copy() {
            Attribute attribute = new Attribute();
            attribute.messageSize = this.messageSize;
            attribute.encrypted = this.encrypted;
            attribute.splitPacket = this.splitPacket;
            return attribute;
        }

        @Override // cn.mucang.sundial.android.tcp.message.Send
        public byte[] encode() {
            BytesEncoder bytesEncoder = new BytesEncoder();
            int i = this.messageSize & 1023;
            if (this.encrypted) {
                i |= 1024;
            }
            if (this.splitPacket) {
                i |= 8192;
            }
            bytesEncoder.appendWORD(i);
            return bytesEncoder.toByteArray();
        }

        public int getMessageSize() {
            return this.messageSize;
        }

        public boolean isEncrypted() {
            return this.encrypted;
        }

        public boolean isSplitPacket() {
            return this.splitPacket;
        }

        public void setEncrypted(boolean z) {
            this.encrypted = z;
        }

        public void setMessageSize(int i) {
            if (i < 0 || i > 1023) {
                throw new IllegalArgumentException("包的长度必须是0-1023之间");
            }
            this.messageSize = i;
        }

        public void setSplitPacket(boolean z) {
            this.splitPacket = z;
        }
    }

    public static class Header implements Send {
        private Attribute attribute;
        private String devicePhone;
        private int messageId;
        private int messageSequence;
        private Packet packet;
        private int protocolVersion;
        private int reserved = 0;

        static Header from(BytesDecoder bytesDecoder) {
            Header header = new Header();
            header.protocolVersion = bytesDecoder.readBYTE();
            header.messageId = bytesDecoder.readWORD();
            header.attribute = Attribute.from(bytesDecoder);
            header.devicePhone = DeviceUtils.trimBCDString(bytesDecoder.readBCD(8));
            header.messageSequence = bytesDecoder.readWORD();
            header.reserved = bytesDecoder.readBYTE();
            if (header.attribute.splitPacket) {
                header.packet = Packet.from(bytesDecoder);
            }
            return header;
        }

        Header copy() {
            Header header = new Header();
            header.protocolVersion = this.protocolVersion;
            header.messageId = this.messageId;
            header.attribute = this.attribute.copy();
            header.devicePhone = this.devicePhone;
            header.messageSequence = this.messageSequence;
            header.reserved = this.reserved;
            header.packet = this.packet.copy();
            return header;
        }

        @Override // cn.mucang.sundial.android.tcp.message.Send
        public byte[] encode() {
            BytesEncoder bytesEncoder = new BytesEncoder();
            bytesEncoder.appendBYTE(this.protocolVersion);
            bytesEncoder.appendWORD(this.messageId);
            bytesEncoder.appendBytes(this.attribute.encode());
            bytesEncoder.appendBCD(this.devicePhone, 8);
            bytesEncoder.appendWORD(this.messageSequence);
            bytesEncoder.appendBYTE(this.reserved);
            Packet packet = this.packet;
            if (packet != null) {
                bytesEncoder.appendBytes(packet.encode());
            }
            return bytesEncoder.toByteArray();
        }

        public Attribute getAttribute() {
            return this.attribute;
        }

        public String getDevicePhone() {
            return this.devicePhone;
        }

        public int getMessageId() {
            return this.messageId;
        }

        public int getMessageSequence() {
            return this.messageSequence;
        }

        public Packet getPacket() {
            return this.packet;
        }

        public int getProtocolVersion() {
            return this.protocolVersion;
        }

        public int getReserved() {
            return this.reserved;
        }

        public void setAttribute(Attribute attribute) {
            this.attribute = attribute;
        }

        public void setDevicePhone(String str) {
            this.devicePhone = str;
        }

        public void setMessageId(int i) {
            this.messageId = i;
        }

        public void setMessageSequence(int i) {
            this.messageSequence = i;
        }

        public void setPacket(Packet packet) {
            this.packet = packet;
        }

        public void setProtocolVersion(int i) {
            this.protocolVersion = i;
        }
    }

    public static class Packet implements Send {
        private int current;
        private int total;

        static Packet from(BytesDecoder bytesDecoder) {
            Packet packet = new Packet();
            packet.total = bytesDecoder.readWORD();
            packet.current = bytesDecoder.readWORD();
            return packet;
        }

        Packet copy() {
            Packet packet = new Packet();
            packet.total = this.total;
            packet.current = this.current;
            return packet;
        }

        @Override // cn.mucang.sundial.android.tcp.message.Send
        public byte[] encode() {
            BytesEncoder bytesEncoder = new BytesEncoder();
            bytesEncoder.appendWORD(this.total);
            bytesEncoder.appendWORD(this.current);
            return bytesEncoder.toByteArray();
        }

        public int getCurrent() {
            return this.current;
        }

        public int getTotal() {
            return this.total;
        }

        public void setCurrent(int i) {
            this.current = i;
        }

        public void setTotal(int i) {
            this.total = i;
        }
    }

    private RawMessage() {
    }

    private static int calculateVerifyCode(byte[] bArr) {
        byte b = bArr[0];
        for (int i = 1; i < bArr.length; i++) {
            b = (byte) (b ^ bArr[i]);
        }
        return b & UnsignedBytes.MAX_VALUE;
    }

    public static RawMessage copy(Header header, byte[] bArr, List<RawMessage> list) {
        RawMessage rawMessage = new RawMessage();
        rawMessage.header = header.copy();
        rawMessage.body = (byte[]) bArr.clone();
        rawMessage.packetList = list;
        return rawMessage;
    }

    private static RawMessage create(int i, byte[] bArr, int i2, boolean z, int i3, int i4) {
        RawMessage rawMessage = new RawMessage();
        Header header = new Header();
        header.protocolVersion = 128;
        header.messageId = i;
        Attribute attribute = new Attribute();
        attribute.messageSize = bArr.length;
        attribute.splitPacket = z;
        attribute.encrypted = false;
        header.attribute = attribute;
        header.devicePhone = DataManager.getInstance().getDeviceInfo().getDevicePhone();
        header.messageSequence = i2;
        header.reserved = 0;
        if (z) {
            Packet packet = new Packet();
            packet.total = i3;
            packet.current = i4;
            header.packet = packet;
        }
        rawMessage.header = header;
        rawMessage.body = bArr;
        return rawMessage;
    }

    public static RawMessage read(byte[] bArr, byte[] bArr2) {
        int iCalculateVerifyCode = calculateVerifyCode(Arrays.copyOf(bArr, bArr.length - 1));
        int i = bArr[bArr.length - 1] & UnsignedBytes.MAX_VALUE;
        if (iCalculateVerifyCode != i) {
            throw new IllegalArgumentException("读取的消息校验码失败，算出来的是:" + iCalculateVerifyCode + "，传入的是:" + i);
        }
        BytesDecoder bytesDecoder = new BytesDecoder(bArr);
        Header headerFrom = Header.from(bytesDecoder);
        RawMessage rawMessage = new RawMessage();
        rawMessage.originalData = bArr2;
        rawMessage.header = headerFrom;
        int i2 = headerFrom.attribute.messageSize;
        byte[] bytes = bytesDecoder.readBytes(i2, true);
        rawMessage.body = bytes;
        if (bytes.length != i2) {
            a.a(DeviceUtils.formatMessageId(headerFrom.messageId) + "实际收到的body和期望的不一样，期望的是：" + i2 + "，实际的是：" + rawMessage.body.length);
        }
        return rawMessage;
    }

    private static List<byte[]> splitIfNeed(byte[] bArr) {
        byte[] bArrCopyOfRange;
        if (ArrayUtils.isEmpty(bArr) || bArr.length < 1023) {
            return Collections.singletonList(bArr);
        }
        ArrayList arrayList = new ArrayList();
        int length = 0;
        while (true) {
            bArrCopyOfRange = Arrays.copyOfRange(bArr, length, Math.min(bArr.length - length, 1023) + length);
            if (bArrCopyOfRange.length < 1023) {
                break;
            }
            arrayList.add(bArrCopyOfRange);
            length += bArrCopyOfRange.length;
        }
        if (bArrCopyOfRange.length != 0) {
            arrayList.add(bArrCopyOfRange);
        }
        return arrayList;
    }

    public static List<RawMessage> write(NextMessageSequenceGenerator nextMessageSequenceGenerator, SendMessage sendMessage) {
        int id = sendMessage.getId();
        List<byte[]> listSplitIfNeed = splitIfNeed(sendMessage.encode());
        int i = 0;
        boolean z = listSplitIfNeed.size() > 1;
        int size = listSplitIfNeed.size();
        ArrayList arrayList = new ArrayList();
        while (i < size) {
            int i2 = i + 1;
            arrayList.add(create(id, listSplitIfNeed.get(i), nextMessageSequenceGenerator.getNextMessageIndex(), z, size, i2));
            i = i2;
        }
        return arrayList;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Send
    public byte[] encode() {
        BytesEncoder bytesEncoder = new BytesEncoder();
        bytesEncoder.appendBytes(this.header.encode());
        bytesEncoder.appendBytes(this.body);
        byte[] byteArray = bytesEncoder.toByteArray();
        int iCalculateVerifyCode = calculateVerifyCode(byteArray);
        byte[] bArrCopyOf = Arrays.copyOf(byteArray, byteArray.length + 1);
        bArrCopyOf[bArrCopyOf.length - 1] = (byte) (iCalculateVerifyCode & 255);
        return bArrCopyOf;
    }

    public byte[] getBody() {
        return this.body;
    }

    public Header getHeader() {
        return this.header;
    }

    public byte[] getOriginalData() {
        return this.originalData;
    }

    public List<RawMessage> getPacketList() {
        return this.packetList;
    }

    public int getSplitIndex() {
        Packet packet;
        Header header = this.header;
        if (header == null || (packet = header.getPacket()) == null) {
            return 0;
        }
        return packet.getCurrent();
    }

    public byte[] writeAll() {
        BytesEncoder bytesEncoder = new BytesEncoder();
        bytesEncoder.appendBYTE(126);
        for (byte b : encode()) {
            if (b == 126) {
                bytesEncoder.appendBytes(new byte[]{125, 2});
            } else if (b == 125) {
                bytesEncoder.appendBytes(new byte[]{125, 1});
            } else {
                bytesEncoder.appendBYTE(b & UnsignedBytes.MAX_VALUE);
            }
        }
        bytesEncoder.appendBYTE(126);
        return bytesEncoder.toByteArray();
    }
}
