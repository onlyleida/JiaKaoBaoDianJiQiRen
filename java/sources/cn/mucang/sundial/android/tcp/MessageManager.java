package cn.mucang.sundial.android.tcp;

import android.util.SparseArray;
import cn.mucang.sundial.android.tcp.message.Message;
import cn.mucang.sundial.android.tcp.message.ReceiveMessage;
import cn.mucang.sundial.android.tcp.message.handler.CoachLoginMessageHandler;
import cn.mucang.sundial.android.tcp.message.handler.CoachLogoutMessageHandler;
import cn.mucang.sundial.android.tcp.message.handler.ConfigDeviceMessageManager;
import cn.mucang.sundial.android.tcp.message.handler.CourseQueryMessageManager;
import cn.mucang.sundial.android.tcp.message.handler.DeviceControlMessageHandler;
import cn.mucang.sundial.android.tcp.message.handler.DisableTrainingMessageHandler;
import cn.mucang.sundial.android.tcp.message.handler.LocationQueryMessageHandler;
import cn.mucang.sundial.android.tcp.message.handler.MessageHandler;
import cn.mucang.sundial.android.tcp.message.handler.ParameterSettingMessageHandler;
import cn.mucang.sundial.android.tcp.message.handler.QueryAllParameterMessageHandler;
import cn.mucang.sundial.android.tcp.message.handler.QueryCodeMessageHandler;
import cn.mucang.sundial.android.tcp.message.handler.QueryDeviceConfigMessageHandler;
import cn.mucang.sundial.android.tcp.message.handler.QueryPhotoMessageHandler;
import cn.mucang.sundial.android.tcp.message.handler.QuerySomeParameterMessageHandler;
import cn.mucang.sundial.android.tcp.message.handler.ReportQueryPhotoResponseMessageHandler;
import cn.mucang.sundial.android.tcp.message.handler.ReportVehicleBindMessageHandler;
import cn.mucang.sundial.android.tcp.message.handler.ServerCommonMessageHandler;
import cn.mucang.sundial.android.tcp.message.handler.StudentCleanMessageHandler;
import cn.mucang.sundial.android.tcp.message.handler.StudentForceLogoutMessageHandler;
import cn.mucang.sundial.android.tcp.message.handler.StudentLoginMessageHandler;
import cn.mucang.sundial.android.tcp.message.handler.StudentLogoutMessageManager;
import cn.mucang.sundial.android.tcp.message.handler.SupplementPacketMessageHandler;
import cn.mucang.sundial.android.tcp.message.handler.TakePhotoMessageHandler;
import cn.mucang.sundial.android.tcp.message.handler.TempLocationTrackMessageHandler;
import cn.mucang.sundial.android.tcp.message.handler.UploadPhotoMessageHandler;
import cn.mucang.sundial.android.tcp.message.handler.UploadPhotoResultMessageHandler;
import cn.mucang.sundial.android.tcp.message.handler.UploadPhotoStartMessageHandler;
import cn.mucang.sundial.android.tcp.message.handler.VoiceBroadcastMessageHandler;
import cn.mucang.sundial.android.tcp.message.receive.DeviceControlRequest;
import cn.mucang.sundial.android.tcp.message.receive.LocationQueryRequest;
import cn.mucang.sundial.android.tcp.message.receive.ParameterSettingRequest;
import cn.mucang.sundial.android.tcp.message.receive.QueryAllParameterRequest;
import cn.mucang.sundial.android.tcp.message.receive.QuerySomeParameterRequest;
import cn.mucang.sundial.android.tcp.message.receive.ServerCommonResponse;
import cn.mucang.sundial.android.tcp.message.receive.SupplementPacketRequest;
import cn.mucang.sundial.android.tcp.message.receive.TempLocationTrackRequest;
import cn.mucang.sundial.android.tcp.message.training.ExtendReceiveMessage;
import cn.mucang.sundial.android.tcp.message.training.ReceiveTrainingMessage;
import cn.mucang.sundial.android.tcp.message.training.receive.CoachLoginResponse;
import cn.mucang.sundial.android.tcp.message.training.receive.CoachLogoutResponse;
import cn.mucang.sundial.android.tcp.message.training.receive.ConfigDeviceRequest;
import cn.mucang.sundial.android.tcp.message.training.receive.CourseQueryRequest;
import cn.mucang.sundial.android.tcp.message.training.receive.DisableTrainingRequest;
import cn.mucang.sundial.android.tcp.message.training.receive.QueryCodeResponse;
import cn.mucang.sundial.android.tcp.message.training.receive.QueryDeviceConfigRequest;
import cn.mucang.sundial.android.tcp.message.training.receive.QueryPhotoRequest;
import cn.mucang.sundial.android.tcp.message.training.receive.ReportQueryPhotoResponseResponse;
import cn.mucang.sundial.android.tcp.message.training.receive.ReportVehicleBindResponse;
import cn.mucang.sundial.android.tcp.message.training.receive.StudentCleanResponse;
import cn.mucang.sundial.android.tcp.message.training.receive.StudentForceLogoutResponse;
import cn.mucang.sundial.android.tcp.message.training.receive.StudentLoginResponse;
import cn.mucang.sundial.android.tcp.message.training.receive.StudentLogoutResponse;
import cn.mucang.sundial.android.tcp.message.training.receive.TakePhotoRequest;
import cn.mucang.sundial.android.tcp.message.training.receive.UploadPhotoRequest;
import cn.mucang.sundial.android.tcp.message.training.receive.UploadPhotoResultResponse;
import cn.mucang.sundial.android.tcp.message.training.receive.UploadPhotoStartResponse;
import cn.mucang.sundial.android.tcp.message.training.receive.VoiceBroadcastResponse;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public class MessageManager {
    private final SparseArray<ReceiveMessage> messageParsers = new SparseArray<>();
    private final SparseArray<ExtendReceiveMessage> extendMessageParsers = new SparseArray<>();
    private final Map<Class<? extends Message>, MessageHandler<? extends Message>> messageHandlerMap = new ConcurrentHashMap();

    protected MessageManager() {
        registerParser(32769, new ServerCommonResponse());
        registerHandler(new ServerCommonMessageHandler());
        registerParser(32771, new SupplementPacketRequest());
        registerHandler(new SupplementPacketMessageHandler());
        registerParser(33027, new ParameterSettingRequest());
        registerHandler(new ParameterSettingMessageHandler());
        registerParser(33028, new QueryAllParameterRequest());
        registerHandler(new QueryAllParameterMessageHandler());
        registerParser(33029, new DeviceControlRequest());
        registerHandler(new DeviceControlMessageHandler());
        registerParser(33030, new QuerySomeParameterRequest());
        registerHandler(new QuerySomeParameterMessageHandler());
        registerParser(33281, new LocationQueryRequest());
        registerHandler(new LocationQueryMessageHandler());
        registerParser(35072, new ReceiveTrainingMessage());
        registerExtendParser(33025, new CoachLoginResponse());
        registerHandler(new CoachLoginMessageHandler());
        registerExtendParser(33026, new CoachLogoutResponse());
        registerHandler(new CoachLogoutMessageHandler());
        registerExtendParser(33281, new StudentLoginResponse());
        registerHandler(new StudentLoginMessageHandler());
        registerExtendParser(33282, new StudentLogoutResponse());
        registerHandler(new StudentLogoutMessageManager());
        registerParser(33282, new TempLocationTrackRequest());
        registerHandler(new TempLocationTrackMessageHandler());
        registerExtendParser(33285, new CourseQueryRequest());
        registerHandler(new CourseQueryMessageManager());
        registerExtendParser(33537, new TakePhotoRequest());
        registerHandler(new TakePhotoMessageHandler());
        registerExtendParser(33538, new QueryPhotoRequest());
        registerHandler(new QueryPhotoMessageHandler());
        registerExtendParser(33539, new ReportQueryPhotoResponseResponse());
        registerHandler(new ReportQueryPhotoResponseMessageHandler());
        registerExtendParser(33540, new UploadPhotoRequest());
        registerHandler(new UploadPhotoMessageHandler());
        registerExtendParser(33541, new UploadPhotoStartResponse());
        registerHandler(new UploadPhotoStartMessageHandler());
        registerExtendParser(33794, new QueryCodeResponse());
        registerHandler(new QueryCodeMessageHandler());
        registerExtendParser(33795, new ReportVehicleBindResponse());
        registerHandler(new ReportVehicleBindMessageHandler());
        registerExtendParser(34049, new ConfigDeviceRequest());
        registerHandler(new DisableTrainingMessageHandler());
        registerExtendParser(34050, new DisableTrainingRequest());
        registerHandler(new ConfigDeviceMessageManager());
        registerExtendParser(34051, new QueryDeviceConfigRequest());
        registerHandler(new QueryDeviceConfigMessageHandler());
        registerExtendParser(36864, new UploadPhotoResultResponse());
        registerHandler(new UploadPhotoResultMessageHandler());
        registerExtendParser(32768, new VoiceBroadcastResponse());
        registerHandler(new VoiceBroadcastMessageHandler());
        registerExtendParser(28674, new StudentForceLogoutResponse());
        registerHandler(new StudentForceLogoutMessageHandler());
        registerExtendParser(28675, new StudentCleanResponse());
        registerHandler(new StudentCleanMessageHandler());
    }

    private void registerExtendParser(int i, ExtendReceiveMessage extendReceiveMessage) {
        this.extendMessageParsers.put(i, extendReceiveMessage);
    }

    private <T extends Message> void registerHandler(MessageHandler<T> messageHandler) {
        this.messageHandlerMap.put(messageHandler.getMessageClass(), messageHandler);
    }

    private void registerParser(int i, ReceiveMessage receiveMessage) {
        this.messageParsers.put(i, receiveMessage);
    }

    public ExtendReceiveMessage getExtendReceiveMessage(int i) {
        return this.extendMessageParsers.get(i);
    }

    public MessageHandler<? extends Message> getMessageHandler(Class<? extends Message> cls) {
        return this.messageHandlerMap.get(cls);
    }

    public ReceiveMessage getReceiveMessage(int i) {
        return this.messageParsers.get(i);
    }
}
