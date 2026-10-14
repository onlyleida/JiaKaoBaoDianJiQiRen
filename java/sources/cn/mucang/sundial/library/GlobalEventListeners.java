package cn.mucang.sundial.library;

import android.app.Activity;
import android.app.Application;
import android.os.Environment;
import androidx.lifecycle.a0;
import androidx.lifecycle.i0;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.sundial.android.PersonMode;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.db.entity.CoachInfo;
import cn.mucang.sundial.android.eventbus.LiveBus;
import cn.mucang.sundial.android.eventbus.event.AutoTakePhotoEvent;
import cn.mucang.sundial.android.eventbus.event.PowerOffEvent;
import cn.mucang.sundial.android.eventbus.event.TakePhotoEvent;
import cn.mucang.sundial.android.eventbus.event.UpdateEvent;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.data.DataManager;
import cn.mucang.sundial.android.tcp.upload.EventType;
import cn.mucang.sundial.android.tcp.upload.UploadMode;
import cn.mucang.sundial.android.tcp.utils.UtilsKt;
import cn.mucang.sundial.library.device.SundialDevice;
import cn.mucang.sundial.library.tts.Tts;
import cn.mucang.sundial.library.util.AutoTakePhotoHelper;
import cn.mucang.sundial.library.util.GlobalData;
import cn.mucang.sundial.library.util.LoginUtil;
import cn.mucang.sundial.library.widget.DialogCallBack;
import cn.mucang.sundial.library.widget.UpgradeConfirmDialog;
import com.blankj.utilcode.util.a;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0005\u0010\u0004J\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcn/mucang/sundial/library/GlobalEventListeners;", "", "Lkotlin/v;", "register", "()V", "<init>", "library_release"}, k = 1, mv = {1, 1, 15})
public final class GlobalEventListeners {
    public static final GlobalEventListeners INSTANCE = new GlobalEventListeners();

    private GlobalEventListeners() {
    }

    public final void register() {
        LiveBus.Companion companion = LiveBus.INSTANCE;
        i0 i0VarWith = companion.with(PowerOffEvent.class);
        i0VarWith.p(new i0.b(i0VarWith, new a0<PowerOffEvent>() { // from class: cn.mucang.sundial.library.GlobalEventListeners.register.1
            @Override // androidx.lifecycle.a0
            public final void onChanged(PowerOffEvent powerOffEvent) {
                SundialDevice device = GlobalData.INSTANCE.getDevice();
                Application context = MucangConfig.getContext();
                r.d(context, "MucangConfig.getContext()");
                device.deviceHelper(context).powerOff();
            }
        }));
        i0 i0VarWith2 = companion.with(UpdateEvent.class);
        i0VarWith2.p(new i0.b(i0VarWith2, new a0<UpdateEvent>() { // from class: cn.mucang.sundial.library.GlobalEventListeners.register.2

            /* JADX INFO: renamed from: cn.mucang.sundial.library.GlobalEventListeners$register$2$1, reason: invalid class name */
            @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"cn/mucang/sundial/library/GlobalEventListeners$register$2$1", "Lcn/mucang/sundial/library/widget/DialogCallBack;", "", "index", "Lkotlin/v;", "onSelect", "(I)V", "library_release"}, k = 1, mv = {1, 1, 15})
            public static final class AnonymousClass1 implements DialogCallBack {
                final /* synthetic */ UpdateEvent $it;

                AnonymousClass1(UpdateEvent updateEvent) {
                    this.$it = updateEvent;
                }

                @Override // cn.mucang.sundial.library.widget.DialogCallBack
                public void onSelect(int index) {
                    MucangConfig.f(new Runnable() { // from class: cn.mucang.sundial.library.GlobalEventListeners$register$2$1$onSelect$1
                        @Override // java.lang.Runnable
                        public final void run() throws Throwable {
                            a.C0191a c0191aA;
                            File file = new File(Environment.getExternalStorageDirectory(), "update.apk");
                            try {
                                Tts.speak$default("开始升级", null, 2, null);
                                SundialLog.normal("开始升级");
                                if (file.exists() && (c0191aA = a.a(file)) != null && c0191aA.c().equals(a.c()) && c0191aA.e() > a.d()) {
                                    SundialLog.normal("本地存在同包名更高版本文件，跳转升级");
                                    a.l(file);
                                    return;
                                }
                                if (file.exists()) {
                                    file.delete();
                                }
                                SundialLog.normal("开始下载");
                                UtilsKt.downloadURLToFile(this.this$0.$it.getUrl(), file, null);
                                SundialLog.normal("下载完毕");
                                if (file.exists()) {
                                    a.l(file);
                                }
                            } catch (Exception unused) {
                                SundialLog.normal("升级失败");
                                Tts.speak$default("升级失败", null, 2, null);
                            }
                        }
                    });
                }
            }

            @Override // androidx.lifecycle.a0
            public final void onChanged(UpdateEvent updateEvent) {
                SundialLog.normal("升级URL: " + updateEvent.getUrl());
                if (LoginUtil.INSTANCE.studentLoginSuccess()) {
                    return;
                }
                SundialLog.normal("显示升级弹窗");
                Activity activityI = MucangConfig.i();
                r.d(activityI, "MucangConfig.getCurrentActivity()");
                UpgradeConfirmDialog.Builder builder = new UpgradeConfirmDialog.Builder(activityI, true);
                String string = MucangConfig.getContext().getString(R.string.tt_upgrade);
                r.d(string, "MucangConfig.getContext(…ring(R.string.tt_upgrade)");
                builder.setContent(string, new AnonymousClass1(updateEvent)).show();
            }
        }));
        i0 i0VarWith3 = companion.with(TakePhotoEvent.class);
        i0VarWith3.p(new i0.b(i0VarWith3, new a0<TakePhotoEvent>() { // from class: cn.mucang.sundial.library.GlobalEventListeners.register.3
            @Override // androidx.lifecycle.a0
            public final void onChanged(TakePhotoEvent takePhotoEvent) {
                Application context = MucangConfig.getContext();
                r.d(context, "MucangConfig.getContext()");
                new AutoTakePhotoHelper(context, takePhotoEvent.personMode, takePhotoEvent.uploadMode, takePhotoEvent.eventType, takePhotoEvent.coach, takePhotoEvent.student).takePicture();
            }
        }));
        i0 i0VarWith4 = companion.with(AutoTakePhotoEvent.class);
        i0VarWith4.p(new i0.b(i0VarWith4, new a0<AutoTakePhotoEvent>() { // from class: cn.mucang.sundial.library.GlobalEventListeners.register.4
            @Override // androidx.lifecycle.a0
            public final void onChanged(AutoTakePhotoEvent autoTakePhotoEvent) {
                if (SundialManager.getInstance().studentLoginSuccess()) {
                    Application context = MucangConfig.getContext();
                    r.d(context, "MucangConfig.getContext()");
                    int iOrdinal = PersonMode.STUDENT.ordinal();
                    int iValueOf = UploadMode.TERMINAL_TAKE.valueOf();
                    int iValueOf2 = EventType.STUDENT_TRAINING.valueOf();
                    DataManager dataManager = DataManager.getInstance();
                    r.d(dataManager, "DataManager.getInstance()");
                    CoachInfo lastCoach = dataManager.getLastCoach();
                    DataManager dataManager2 = DataManager.getInstance();
                    r.d(dataManager2, "DataManager.getInstance()");
                    new AutoTakePhotoHelper(context, iOrdinal, iValueOf, iValueOf2, lastCoach, dataManager2.getLastStudent()).takePicture();
                }
            }
        }));
    }
}
