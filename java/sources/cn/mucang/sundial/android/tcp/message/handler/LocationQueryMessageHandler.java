package cn.mucang.sundial.android.tcp.message.handler;

import cn.mucang.sundial.android.tcp.data.gnss.GNSSData;
import cn.mucang.sundial.android.tcp.message.SendMessage;
import cn.mucang.sundial.android.tcp.message.receive.LocationQueryRequest;
import cn.mucang.sundial.android.tcp.message.send.LocationQueryResponse;

/* JADX INFO: loaded from: classes5.dex */
public class LocationQueryMessageHandler extends BaseMessageHandler<LocationQueryRequest> {
    @Override // cn.mucang.sundial.android.tcp.message.handler.MessageHandler
    public SendMessage handleMessage(LocationQueryRequest locationQueryRequest) {
        LocationQueryResponse locationQueryResponse = new LocationQueryResponse();
        locationQueryResponse.setGnssData(GNSSData.getGNSSData());
        return locationQueryResponse;
    }
}
