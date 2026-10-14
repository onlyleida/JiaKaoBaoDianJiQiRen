package cn.mucang.jiakaoyi.uilib.socket.util;

import cn.mucang.jiakaoyi.uilib.socket.SocketModel;
import cn.mucang.jiakaoyi.uilib.socket.config.MCMessageParserConfig;
import cn.mucang.jiakaoyi.uilib.socket.parser.excption.MCException;
import cn.mucang.jiakaoyi.uilib.socket.s;
import cn.mucang.jiakaoyi.uilib.socket.z.t;
import com.google.common.primitives.UnsignedBytes;
import java.io.DataInputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class c {
    private static SocketModel a(byte[] bArr) throws Exception {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        int length = bArr.length;
        int i = byteBufferWrap.get() & UnsignedBytes.MAX_VALUE;
        byte[] bArr2 = new byte[(length - 4) - 1];
        byteBufferWrap.get(bArr2);
        if (((int) s.a(bArr2)) != byteBufferWrap.getInt()) {
            throw new MCException(2, "校验失败");
        }
        t<? extends SocketModel> messageParser = MCMessageParserConfig.getMessageParser(i);
        if (messageParser != null) {
            return messageParser.a(i, ByteBuffer.wrap(bArr2));
        }
        return null;
    }

    public static SocketModel b(DataInputStream dataInputStream) throws Exception {
        byte[] bArr = new byte[4];
        dataInputStream.readFully(bArr);
        if (bArr[0] != 49 || bArr[1] != 50 || bArr[2] != 51 || bArr[3] != 52) {
            throw new MCException(1, "帧头部错误");
        }
        byte[] bArr2 = new byte[dataInputStream.readUnsignedShort()];
        dataInputStream.readFully(bArr2);
        return a(bArr2);
    }
}
