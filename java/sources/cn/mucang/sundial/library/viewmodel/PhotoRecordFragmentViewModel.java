package cn.mucang.sundial.library.viewmodel;

import android.app.Application;
import androidx.lifecycle.a;
import androidx.lifecycle.i0;
import cn.mucang.android.ui.framework.fetcher.ThreadPool;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.db.entity.StudentInfo;
import cn.mucang.sundial.library.entity.PhotoRecordInfo;
import cn.mucang.sundial.library.http.PhotoApi;
import cn.mucang.sundial.library.util.SubjectUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004R\u001f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\u000f"}, d2 = {"Lcn/mucang/sundial/library/viewmodel/PhotoRecordFragmentViewModel;", "Landroidx/lifecycle/a;", "Lkotlin/v;", "getPhotoRecords", "()V", "Landroidx/lifecycle/i0;", "Lcn/mucang/sundial/library/entity/PhotoRecordInfo;", "photoRecordData", "Landroidx/lifecycle/i0;", "getPhotoRecordData", "()Landroidx/lifecycle/i0;", "Landroid/app/Application;", "app", "<init>", "(Landroid/app/Application;)V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class PhotoRecordFragmentViewModel extends a {
    private final i0<PhotoRecordInfo> photoRecordData;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PhotoRecordFragmentViewModel(Application app) {
        super(app);
        r.e(app, "app");
        this.photoRecordData = new i0<>();
    }

    public final i0<PhotoRecordInfo> getPhotoRecordData() {
        return this.photoRecordData;
    }

    public final void getPhotoRecords() {
        ThreadPool.a(new Runnable() { // from class: cn.mucang.sundial.library.viewmodel.PhotoRecordFragmentViewModel.getPhotoRecords.1
            @Override // java.lang.Runnable
            public final void run() {
                PhotoRecordInfo photoRecordInfo = new PhotoRecordInfo();
                SundialManager sundialManager = SundialManager.getInstance();
                r.d(sundialManager, "SundialManager.getInstance()");
                StudentInfo student = sundialManager.getLastStudent();
                String strSubject2param = SubjectUtil.INSTANCE.subject2param(SundialManager.getInstance().getCourseTypeByCourseCode(student != null ? student.getCourseCode() : null));
                PhotoApi photoApi = new PhotoApi();
                r.d(student, "student");
                String idCard = student.getIdCard();
                r.d(idCard, "student.idCard");
                photoRecordInfo.setInfoList(photoApi.getPhotos(idCard, strSubject2param));
                PhotoRecordFragmentViewModel.this.getPhotoRecordData().l(photoRecordInfo);
            }
        });
    }
}
