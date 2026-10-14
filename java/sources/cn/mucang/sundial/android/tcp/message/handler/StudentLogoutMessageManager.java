package cn.mucang.sundial.android.tcp.message.handler;

import cn.mucang.android.core.utils.t;
import cn.mucang.sundial.android.db.entity.StudentInfo;
import cn.mucang.sundial.android.eventbus.LiveBus;
import cn.mucang.sundial.android.eventbus.event.StudentLogoutResponseEvent;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.TimeoutManager;
import cn.mucang.sundial.android.tcp.data.DataManager;
import cn.mucang.sundial.android.tcp.message.SendMessage;
import cn.mucang.sundial.android.tcp.message.training.receive.StudentLogoutResponse;
import cn.mucang.sundial.android.tcp.upload.TakePhotoManager;
import cn.mucang.sundial.android.tcp.utils.ProtocolConfig;
import cn.mucang.sundial.android.timer.location.LocationReportManager;
import cn.mucang.sundial.android.timer.train.TrainManager;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes5.dex */
public class StudentLogoutMessageManager extends BaseMessageHandler<StudentLogoutResponse> {
    @Override // cn.mucang.sundial.android.tcp.message.handler.MessageHandler
    public SendMessage handleMessage(StudentLogoutResponse studentLogoutResponse) {
        TimeoutManager.getInstance().onMessageReply(Videoio.CAP_PROP_XI_LENS_FOCUS_MOVE, true);
        StudentLogoutResponse.Result result = studentLogoutResponse.getResult();
        t.h(ProtocolConfig.SUNDIAL, "学员登出应答： " + result);
        SundialLog.com("学员登出应答： " + result);
        if (result == StudentLogoutResponse.Result.SUCCESS) {
            DataManager.getInstance().updateStudentStatus(studentLogoutResponse.getStudentNo(), StudentInfo.STATUS.INIT);
            TrainManager.getInstance().stop();
            TakePhotoManager.getInstance().stop();
            LocationReportManager.getInstance().restartIfNotInTempTrack();
        }
        LiveBus.post(new StudentLogoutResponseEvent());
        return null;
    }
}
