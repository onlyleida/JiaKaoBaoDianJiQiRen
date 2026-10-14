package cn.mucang.sundial.library.viewmodel;

import android.app.Application;
import androidx.lifecycle.a;
import androidx.lifecycle.i0;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.webview.MenuOptions;
import cn.mucang.android.ui.framework.fetcher.ThreadPool;
import cn.mucang.sundial.android.PersonMode;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.db.entity.CoachInfo;
import cn.mucang.sundial.android.db.entity.StudentInfo;
import cn.mucang.sundial.android.tcp.data.DataManager;
import cn.mucang.sundial.library.R;
import cn.mucang.sundial.library.entity.CheckMode;
import cn.mucang.sundial.library.entity.ExtraKey;
import cn.mucang.sundial.library.entity.ServerCoachInfo;
import cn.mucang.sundial.library.entity.ServerStudentInfo;
import cn.mucang.sundial.library.http.CoachApi;
import cn.mucang.sundial.library.http.StudentApi;
import cn.mucang.sundial.library.util.KtxsKt;
import com.mobile.auth.gatewayauth.Constant;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.k;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u000223B\u000f\u0012\u0006\u0010/\u001a\u00020.¢\u0006\u0004\b0\u00101J?\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\u000b\u0010\fR$\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\"\u0010\u0015\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR$\u0010\u001c\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R(\u0010$\u001a\b\u0012\u0004\u0012\u00020#0\"8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R(\u0010+\u001a\b\u0012\u0004\u0012\u00020*0\"8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010%\u001a\u0004\b,\u0010'\"\u0004\b-\u0010)¨\u00064"}, d2 = {"Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;", "Landroidx/lifecycle/a;", "", "personMode", "checkMode", "", "idCardNo", "authToken", "courseSubject", "xyToken", "Lkotlin/v;", "getInfo", "(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V", "Lcn/mucang/sundial/android/db/entity/CoachInfo;", "coachInfoData", "Lcn/mucang/sundial/android/db/entity/CoachInfo;", "getCoachInfoData", "()Lcn/mucang/sundial/android/db/entity/CoachInfo;", "setCoachInfoData", "(Lcn/mucang/sundial/android/db/entity/CoachInfo;)V", "", "infoReady", "Z", "getInfoReady", "()Z", "setInfoReady", "(Z)V", "Lcn/mucang/sundial/android/db/entity/StudentInfo;", "studentInfoData", "Lcn/mucang/sundial/android/db/entity/StudentInfo;", "getStudentInfoData", "()Lcn/mucang/sundial/android/db/entity/StudentInfo;", "setStudentInfoData", "(Lcn/mucang/sundial/android/db/entity/StudentInfo;)V", "Landroidx/lifecycle/i0;", "Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserData;", "userData", "Landroidx/lifecycle/i0;", "getUserData", "()Landroidx/lifecycle/i0;", "setUserData", "(Landroidx/lifecycle/i0;)V", "Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserCoachData;", "userCoachData", "getUserCoachData", "setUserCoachData", "Landroid/app/Application;", "app", "<init>", "(Landroid/app/Application;)V", "UserCoachData", "UserData", "library_release"}, k = 1, mv = {1, 1, 15})
public final class FaceCheckActivityViewModel extends a {
    private CoachInfo coachInfoData;
    private boolean infoReady;
    private StudentInfo studentInfoData;
    private i0<UserCoachData> userCoachData;
    private i0<UserData> userData;

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\u0012\b\u0086\b\u0018\u00002\u00020\u0001B[\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0013\u001a\u00020\t\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b)\u0010*J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0007\u0010\u0004J\u0012\u0010\b\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\b\u0010\u0004J\u0010\u0010\n\u001a\u00020\tHÆ\u0003¢\u0006\u0004\b\n\u0010\u000bJ\u0012\u0010\f\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\f\u0010\u0004J\u0012\u0010\r\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\r\u0010\u0004Jn\u0010\u0016\u001a\u00020\u00002\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u0013\u001a\u00020\t2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0018\u0010\u0004J\u0010\u0010\u001a\u001a\u00020\u0019HÖ\u0001¢\u0006\u0004\b\u001a\u0010\u001bJ\u001a\u0010\u001d\u001a\u00020\t2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u001d\u0010\u001eR\u001b\u0010\u0014\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u001f\u001a\u0004\b \u0010\u0004R\u001b\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u001f\u001a\u0004\b!\u0010\u0004R\u0019\u0010\u0013\u001a\u00020\t8\u0006@\u0006¢\u0006\f\n\u0004\b\u0013\u0010\"\u001a\u0004\b#\u0010\u000bR\u001b\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u001f\u001a\u0004\b$\u0010\u0004R\u001b\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u001f\u001a\u0004\b%\u0010\u0004R\u001b\u0010\u0010\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u001f\u001a\u0004\b&\u0010\u0004R\u001b\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u001f\u001a\u0004\b'\u0010\u0004R\u001b\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u001f\u001a\u0004\b(\u0010\u0004¨\u0006+"}, d2 = {"Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserCoachData;", "", "", "component1", "()Ljava/lang/String;", "component2", "component3", "component4", "component5", "", "component6", "()Z", "component7", "component8", Constant.PROTOCOL_WEBVIEW_NAME, ExtraKey.avatar, "filingNo", "idCard", "courseCode", "error", "errorMessage", "confirmMessage", MenuOptions.COPY, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserCoachData;", "toString", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getErrorMessage", "getName", "Z", "getError", "getCourseCode", "getConfirmMessage", "getFilingNo", "getAvatar", "getIdCard", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V", "library_release"}, k = 1, mv = {1, 1, 15})
    public static final /* data */ class UserCoachData {
        private final String avatar;
        private final String confirmMessage;
        private final String courseCode;
        private final boolean error;
        private final String errorMessage;
        private final String filingNo;
        private final String idCard;
        private final String name;

        public UserCoachData(String str, String str2, String str3, String str4, String str5, boolean z, String str6, String str7) {
            this.name = str;
            this.avatar = str2;
            this.filingNo = str3;
            this.idCard = str4;
            this.courseCode = str5;
            this.error = z;
            this.errorMessage = str6;
            this.confirmMessage = str7;
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getName() {
            return this.name;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getAvatar() {
            return this.avatar;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getFilingNo() {
            return this.filingNo;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final String getIdCard() {
            return this.idCard;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final String getCourseCode() {
            return this.courseCode;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final boolean getError() {
            return this.error;
        }

        /* JADX INFO: renamed from: component7, reason: from getter */
        public final String getErrorMessage() {
            return this.errorMessage;
        }

        /* JADX INFO: renamed from: component8, reason: from getter */
        public final String getConfirmMessage() {
            return this.confirmMessage;
        }

        public final UserCoachData copy(String name, String avatar, String filingNo, String idCard, String courseCode, boolean error, String errorMessage, String confirmMessage) {
            return new UserCoachData(name, avatar, filingNo, idCard, courseCode, error, errorMessage, confirmMessage);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof UserCoachData)) {
                return false;
            }
            UserCoachData userCoachData = (UserCoachData) other;
            return r.a(this.name, userCoachData.name) && r.a(this.avatar, userCoachData.avatar) && r.a(this.filingNo, userCoachData.filingNo) && r.a(this.idCard, userCoachData.idCard) && r.a(this.courseCode, userCoachData.courseCode) && this.error == userCoachData.error && r.a(this.errorMessage, userCoachData.errorMessage) && r.a(this.confirmMessage, userCoachData.confirmMessage);
        }

        public final String getAvatar() {
            return this.avatar;
        }

        public final String getConfirmMessage() {
            return this.confirmMessage;
        }

        public final String getCourseCode() {
            return this.courseCode;
        }

        public final boolean getError() {
            return this.error;
        }

        public final String getErrorMessage() {
            return this.errorMessage;
        }

        public final String getFilingNo() {
            return this.filingNo;
        }

        public final String getIdCard() {
            return this.idCard;
        }

        public final String getName() {
            return this.name;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v12, types: [int] */
        /* JADX WARN: Type inference failed for: r2v13, types: [int] */
        /* JADX WARN: Type inference failed for: r2v19 */
        /* JADX WARN: Type inference failed for: r2v24 */
        public int hashCode() {
            String str = this.name;
            int iHashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.avatar;
            int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.filingNo;
            int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
            String str4 = this.idCard;
            int iHashCode4 = (iHashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
            String str5 = this.courseCode;
            int iHashCode5 = (iHashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
            boolean z = this.error;
            ?? r2 = z;
            if (z) {
                r2 = 1;
            }
            int i = (iHashCode5 + r2) * 31;
            String str6 = this.errorMessage;
            int iHashCode6 = (i + (str6 != null ? str6.hashCode() : 0)) * 31;
            String str7 = this.confirmMessage;
            return iHashCode6 + (str7 != null ? str7.hashCode() : 0);
        }

        public String toString() {
            return "UserCoachData(name=" + this.name + ", avatar=" + this.avatar + ", filingNo=" + this.filingNo + ", idCard=" + this.idCard + ", courseCode=" + this.courseCode + ", error=" + this.error + ", errorMessage=" + this.errorMessage + ", confirmMessage=" + this.confirmMessage + ")";
        }

        public /* synthetic */ UserCoachData(String str, String str2, String str3, String str4, String str5, boolean z, String str6, String str7, int i, o oVar) {
            this(str, str2, str3, str4, str5, (i & 32) != 0 ? false : z, (i & 64) != 0 ? null : str6, (i & 128) != 0 ? null : str7);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u000f\b\u0086\b\u0018\u00002\u00020\u0001B=\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\r\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b \u0010!J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0012\u0010\t\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\t\u0010\u0004J\u0012\u0010\n\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\n\u0010\u0004JJ\u0010\u0010\u001a\u00020\u00002\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\r\u001a\u00020\u00062\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0004J\u0010\u0010\u0014\u001a\u00020\u0013HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u001a\u0010\u0017\u001a\u00020\u00062\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0017\u0010\u0018R\u0019\u0010\r\u001a\u00020\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u0019\u001a\u0004\b\u001a\u0010\bR\u001b\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u001b\u001a\u0004\b\u001c\u0010\u0004R\u001b\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u001b\u001a\u0004\b\u001d\u0010\u0004R\u001b\u0010\u000b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u001b\u001a\u0004\b\u001e\u0010\u0004R\u001b\u0010\f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\u001b\u001a\u0004\b\u001f\u0010\u0004¨\u0006\""}, d2 = {"Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserData;", "", "", "component1", "()Ljava/lang/String;", "component2", "", "component3", "()Z", "component4", "component5", Constant.PROTOCOL_WEBVIEW_NAME, ExtraKey.avatar, "error", "errorMessage", "confirmMessage", MenuOptions.COPY, "(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel$UserData;", "toString", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "Z", "getError", "Ljava/lang/String;", "getErrorMessage", "getConfirmMessage", "getName", "getAvatar", "<init>", "(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V", "library_release"}, k = 1, mv = {1, 1, 15})
    public static final /* data */ class UserData {
        private final String avatar;
        private final String confirmMessage;
        private final boolean error;
        private final String errorMessage;
        private final String name;

        public UserData(String str, String str2, boolean z, String str3, String str4) {
            this.name = str;
            this.avatar = str2;
            this.error = z;
            this.errorMessage = str3;
            this.confirmMessage = str4;
        }

        public static /* synthetic */ UserData copy$default(UserData userData, String str, String str2, boolean z, String str3, String str4, int i, Object obj) {
            if ((i & 1) != 0) {
                str = userData.name;
            }
            if ((i & 2) != 0) {
                str2 = userData.avatar;
            }
            String str5 = str2;
            if ((i & 4) != 0) {
                z = userData.error;
            }
            boolean z2 = z;
            if ((i & 8) != 0) {
                str3 = userData.errorMessage;
            }
            String str6 = str3;
            if ((i & 16) != 0) {
                str4 = userData.confirmMessage;
            }
            return userData.copy(str, str5, z2, str6, str4);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getName() {
            return this.name;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getAvatar() {
            return this.avatar;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final boolean getError() {
            return this.error;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final String getErrorMessage() {
            return this.errorMessage;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final String getConfirmMessage() {
            return this.confirmMessage;
        }

        public final UserData copy(String name, String avatar, boolean error, String errorMessage, String confirmMessage) {
            return new UserData(name, avatar, error, errorMessage, confirmMessage);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof UserData)) {
                return false;
            }
            UserData userData = (UserData) other;
            return r.a(this.name, userData.name) && r.a(this.avatar, userData.avatar) && this.error == userData.error && r.a(this.errorMessage, userData.errorMessage) && r.a(this.confirmMessage, userData.confirmMessage);
        }

        public final String getAvatar() {
            return this.avatar;
        }

        public final String getConfirmMessage() {
            return this.confirmMessage;
        }

        public final boolean getError() {
            return this.error;
        }

        public final String getErrorMessage() {
            return this.errorMessage;
        }

        public final String getName() {
            return this.name;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v6, types: [int] */
        /* JADX WARN: Type inference failed for: r2v10 */
        /* JADX WARN: Type inference failed for: r2v12 */
        /* JADX WARN: Type inference failed for: r2v4, types: [int] */
        public int hashCode() {
            String str = this.name;
            int iHashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.avatar;
            int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            boolean z = this.error;
            ?? r2 = z;
            if (z) {
                r2 = 1;
            }
            int i = (iHashCode2 + r2) * 31;
            String str3 = this.errorMessage;
            int iHashCode3 = (i + (str3 != null ? str3.hashCode() : 0)) * 31;
            String str4 = this.confirmMessage;
            return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
        }

        public String toString() {
            return "UserData(name=" + this.name + ", avatar=" + this.avatar + ", error=" + this.error + ", errorMessage=" + this.errorMessage + ", confirmMessage=" + this.confirmMessage + ")";
        }

        public /* synthetic */ UserData(String str, String str2, boolean z, String str3, String str4, int i, o oVar) {
            this(str, str2, (i & 4) != 0 ? false : z, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? null : str4);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FaceCheckActivityViewModel(Application app) {
        super(app);
        r.e(app, "app");
        this.userData = new i0<>();
        this.userCoachData = new i0<>();
    }

    public static /* synthetic */ void getInfo$default(FaceCheckActivityViewModel faceCheckActivityViewModel, int i, int i2, String str, String str2, int i3, String str3, int i4, Object obj) {
        if ((i4 & 32) != 0) {
            str3 = "";
        }
        faceCheckActivityViewModel.getInfo(i, i2, str, str2, i3, str3);
    }

    public final CoachInfo getCoachInfoData() {
        return this.coachInfoData;
    }

    public final void getInfo(final int personMode, final int checkMode, final String idCardNo, final String authToken, final int courseSubject, final String xyToken) {
        r.e(idCardNo, "idCardNo");
        r.e(authToken, "authToken");
        r.e(xyToken, "xyToken");
        ThreadPool.a(new Runnable() { // from class: cn.mucang.sundial.library.viewmodel.FaceCheckActivityViewModel.getInfo.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public final void run() {
                Object objM139constructorimpl;
                Object objM139constructorimpl2;
                boolean z = true;
                if (personMode == PersonMode.COACH.ordinal()) {
                    if (checkMode == CheckMode.SIGN_OUT.ordinal()) {
                        SundialManager sundialManager = SundialManager.getInstance();
                        r.d(sundialManager, "SundialManager.getInstance()");
                        CoachInfo lastCoach = sundialManager.getLastCoach();
                        if (lastCoach != null && r.a(lastCoach.getIdCard(), idCardNo)) {
                            FaceCheckActivityViewModel.this.setInfoReady(true);
                            FaceCheckActivityViewModel.this.getUserData().l(new UserData(lastCoach.getCoachName(), lastCoach.getAvatar(), false, null, null, 28, null));
                            FaceCheckActivityViewModel.this.getUserCoachData().l(new UserCoachData(lastCoach.getCoachName(), lastCoach.getAvatar(), lastCoach.getCoachNo(), lastCoach.getIdCard(), lastCoach.getTeachType(), false, 0 == true ? 1 : 0, null, 224, null));
                            return;
                        }
                    }
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        objM139constructorimpl2 = Result.m139constructorimpl(new CoachApi().getCoachInfo(idCardNo, authToken));
                    } catch (Throwable th) {
                        Result.Companion companion2 = Result.INSTANCE;
                        objM139constructorimpl2 = Result.m139constructorimpl(k.a(th));
                    }
                    ServerCoachInfo serverCoachInfo = (ServerCoachInfo) (Result.m145isFailureimpl(objM139constructorimpl2) ? null : objM139constructorimpl2);
                    if (serverCoachInfo == null || n0.e(serverCoachInfo.getGlobalCode())) {
                        FaceCheckActivityViewModel.this.setInfoReady(true);
                        String string = FaceCheckActivityViewModel.this.getApplication().getString(R.string.tt_get_server_coach_info_fail);
                        r.d(string, "getApplication<Applicati…t_server_coach_info_fail)");
                        String str = null;
                        String str2 = null;
                        String str3 = null;
                        FaceCheckActivityViewModel.this.getUserData().l(new UserData(str, str2, true, string, str3, 16, null));
                        FaceCheckActivityViewModel.this.getUserCoachData().l(new UserCoachData(str, str2, null, null, str3, true, string, null, 128, null));
                        return;
                    }
                    FaceCheckActivityViewModel.this.setInfoReady(true);
                    SundialManager sundialManager2 = SundialManager.getInstance();
                    r.d(sundialManager2, "SundialManager.getInstance()");
                    CoachInfo coachInfo = KtxsKt.toCoachInfo(serverCoachInfo, sundialManager2.getLastCoach());
                    if (checkMode == CheckMode.SIGN_IN.ordinal()) {
                        DataManager.getInstance().saveCoach(coachInfo);
                    }
                    FaceCheckActivityViewModel.this.setCoachInfoData(coachInfo);
                    FaceCheckActivityViewModel.this.getUserData().l(new UserData(coachInfo.getCoachName(), coachInfo.getAvatar(), false, null, null, 28, null));
                    FaceCheckActivityViewModel.this.getUserCoachData().l(new UserCoachData(coachInfo.getCoachName(), coachInfo.getAvatar(), coachInfo.getCoachNo(), coachInfo.getIdCard(), coachInfo.getTeachType(), false, 0 == true ? 1 : 0, null, 224, null));
                    return;
                }
                if (personMode != PersonMode.STUDENT.ordinal()) {
                    FaceCheckActivityViewModel.this.setInfoReady(true);
                    FaceCheckActivityViewModel.this.getUserData().l(new UserData(null, null, false, null, null, 28, null));
                    return;
                }
                if (checkMode == CheckMode.SIGN_OUT.ordinal()) {
                    SundialManager sundialManager3 = SundialManager.getInstance();
                    r.d(sundialManager3, "SundialManager.getInstance()");
                    StudentInfo lastStudent = sundialManager3.getLastStudent();
                    if (lastStudent != null && r.a(lastStudent.getIdCard(), idCardNo)) {
                        FaceCheckActivityViewModel.this.setInfoReady(true);
                        FaceCheckActivityViewModel.this.getUserData().l(new UserData(lastStudent.getStudentName(), lastStudent.getAvatar(), false, null, null, 28, null));
                        FaceCheckActivityViewModel.this.getUserCoachData().l(new UserCoachData(lastStudent.getStudentName(), lastStudent.getAvatar(), lastStudent.getStudentNo(), lastStudent.getIdCard(), lastStudent.getCourseCode(), false, 0 == true ? 1 : 0, null, 224, null));
                        return;
                    }
                }
                try {
                    Result.Companion companion3 = Result.INSTANCE;
                    objM139constructorimpl = Result.m139constructorimpl(new StudentApi().getStudentInfo(idCardNo, authToken, xyToken));
                } catch (Throwable th2) {
                    Result.Companion companion4 = Result.INSTANCE;
                    objM139constructorimpl = Result.m139constructorimpl(k.a(th2));
                }
                ServerStudentInfo serverStudentInfo = (ServerStudentInfo) (Result.m145isFailureimpl(objM139constructorimpl) ? null : objM139constructorimpl);
                if (serverStudentInfo == null || n0.e(serverStudentInfo.getGlobalCode())) {
                    FaceCheckActivityViewModel.this.setInfoReady(true);
                    String string2 = FaceCheckActivityViewModel.this.getApplication().getString(R.string.tt_get_server_student_info_fail);
                    r.d(string2, "getApplication<Applicati…server_student_info_fail)");
                    if (serverStudentInfo != null && n0.g(serverStudentInfo.getErrorMessage())) {
                        string2 = String.valueOf(serverStudentInfo.getErrorMessage());
                    }
                    String str4 = null;
                    String str5 = null;
                    String str6 = null;
                    FaceCheckActivityViewModel.this.getUserData().l(new UserData(str4, str5, true, string2, str6, 16, null));
                    FaceCheckActivityViewModel.this.getUserCoachData().l(new UserCoachData(str4, str5, null, null, str6, true, string2, null, 128, null));
                    return;
                }
                FaceCheckActivityViewModel.this.setInfoReady(true);
                SundialManager sundialManager4 = SundialManager.getInstance();
                r.d(sundialManager4, "SundialManager.getInstance()");
                StudentInfo studentInfo = KtxsKt.toStudentInfo(serverStudentInfo, courseSubject, sundialManager4.getLastStudent());
                if (checkMode == CheckMode.SIGN_IN.ordinal()) {
                    DataManager.getInstance().saveStudent(studentInfo);
                }
                FaceCheckActivityViewModel.this.setStudentInfoData(studentInfo);
                String confirmMessage = serverStudentInfo.getConfirmMessage();
                if (confirmMessage != null && confirmMessage.length() != 0) {
                    z = false;
                }
                if (z) {
                    FaceCheckActivityViewModel.this.getUserData().l(new UserData(studentInfo.getStudentName(), studentInfo.getAvatar(), false, null, null, 28, null));
                    FaceCheckActivityViewModel.this.getUserCoachData().l(new UserCoachData(studentInfo.getStudentName(), studentInfo.getAvatar(), studentInfo.getStudentNo(), studentInfo.getIdCard(), studentInfo.getCourseCode(), false, 0 == true ? 1 : 0, null, 224, null));
                    return;
                }
                i0<UserData> userData = FaceCheckActivityViewModel.this.getUserData();
                String studentName = studentInfo.getStudentName();
                String avatar = studentInfo.getAvatar();
                String confirmMessage2 = serverStudentInfo.getConfirmMessage();
                userData.l(new UserData(studentName, avatar, false, "", confirmMessage2 != null ? confirmMessage2 : ""));
                i0<UserCoachData> userCoachData = FaceCheckActivityViewModel.this.getUserCoachData();
                String studentName2 = studentInfo.getStudentName();
                String avatar2 = studentInfo.getAvatar();
                String studentNo = studentInfo.getStudentNo();
                String idCard = studentInfo.getIdCard();
                String courseCode = studentInfo.getCourseCode();
                String confirmMessage3 = serverStudentInfo.getConfirmMessage();
                userCoachData.l(new UserCoachData(studentName2, avatar2, studentNo, idCard, courseCode, false, "", confirmMessage3 != null ? confirmMessage3 : ""));
            }
        });
    }

    public final boolean getInfoReady() {
        return this.infoReady;
    }

    public final StudentInfo getStudentInfoData() {
        return this.studentInfoData;
    }

    public final i0<UserCoachData> getUserCoachData() {
        return this.userCoachData;
    }

    public final i0<UserData> getUserData() {
        return this.userData;
    }

    public final void setCoachInfoData(CoachInfo coachInfo) {
        this.coachInfoData = coachInfo;
    }

    public final void setInfoReady(boolean z) {
        this.infoReady = z;
    }

    public final void setStudentInfoData(StudentInfo studentInfo) {
        this.studentInfoData = studentInfo;
    }

    public final void setUserCoachData(i0<UserCoachData> i0Var) {
        r.e(i0Var, "<set-?>");
        this.userCoachData = i0Var;
    }

    public final void setUserData(i0<UserData> i0Var) {
        r.e(i0Var, "<set-?>");
        this.userData = i0Var;
    }
}
