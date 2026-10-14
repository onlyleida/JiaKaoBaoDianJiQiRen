package cn.mucang.sundial.android.tcp.message.handler;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.db.e;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.db.SundialDb;
import cn.mucang.sundial.android.db.entity.DeviceParameter;
import cn.mucang.sundial.android.model.CarModel;
import cn.mucang.sundial.android.tcp.data.gnss.OBDManager;
import cn.mucang.sundial.android.tcp.encoder.BytesEncoder;
import cn.mucang.sundial.android.tcp.message.Parameter;
import cn.mucang.sundial.android.tcp.message.SendMessage;
import cn.mucang.sundial.android.tcp.message.receive.QueryAllParameterRequest;
import cn.mucang.sundial.android.tcp.message.send.ParameterQueryResponse;
import cn.mucang.sundial.android.tcp.utils.DeviceUtils;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class QueryAllParameterMessageHandler extends BaseMessageHandler<QueryAllParameterRequest> {
    @Override // cn.mucang.sundial.android.tcp.message.handler.MessageHandler
    public SendMessage handleMessage(QueryAllParameterRequest queryAllParameterRequest) {
        ParameterQueryResponse parameterQueryResponse = new ParameterQueryResponse();
        parameterQueryResponse.setResponseSerialNo(queryAllParameterRequest.getRawMessage().getHeader().getMessageSequence());
        List<DeviceParameter> listY = SundialDb.getInstance().getDb().y(DeviceParameter.class, e.d("select * from t_device_parameter", new String[0]));
        ArrayList arrayList = new ArrayList();
        for (DeviceParameter deviceParameter : listY) {
            long parameterId = deviceParameter.getParameterId();
            if (deviceParameter.getParameterId() != 113 && parameterId != 128) {
                arrayList.add(Parameter.from(deviceParameter));
            }
        }
        arrayList.add(Parameter.create(113L, String.valueOf(DeviceUtils.getBrightness(MucangConfig.getContext()))));
        CarModel carModel = OBDManager.getCarModel();
        if (carModel != null && carModel.totalDistance > BitmapDescriptorFactory.HUE_RED) {
            BytesEncoder bytesEncoder = new BytesEncoder();
            bytesEncoder.appendDWORD((long) (carModel.totalDistance * SundialManager.getInstance().getAccuracyMultiplier()));
            arrayList.add(Parameter.from(128L, bytesEncoder.toByteArray()));
        }
        parameterQueryResponse.setParameterList(arrayList);
        return parameterQueryResponse;
    }
}
