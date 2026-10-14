package cn.mucang.sundial.library.activity;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import cn.mucang.android.core.utils.u;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.db.entity.CoachInfo;
import cn.mucang.sundial.android.db.entity.StudentInfo;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.data.DataManager;
import cn.mucang.sundial.android.tcp.upload.TakePhotoManager;
import cn.mucang.sundial.android.timer.train.TrainManager;
import cn.mucang.sundial.library.databinding.TtActivityDebugBinding;
import cn.mucang.sundial.library.util.AppUtil;
import cn.mucang.sundial.library.util.GlobalData;
import cn.mucang.sundial.library.util.KtxsKt;
import f.a.a.a.viewbinding.ViewBindingLazy;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0007¢\u0006\u0004\b\u0010\u0010\tJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\b\u0010\tR\u001d\u0010\u000f\u001a\u00020\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u0012"}, d2 = {"Lcn/mucang/sundial/library/activity/DebugActivity;", "Lcn/mucang/sundial/library/activity/BaseActivity;", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/os/Bundle;)Landroid/view/View;", "Lkotlin/v;", "onClickedRightFull", "()V", "Lcn/mucang/sundial/library/databinding/TtActivityDebugBinding;", "viewBinding$delegate", "Lkotlin/f;", "getViewBinding", "()Lcn/mucang/sundial/library/databinding/TtActivityDebugBinding;", "viewBinding", "<init>", "Companion", "library_release"}, k = 1, mv = {1, 1, 15})
public final class DebugActivity extends BaseActivity {
    public static final String KEY_DEBUG_CAMERA = "debug_camera";
    public static final String KEY_WIFI_LOCATION = "wifi_location";
    public static final String PREF_FILE = "dbg";

    /* JADX INFO: renamed from: viewBinding$delegate, reason: from kotlin metadata */
    private final Lazy viewBinding = new ViewBindingLazy(TtActivityDebugBinding.class, new ViewBindingLazy.a() { // from class: cn.mucang.sundial.library.activity.DebugActivity$$special$$inlined$viewBinding$1
        @Override // f.a.a.a.viewbinding.ViewBindingLazy.a
        public LayoutInflater get() {
            LayoutInflater layoutInflater = this.getLayoutInflater();
            r.d(layoutInflater, "layoutInflater");
            return layoutInflater;
        }
    });

    private final TtActivityDebugBinding getViewBinding() {
        return (TtActivityDebugBinding) this.viewBinding.getValue();
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity
    protected void onClickedRightFull() {
    }

    @Override // cn.mucang.sundial.library.activity.BaseActivity
    public View onCreateView(Bundle savedInstanceState) {
        TtActivityDebugBinding viewBinding = getViewBinding();
        viewBinding.forceCheckoutCoach.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.DebugActivity$onCreateView$1$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SundialLog.normal("点击教练强制退出按钮");
                if (SundialManager.getInstance().coachLoginSuccess()) {
                    SundialLog.normal("强制退出成功");
                    DataManager dataManager = DataManager.getInstance();
                    r.d(dataManager, "DataManager.getInstance()");
                    DataManager.getInstance().updateCoachStatus(dataManager.getLastCoach().getCoachNo(), CoachInfo.STATUS.INIT);
                    u.j("教练已强制签退");
                }
            }
        });
        viewBinding.forceCheckoutStudent.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.DebugActivity$onCreateView$1$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SundialLog.normal("点击学员强制退出按钮");
                if (SundialManager.getInstance().studentLoginSuccess()) {
                    new Thread(new Runnable() { // from class: cn.mucang.sundial.library.activity.DebugActivity$onCreateView$1$2.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DataManager dataManager = DataManager.getInstance();
                            r.d(dataManager, "DataManager.getInstance()");
                            StudentInfo student = dataManager.getLastStudent();
                            SundialManager sundialManager = SundialManager.getInstance();
                            r.d(student, "student");
                            sundialManager.studentForceLogout(student.getStudentNo(), 0L);
                            SundialLog.normal("强制退出成功");
                            DataManager.getInstance().updateStudentStatus(student.getStudentNo(), StudentInfo.STATUS.INIT);
                            TrainManager.getInstance().stop();
                            TakePhotoManager.getInstance().stop();
                            u.j("学员已强制签退");
                        }
                    }).start();
                }
            }
        });
        viewBinding.testCamera.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.DebugActivity$onCreateView$$inlined$with$lambda$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SundialLog.normal("点击测试摄像头按钮");
                KtxsKt.safeStartActivity$default(this.this$0, CameTestActivity.class, null, 2, null);
            }
        });
        viewBinding.restoreSystemLauncher.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.activity.DebugActivity$onCreateView$$inlined$with$lambda$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SundialLog.normal("已恢复系统默认页面,可直接返回桌面");
                GlobalData.INSTANCE.getDevice().deviceHelper(this.this$0).restoreSystemLauncher();
                u.h("已恢复系统默认页面,可直接返回桌面");
                BaseActivity.INSTANCE.setCanExit(true);
            }
        });
        viewBinding.debug2.setOnLongClickListener(new View.OnLongClickListener() { // from class: cn.mucang.sundial.library.activity.DebugActivity$onCreateView$$inlined$with$lambda$3
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                SundialLog.normal("跳转彩蛋二页面");
                KtxsKt.safeStartActivity$default(this.this$0, DebugActivity2.class, null, 2, null);
                return true;
            }
        });
        String mateData = AppUtil.getMateData("");
        TextView vendor = viewBinding.vendor;
        r.d(vendor, "vendor");
        if (mateData.length() == 0) {
            mateData = "Sdk";
        }
        vendor.setText(mateData);
        FrameLayout root = getViewBinding().getRoot();
        r.d(root, "viewBinding.root");
        return root;
    }
}
