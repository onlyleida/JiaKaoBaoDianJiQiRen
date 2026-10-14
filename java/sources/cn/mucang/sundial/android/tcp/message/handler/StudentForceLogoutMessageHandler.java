package cn.mucang.sundial.android.tcp.message.handler;

import cn.mucang.android.core.utils.t;
import cn.mucang.sundial.android.db.entity.StudentInfo;
import cn.mucang.sundial.android.eventbus.LiveBus;
import cn.mucang.sundial.android.eventbus.event.StudentLogoutResponseEvent;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.TimeoutManager;
import cn.mucang.sundial.android.tcp.data.DataManager;
import cn.mucang.sundial.android.tcp.message.SendMessage;
import cn.mucang.sundial.android.tcp.message.training.receive.StudentForceLogoutResponse;
import cn.mucang.sundial.android.tcp.upload.TakePhotoManager;
import cn.mucang.sundial.android.tcp.utils.ProtocolConfig;
import cn.mucang.sundial.android.timer.location.LocationReportManager;
import cn.mucang.sundial.android.timer.train.TrainManager;

/* JADX INFO: loaded from: classes5.dex */
public class StudentForceLogoutMessageHandler extends BaseMessageHandler<StudentForceLogoutResponse> {
    @Override // cn.mucang.sundial.android.tcp.message.handler.MessageHandler
    public SendMessage handleMessage(StudentForceLogoutResponse studentForceLogoutResponse) {
        TimeoutManager.getInstance().onMessageReply(28672, true);
        StudentForceLogoutResponse.Result result = studentForceLogoutResponse.getResult();
        t.h(ProtocolConfig.SUNDIAL, "学员强制登出应答： " + result);
        SundialLog.com("学员强制登出应答： " + result);
        if (result == StudentForceLogoutResponse.Result.SUCCESS) {
            DataManager.getInstance().updateStudentStatus(studentForceLogoutResponse.getStudentNo(), StudentInfo.STATUS.INIT);
            TrainManager.getInstance().stop();
            TakePhotoManager.getInstance().stop();
            LocationReportManager.getInstance().restartIfNotInTempTrack();
        }
        LiveBus.post(new StudentLogoutResponseEvent());
        return null;
    }
}
