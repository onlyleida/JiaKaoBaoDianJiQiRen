package cn.mucang.sundial.library.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.widget.TextView;
import androidx.core.a.a;
import androidx.exifinterface.media.ExifInterface;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.db.entity.CoachInfo;
import cn.mucang.sundial.android.db.entity.StudentInfo;
import cn.mucang.sundial.library.entity.ServerCoachInfo;
import cn.mucang.sundial.library.entity.ServerStudentInfo;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.text.t;
import kotlin.v;
import org.slf4j.Marker;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u001d\u0010\u0003\u001a\u00020\u0001*\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0003\u0010\u0004\u001a%\u0010\n\u001a\u00020\b*\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b\u001a\u0013\u0010\r\u001a\u00020\f*\u0004\u0018\u00010\f¢\u0006\u0004\b\r\u0010\u000e\u001aA\u0010\u0018\u001a\u00020\u0016\"\b\b\u0000\u0010\u0010*\u00020\u000f*\u00020\u00112\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u00122\u0016\b\u0002\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0014¢\u0006\u0004\b\u0018\u0010\u0019\u001a%\u0010\u001d\u001a\u0004\u0018\u00010\u001a*\u0004\u0018\u00010\u001a2\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u0006¢\u0006\u0004\b\u001d\u0010\u001e\u001a!\u0010\"\u001a\u00020\u0016*\u00020\u001f2\u0006\u0010 \u001a\u00020\u00062\u0006\u0010!\u001a\u00020\u0006¢\u0006\u0004\b\"\u0010#¨\u0006$"}, d2 = {"Lcn/mucang/sundial/library/entity/ServerCoachInfo;", "Lcn/mucang/sundial/android/db/entity/CoachInfo;", "coachInfo", "toCoachInfo", "(Lcn/mucang/sundial/library/entity/ServerCoachInfo;Lcn/mucang/sundial/android/db/entity/CoachInfo;)Lcn/mucang/sundial/android/db/entity/CoachInfo;", "Lcn/mucang/sundial/library/entity/ServerStudentInfo;", "", "courseSubject", "Lcn/mucang/sundial/android/db/entity/StudentInfo;", "studentInfo", "toStudentInfo", "(Lcn/mucang/sundial/library/entity/ServerStudentInfo;ILcn/mucang/sundial/android/db/entity/StudentInfo;)Lcn/mucang/sundial/android/db/entity/StudentInfo;", "", "isTrue", "(Ljava/lang/Boolean;)Z", "Landroid/app/Activity;", ExifInterface.GPS_DIRECTION_TRUE, "Landroid/content/Context;", "Ljava/lang/Class;", "clazz", "Lkotlin/Function1;", "Landroid/content/Intent;", "Lkotlin/v;", "intentInitializer", "safeStartActivity", "(Landroid/content/Context;Ljava/lang/Class;Lkotlin/jvm/b/l;)V", "", "startIndex", "maskLength", "mask", "(Ljava/lang/String;II)Ljava/lang/String;", "Landroid/widget/TextView;", "resId", "size", "setDrawableLeft", "(Landroid/widget/TextView;II)V", "library_release"}, k = 2, mv = {1, 1, 15})
public final class KtxsKt {
    public static final boolean isTrue(Boolean bool) {
        return bool != null && r.a(bool, Boolean.TRUE);
    }

    public static final String mask(String str, int i, int i2) {
        int i3;
        if (str == null || str.length() < (i3 = i + i2)) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        String strSubstring = str.substring(0, i);
        r.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        sb.append(strSubstring);
        sb.append(t.t(Marker.ANY_MARKER, i2));
        String strSubstring2 = str.substring(i3);
        r.d(strSubstring2, "(this as java.lang.String).substring(startIndex)");
        sb.append(strSubstring2);
        return sb.toString();
    }

    public static final <T extends Activity> void safeStartActivity(Context safeStartActivity, Class<T> clazz, Function1<? super Intent, v> function1) {
        r.e(safeStartActivity, "$this$safeStartActivity");
        r.e(clazz, "clazz");
        Intent intent = new Intent(safeStartActivity, (Class<?>) clazz);
        if (!(safeStartActivity instanceof Activity)) {
            intent.addFlags(268435456);
        }
        if (function1 != null) {
            function1.invoke(intent);
        }
        safeStartActivity.startActivity(intent);
    }

    public static /* synthetic */ void safeStartActivity$default(Context context, Class cls, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = null;
        }
        safeStartActivity(context, cls, function1);
    }

    public static final void setDrawableLeft(TextView setDrawableLeft, int i, int i2) {
        r.e(setDrawableLeft, "$this$setDrawableLeft");
        Drawable drawableF = a.f(setDrawableLeft.getContext(), i);
        if (drawableF != null) {
            drawableF.setBounds(0, 0, i2, i2);
        }
        setDrawableLeft.setCompoundDrawables(drawableF, null, null, null);
    }

    public static final CoachInfo toCoachInfo(ServerCoachInfo toCoachInfo, CoachInfo coachInfo) {
        r.e(toCoachInfo, "$this$toCoachInfo");
        if (coachInfo == null) {
            coachInfo = new CoachInfo();
        }
        coachInfo.setCoachNo(toCoachInfo.getGlobalCode());
        coachInfo.setCoachName(toCoachInfo.getName());
        coachInfo.setIdCard(toCoachInfo.getCertificateCode());
        coachInfo.setAvatar(toCoachInfo.getAvatar());
        coachInfo.setTeachType(toCoachInfo.getTeachLicenceType());
        coachInfo.setDriveType(toCoachInfo.getDriveType());
        coachInfo.setSchoolName(toCoachInfo.getSchoolName());
        return coachInfo;
    }

    public static /* synthetic */ CoachInfo toCoachInfo$default(ServerCoachInfo serverCoachInfo, CoachInfo coachInfo, int i, Object obj) {
        if ((i & 1) != 0) {
            coachInfo = null;
        }
        return toCoachInfo(serverCoachInfo, coachInfo);
    }

    public static final StudentInfo toStudentInfo(ServerStudentInfo toStudentInfo, int i, StudentInfo studentInfo) {
        String coachNo;
        r.e(toStudentInfo, "$this$toStudentInfo");
        if (studentInfo == null) {
            studentInfo = new StudentInfo();
        }
        SundialManager sundialManager = SundialManager.getInstance();
        r.d(sundialManager, "SundialManager.getInstance()");
        CoachInfo lastCoach = sundialManager.getLastCoach();
        if (lastCoach == null || (coachNo = lastCoach.getCoachNo()) == null) {
            coachNo = "";
        }
        studentInfo.setCoachNo(coachNo);
        studentInfo.setStudentNo(toStudentInfo.getGlobalCode());
        studentInfo.setStudentName(toStudentInfo.getName());
        studentInfo.setIdCard(toStudentInfo.getCertificateCode());
        studentInfo.setAvatar(toStudentInfo.getAvatar());
        studentInfo.setDriveLicence(toStudentInfo.getDriveLicence());
        studentInfo.setCoachTakePhoto(toStudentInfo.getCoachTakePhoto() ? 1 : 0);
        SundialManager sundialManager2 = SundialManager.getInstance();
        String driveLicence = toStudentInfo.getDriveLicence();
        if (driveLicence == null) {
            driveLicence = "C1";
        }
        studentInfo.setCourseCode(sundialManager2.createCourseCode(driveLicence, SubjectUtil.INSTANCE.index2Subject(i)));
        return studentInfo;
    }

    public static /* synthetic */ StudentInfo toStudentInfo$default(ServerStudentInfo serverStudentInfo, int i, StudentInfo studentInfo, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            studentInfo = null;
        }
        return toStudentInfo(serverStudentInfo, i, studentInfo);
    }
}
