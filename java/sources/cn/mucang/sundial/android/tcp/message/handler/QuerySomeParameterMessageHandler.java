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
import cn.mucang.sundial.android.tcp.message.receive.QuerySomeParameterRequest;
import cn.mucang.sundial.android.tcp.message.send.ParameterQueryResponse;
import cn.mucang.sundial.android.tcp.utils.DeviceUtils;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class QuerySomeParameterMessageHandler extends BaseMessageHandler<QuerySomeParameterRequest> {
    @Override // cn.mucang.sundial.android.tcp.message.handler.MessageHandler
    public SendMessage handleMessage(QuerySomeParameterRequest querySomeParameterRequest) {
        ParameterQueryResponse parameterQueryResponse = new ParameterQueryResponse();
        parameterQueryResponse.setResponseSerialNo(querySomeParameterRequest.getRawMessage().getHeader().getMessageSequence());
        long[] parameterIdList = querySomeParameterRequest.getParameterIdList();
        StringBuilder sb = new StringBuilder("(");
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < parameterIdList.length) {
            if (parameterIdList[i] == 113) {
                arrayList.add(Parameter.create(113L, String.valueOf(DeviceUtils.getBrightness(MucangConfig.getContext()))));
            } else if (parameterIdList[i] == 128) {
                CarModel carModel = OBDManager.getCarModel();
                if (carModel != null && carModel.totalDistance > BitmapDescriptorFactory.HUE_RED) {
                    BytesEncoder bytesEncoder = new BytesEncoder();
                    bytesEncoder.appendDWORD((long) (carModel.totalDistance * SundialManager.getInstance().getAccuracyMultiplier()));
                    arrayList.add(Parameter.from(128L, bytesEncoder.toByteArray()));
                }
            } else {
                sb.append(parameterIdList[i]);
                sb.append(i < parameterIdList.length + (-1) ? "," : ")");
            }
            i++;
        }
        for (DeviceParameter deviceParameter : SundialDb.getInstance().getDb().y(DeviceParameter.class, e.d("select * from t_device_parameter where parameter_id in" + sb.toString(), new String[0]))) {
            long parameterId = deviceParameter.getParameterId();
            if (deviceParameter.getParameterId() != 113 && parameterId != 128) {
                arrayList.add(Parameter.from(deviceParameter));
            }
        }
        parameterQueryResponse.setParameterList(arrayList);
        return parameterQueryResponse;
    }
}
