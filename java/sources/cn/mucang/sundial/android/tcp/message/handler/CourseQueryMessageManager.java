package cn.mucang.sundial.android.tcp.message.handler;

import cn.mucang.android.core.utils.MiscUtils;
import cn.mucang.android.ui.framework.fetcher.ThreadPool;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.db.entity.CourseRecord;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.message.SendMessage;
import cn.mucang.sundial.android.tcp.message.training.receive.CourseQueryRequest;
import cn.mucang.sundial.android.tcp.message.training.send.CourseQueryResponse;
import cn.mucang.sundial.android.tcp.utils.DeviceUtils;
import cn.mucang.sundial.android.timer.train.TrainManager;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class CourseQueryMessageManager extends BaseMessageHandler<CourseQueryRequest> {
    static /* synthetic */ void a(List list) {
        MiscUtils.p(1000L);
        TrainManager.getInstance().addCourseRecords(2, false, list, false);
        TrainManager.getInstance().uploadAllQueuedRecords();
    }

    @Override // cn.mucang.sundial.android.tcp.message.handler.MessageHandler
    public SendMessage handleMessage(CourseQueryRequest courseQueryRequest) {
        final List<CourseRecord> listQueryCourseRecordUpload;
        SundialLog.com("命令上报学时。。。");
        CourseQueryResponse courseQueryResponse = new CourseQueryResponse();
        courseQueryResponse.setResult(1);
        SundialManager.getInstance().sendMessage(courseQueryResponse);
        int queryType = courseQueryRequest.getQueryType();
        if (queryType == 1) {
            listQueryCourseRecordUpload = TrainManager.getInstance().queryCourseRecordUpload(DeviceUtils.toTimestamp(courseQueryRequest.getStartTime()), DeviceUtils.toTimestamp(courseQueryRequest.getEndTime()));
            SundialLog.com("命令上报学时。。。按时间查询");
        } else if (queryType == 2) {
            listQueryCourseRecordUpload = TrainManager.getInstance().queryCourseRecordUpload(courseQueryRequest.getRequestCount());
            SundialLog.com("命令上报学时。。。按条数查询");
        } else {
            listQueryCourseRecordUpload = null;
        }
        boolean z = listQueryCourseRecordUpload != null && listQueryCourseRecordUpload.size() > 0;
        courseQueryResponse.setResult(z ? 4 : 3);
        SundialLog.com("命令上报学时。。。hasRecord=" + z);
        if (z) {
            ThreadPool.a(new Runnable() { // from class: cn.mucang.sundial.android.tcp.message.handler.a
                @Override // java.lang.Runnable
                public final void run() {
                    CourseQueryMessageManager.a(listQueryCourseRecordUpload);
                }
            });
        }
        return courseQueryResponse;
    }
}
