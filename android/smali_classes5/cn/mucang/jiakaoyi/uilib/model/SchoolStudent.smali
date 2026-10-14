.class public Lcn/mucang/jiakaoyi/uilib/model/SchoolStudent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_IMPLEMENTER:I = 0x2


# instance fields
.field public authToken:Ljava/lang/String;

.field public authUser:Lcn/mucang/android/account/data/AuthUser;

.field public avatar:Ljava/lang/String;

.field public coin:F

.field public expired:Z

.field public expiredTime:J

.field public mucangId:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public oweAmount:F

.field public remainMinutes:I

.field public studentId:Ljava/lang/String;

.field public type:I

.field public xyToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/SchoolStudent;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthUser()Lcn/mucang/android/account/data/AuthUser;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/SchoolStudent;->authUser:Lcn/mucang/android/account/data/AuthUser;

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/SchoolStudent;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getCoin()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/SchoolStudent;->coin:F

    return v0
.end method

.method public getExpiredTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/model/SchoolStudent;->expiredTime:J

    return-wide v0
.end method

.method public getMucangId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/SchoolStudent;->mucangId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/SchoolStudent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOweAmount()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/SchoolStudent;->oweAmount:F

    return v0
.end method

.method public getRemainMinutes()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/SchoolStudent;->remainMinutes:I

    return v0
.end method

.method public getStudentId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/SchoolStudent;->studentId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/model/SchoolStudent;->type:I

    return v0
.end method

.method public getXyToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/SchoolStudent;->xyToken:Ljava/lang/String;

    return-object v0
.end method

.method public map()Lcn/mucang/jiakaoyi/uilib/ui/billing/StudentModel;
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/billing/StudentModel;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/ui/billing/StudentModel;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/model/SchoolStudent;->mucangId:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/jiakaoyi/uilib/ui/billing/StudentModel;->userId:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/model/SchoolStudent;->name:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/jiakaoyi/uilib/ui/billing/StudentModel;->userName:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/model/SchoolStudent;->studentId:Ljava/lang/String;

    iput-object v2, v0, Lcn/mucang/jiakaoyi/uilib/ui/billing/StudentModel;->id:Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/model/SchoolStudent;->authToken:Ljava/lang/String;

    iput-object v2, v0, Lcn/mucang/jiakaoyi/uilib/ui/billing/StudentModel;->studentAuthToken:Ljava/lang/String;

    .line 6
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/model/SchoolStudent;->avatar:Ljava/lang/String;

    iput-object v2, v0, Lcn/mucang/jiakaoyi/uilib/ui/billing/StudentModel;->avatar:Ljava/lang/String;

    .line 7
    iput-object v1, v0, Lcn/mucang/jiakaoyi/uilib/ui/billing/StudentModel;->userName:Ljava/lang/String;

    .line 8
    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/model/SchoolStudent;->coin:F

    iput v1, v0, Lcn/mucang/jiakaoyi/uilib/ui/billing/StudentModel;->coin:F

    .line 9
    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/model/SchoolStudent;->oweAmount:F

    iput v1, v0, Lcn/mucang/jiakaoyi/uilib/ui/billing/StudentModel;->oweAmount:F

    .line 10
    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/model/SchoolStudent;->remainMinutes:I

    iput v1, v0, Lcn/mucang/jiakaoyi/uilib/ui/billing/StudentModel;->remainMinutes:I

    return-object v0
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/SchoolStudent;->authToken:Ljava/lang/String;

    return-void
.end method

.method public setAuthUser(Lcn/mucang/android/account/data/AuthUser;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/SchoolStudent;->authUser:Lcn/mucang/android/account/data/AuthUser;

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/SchoolStudent;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setCoin(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/SchoolStudent;->coin:F

    return-void
.end method

.method public setExpiredTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/model/SchoolStudent;->expiredTime:J

    return-void
.end method

.method public setMucangId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/SchoolStudent;->mucangId:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/SchoolStudent;->name:Ljava/lang/String;

    return-void
.end method

.method public setOweAmount(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/SchoolStudent;->oweAmount:F

    return-void
.end method

.method public setRemainMinutes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/SchoolStudent;->remainMinutes:I

    return-void
.end method

.method public setStudentId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/SchoolStudent;->studentId:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/model/SchoolStudent;->type:I

    return-void
.end method

.method public setXyToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/SchoolStudent;->xyToken:Ljava/lang/String;

    return-void
.end method
