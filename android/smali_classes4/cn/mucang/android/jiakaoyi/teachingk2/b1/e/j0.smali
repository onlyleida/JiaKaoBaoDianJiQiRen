.class public Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/unity/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/unity/c/c<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UserInfoModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;Landroid/app/Activity;)Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UserInfoModel;",
            ">;",
            "Landroid/app/Activity;",
            ")",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UserInfoModel;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->i()Landroidx/lifecycle/z;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UserInfoModel;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UserInfoModel;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getGender()I

    move-result v0

    iput v0, p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UserInfoModel;->gender:I

    .line 4
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UserInfoModel;->name:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getAvatar()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UserInfoModel;->headImg:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getIdCardMask()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UserInfoModel;->idCard:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getStudentId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UserInfoModel;->studentId:Ljava/lang/String;

    .line 8
    new-instance p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;

    invoke-direct {p1, p2}, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;-><init>(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    return-object p1
.end method
