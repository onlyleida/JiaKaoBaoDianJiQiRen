package cn.mucang.sundial.android.tcp.message.training;

import cn.mucang.sundial.android.tcp.SocketClient;
import cn.mucang.sundial.android.tcp.message.SendMessage;
import java.security.MessageDigest;
import javax.crypto.Cipher;

/* JADX INFO: loaded from: classes5.dex */
public class SendTrainingMessage extends TrainingMessage implements SendMessage {
    public static SendTrainingMessage create(SocketClient socketClient, ExtendSendMessage extendSendMessage) {
        SendTrainingMessage sendTrainingMessage = new SendTrainingMessage();
        sendTrainingMessage.setBody(extendSendMessage.encode());
        sendTrainingMessage.setDeviceId(socketClient.getRegisterInfo().getDeviceCode());
        sendTrainingMessage.setSequence(socketClient.getNextTrainingMessageIndex());
        sendTrainingMessage.setTid(extendSendMessage.getId());
        sendTrainingMessage.setExtendAttribute(new TrainingMessage.ExtendAttribute(extendSendMessage.isRealtimeMessage(), extendSendMessage.isNeedReply(), TrainingMessage.ExtendAttribute.SHA_256));
        fillVerify(socketClient, sendTrainingMessage);
        return sendTrainingMessage;
    }

    private static void fillVerify(SocketClient socketClient, SendTrainingMessage sendTrainingMessage) {
        try {
            byte[] msgBody = sendTrainingMessage.getMsgBody();
            MessageDigest messageDigest = MessageDigest.getInstance(sendTrainingMessage.getExtendAttribute().getDigestType());
            messageDigest.update(msgBody);
            byte[] bArrDigest = messageDigest.digest();
            Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher.init(1, socketClient.getPrivateKey());
            sendTrainingMessage.setVerify(cipher.doFinal(bArrDigest));
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return 2304;
    }
}
