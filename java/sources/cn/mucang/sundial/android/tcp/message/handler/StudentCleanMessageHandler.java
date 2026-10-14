package cn.mucang.sundial.android.tcp.message.handler;

import android.text.TextUtils;
import cn.mucang.sundial.android.db.entity.StudentInfo;
import cn.mucang.sundial.android.eventbus.LiveBus;
import cn.mucang.sundial.android.eventbus.event.StudentLogoutResponseEvent;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.data.DataManager;
import cn.mucang.sundial.android.tcp.message.SendMessage;
import cn.mucang.sundial.android.tcp.message.training.receive.StudentCleanResponse;
import cn.mucang.sundial.android.tcp.upload.TakePhotoManager;
import cn.mucang.sundial.android.timer.location.LocationReportManager;
import cn.mucang.sundial.android.timer.train.TrainManager;

/* JADX INFO: loaded from: classes5.dex */
public class StudentCleanMessageHandler extends BaseMessageHandler<StudentCleanResponse> {
    @Override // cn.mucang.sundial.android.tcp.message.handler.MessageHandler
    public SendMessage handleMessage(StudentCleanResponse studentCleanResponse) {
        SundialLog.com("重复登录清除学员信息： " + studentCleanResponse.getStudentNo());
        if (!TextUtils.isEmpty(studentCleanResponse.getStudentNo().trim())) {
            DataManager.getInstance().updateStudentStatus(studentCleanResponse.getStudentNo(), StudentInfo.STATUS.INIT);
            TrainManager.getInstance().stop();
            TakePhotoManager.getInstance().stop();
            LocationReportManager.getInstance().restartIfNotInTempTrack();
        }
        LiveBus.post(new StudentLogoutResponseEvent());
        return null;
    }
}
