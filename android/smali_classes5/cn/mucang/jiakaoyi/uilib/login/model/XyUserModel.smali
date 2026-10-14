.class public final Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008)\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010H\u001a\u00020IJ\u0006\u0010J\u001a\u00020IR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0006\"\u0004\u0008\u001a\u0010\u0008R\u001a\u0010\u001b\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0015\"\u0004\u0008\u001d\u0010\u0017R\u001a\u0010\u001e\u001a\u00020\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001c\u0010$\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u0006\"\u0004\u0008&\u0010\u0008R\u001c\u0010\'\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u0006\"\u0004\u0008)\u0010\u0008R\u001c\u0010*\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u0006\"\u0004\u0008,\u0010\u0008R\u001c\u0010-\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\u0006\"\u0004\u0008/\u0010\u0008R\u001a\u00100\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010\u0015\"\u0004\u00082\u0010\u0017R\u001c\u00103\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u0010\u0006\"\u0004\u00085\u0010\u0008R\u001c\u00106\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u0010\u0006\"\u0004\u00088\u0010\u0008R\u001c\u00109\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010\u0006\"\u0004\u0008;\u0010\u0008R\u001c\u0010<\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010\u0006\"\u0004\u0008>\u0010\u0008R\u001a\u0010?\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u0010\u0015\"\u0004\u0008A\u0010\u0017R\u001a\u0010B\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u0010\u0015\"\u0004\u0008D\u0010\u0017R\u001c\u0010E\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010\u0006\"\u0004\u0008G\u0010\u0008\u00a8\u0006K"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;",
        "Ljava/io/Serializable;",
        "()V",
        "authToken",
        "",
        "getAuthToken",
        "()Ljava/lang/String;",
        "setAuthToken",
        "(Ljava/lang/String;)V",
        "authUser",
        "Lcn/mucang/android/account/data/AuthUser;",
        "getAuthUser",
        "()Lcn/mucang/android/account/data/AuthUser;",
        "setAuthUser",
        "(Lcn/mucang/android/account/data/AuthUser;)V",
        "avatar",
        "getAvatar",
        "setAvatar",
        "courseId",
        "",
        "getCourseId",
        "()J",
        "setCourseId",
        "(J)V",
        "driveLicenseType",
        "getDriveLicenseType",
        "setDriveLicenseType",
        "expiredTime",
        "getExpiredTime",
        "setExpiredTime",
        "gender",
        "",
        "getGender",
        "()I",
        "setGender",
        "(I)V",
        "idCardEncrypted",
        "getIdCardEncrypted",
        "setIdCardEncrypted",
        "idCardIdentifier",
        "getIdCardIdentifier",
        "setIdCardIdentifier",
        "idCardMask",
        "getIdCardMask",
        "setIdCardMask",
        "idCardType",
        "getIdCardType",
        "setIdCardType",
        "loginId",
        "getLoginId",
        "setLoginId",
        "loginMode",
        "getLoginMode",
        "setLoginMode",
        "mucangId",
        "getMucangId",
        "setMucangId",
        "name",
        "getName",
        "setName",
        "phoneEncrypted",
        "getPhoneEncrypted",
        "setPhoneEncrypted",
        "studentId",
        "getStudentId",
        "setStudentId",
        "tenantId",
        "getTenantId",
        "setTenantId",
        "xyToken",
        "getXyToken",
        "setXyToken",
        "isCoach",
        "",
        "isDebugUser",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private authToken:Ljava/lang/String;

.field private authUser:Lcn/mucang/android/account/data/AuthUser;

.field private avatar:Ljava/lang/String;

.field private courseId:J

.field private driveLicenseType:Ljava/lang/String;

.field private expiredTime:J

.field private gender:I

.field private idCardEncrypted:Ljava/lang/String;

.field private idCardIdentifier:Ljava/lang/String;

.field private idCardMask:Ljava/lang/String;

.field private idCardType:Ljava/lang/String;

.field private loginId:J

.field private loginMode:Ljava/lang/String;

.field private mucangId:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private phoneEncrypted:Ljava/lang/String;

.field private studentId:J

.field private tenantId:J

.field private xyToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAuthToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getAuthUser()Lcn/mucang/android/account/data/AuthUser;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->authUser:Lcn/mucang/android/account/data/AuthUser;

    return-object v0
.end method

.method public final getAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public final getCourseId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->courseId:J

    return-wide v0
.end method

.method public final getDriveLicenseType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->driveLicenseType:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpiredTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->expiredTime:J

    return-wide v0
.end method

.method public final getGender()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->gender:I

    return v0
.end method

.method public final getIdCardEncrypted()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->idCardEncrypted:Ljava/lang/String;

    return-object v0
.end method

.method public final getIdCardIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->idCardIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public final getIdCardMask()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->idCardMask:Ljava/lang/String;

    return-object v0
.end method

.method public final getIdCardType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->idCardType:Ljava/lang/String;

    return-object v0
.end method

.method public final getLoginId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->loginId:J

    return-wide v0
.end method

.method public final getLoginMode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->loginMode:Ljava/lang/String;

    return-object v0
.end method

.method public final getMucangId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->mucangId:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhoneEncrypted()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->phoneEncrypted:Ljava/lang/String;

    return-object v0
.end method

.method public final getStudentId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->studentId:J

    return-wide v0
.end method

.method public final getTenantId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->tenantId:J

    return-wide v0
.end method

.method public final getXyToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->xyToken:Ljava/lang/String;

    return-object v0
.end method

.method public final isCoach()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->loginMode:Ljava/lang/String;

    const-string v1, "COACH"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isDebugUser()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->studentId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setAuthToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->authToken:Ljava/lang/String;

    return-void
.end method

.method public final setAuthUser(Lcn/mucang/android/account/data/AuthUser;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->authUser:Lcn/mucang/android/account/data/AuthUser;

    return-void
.end method

.method public final setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->avatar:Ljava/lang/String;

    return-void
.end method

.method public final setCourseId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->courseId:J

    return-void
.end method

.method public final setDriveLicenseType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->driveLicenseType:Ljava/lang/String;

    return-void
.end method

.method public final setExpiredTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->expiredTime:J

    return-void
.end method

.method public final setGender(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->gender:I

    return-void
.end method

.method public final setIdCardEncrypted(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->idCardEncrypted:Ljava/lang/String;

    return-void
.end method

.method public final setIdCardIdentifier(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->idCardIdentifier:Ljava/lang/String;

    return-void
.end method

.method public final setIdCardMask(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->idCardMask:Ljava/lang/String;

    return-void
.end method

.method public final setIdCardType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->idCardType:Ljava/lang/String;

    return-void
.end method

.method public final setLoginId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->loginId:J

    return-void
.end method

.method public final setLoginMode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->loginMode:Ljava/lang/String;

    return-void
.end method

.method public final setMucangId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->mucangId:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->name:Ljava/lang/String;

    return-void
.end method

.method public final setPhoneEncrypted(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->phoneEncrypted:Ljava/lang/String;

    return-void
.end method

.method public final setStudentId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->studentId:J

    return-void
.end method

.method public final setTenantId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->tenantId:J

    return-void
.end method

.method public final setXyToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->xyToken:Ljava/lang/String;

    return-void
.end method
