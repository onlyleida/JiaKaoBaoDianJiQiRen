.class public final Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/a0<",
        "Lcn/mucang/jiakaoyi/uilib/socket/model/LoginStudent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount$logoutObserver$1",
        "Landroidx/lifecycle/Observer;",
        "Lcn/mucang/jiakaoyi/uilib/socket/model/LoginStudent;",
        "onChanged",
        "",
        "t",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/jiakaoyi/uilib/socket/model/LoginStudent;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6536\u5230\u9000\u51fa\u6d88\u606f:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/LoginStudent;->studentId:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->i()Landroidx/lifecycle/z;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    if-nez v3, :cond_1

    move-object v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getStudentId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->i()Landroidx/lifecycle/z;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    if-nez v3, :cond_2

    move-object v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getMucangId()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_3

    move-object v2, v1

    goto :goto_3

    :cond_3
    iget-boolean v2, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/LoginStudent;->timeOver:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    if-nez p1, :cond_4

    move-object v0, v1

    goto :goto_4

    .line 2
    :cond_4
    iget-object v0, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/LoginStudent;->studentId:Ljava/lang/String;

    :goto_4
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez p1, :cond_5

    move-object v0, v1

    goto :goto_5

    .line 3
    :cond_5
    iget-object v0, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/LoginStudent;->studentId:Ljava/lang/String;

    :goto_5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->i()Landroidx/lifecycle/z;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    if-nez v2, :cond_6

    move-object v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getStudentId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    if-nez p1, :cond_7

    move-object v0, v1

    goto :goto_7

    :cond_7
    iget-object v0, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/LoginStudent;->studentId:Ljava/lang/String;

    :goto_7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->i()Landroidx/lifecycle/z;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    if-nez v2, :cond_8

    move-object v2, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;->getMucangId()Ljava/lang/String;

    move-result-object v2

    :goto_8
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 4
    :cond_9
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->c(Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_a

    goto :goto_9

    .line 5
    :cond_a
    iget-boolean v3, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/LoginStudent;->timeOver:Z

    if-ne v3, v2, :cond_b

    const/4 v0, 0x1

    :cond_b
    :goto_9
    if-eqz v0, :cond_c

    const/4 v2, 0x3

    goto :goto_b

    :cond_c
    if-nez p1, :cond_d

    goto :goto_a

    .line 6
    :cond_d
    iget-object v1, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/LoginStudent;->studentId:Ljava/lang/String;

    :goto_a
    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_b

    :cond_e
    const/4 v2, 0x2

    .line 7
    :goto_b
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object p1

    .line 8
    instance-of v0, p1, Lcn/mucang/android/jiakaoyi/unity/activity/UnityMainActivity;

    if-eqz v0, :cond_f

    .line 9
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityExitModel;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityExitModel;-><init>()V

    iput v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityExitModel;->quitType:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    goto :goto_c

    :cond_f
    const-string v0, "activity"

    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->b(Landroid/app/Activity;I)V

    :goto_c
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/jiakaoyi/uilib/socket/model/LoginStudent;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount$b;->a(Lcn/mucang/jiakaoyi/uilib/socket/model/LoginStudent;)V

    return-void
.end method
