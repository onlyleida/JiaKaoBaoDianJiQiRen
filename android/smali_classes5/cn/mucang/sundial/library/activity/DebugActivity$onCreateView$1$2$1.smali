.class final Lcn/mucang/sundial/library/activity/DebugActivity$onCreateView$1$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/DebugActivity$onCreateView$1$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lkotlin/v;",
        "run",
        "()V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcn/mucang/sundial/library/activity/DebugActivity$onCreateView$1$2$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/sundial/library/activity/DebugActivity$onCreateView$1$2$1;

    invoke-direct {v0}, Lcn/mucang/sundial/library/activity/DebugActivity$onCreateView$1$2$1;-><init>()V

    sput-object v0, Lcn/mucang/sundial/library/activity/DebugActivity$onCreateView$1$2$1;->INSTANCE:Lcn/mucang/sundial/library/activity/DebugActivity$onCreateView$1$2$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    const-string v1, "DataManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getLastStudent()Lcn/mucang/sundial/android/db/entity/StudentInfo;

    move-result-object v0

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v1

    const-string v2, "student"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getStudentNo()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcn/mucang/sundial/android/SundialManager;->studentForceLogout(Ljava/lang/String;J)Z

    const-string v1, "\u5f3a\u5236\u9000\u51fa\u6210\u529f"

    .line 3
    invoke-static {v1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v1

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getStudentNo()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;->INIT:Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;

    invoke-virtual {v1, v0, v2}, Lcn/mucang/sundial/android/tcp/data/DataManager;->updateStudentStatus(Ljava/lang/String;Lcn/mucang/sundial/android/db/entity/StudentInfo$STATUS;)V

    .line 5
    invoke-static {}, Lcn/mucang/sundial/android/timer/train/TrainManager;->getInstance()Lcn/mucang/sundial/android/timer/train/TrainManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/timer/train/TrainManager;->stop()V

    .line 6
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->getInstance()Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->stop()V

    const-string v0, "\u5b66\u5458\u5df2\u5f3a\u5236\u7b7e\u9000"

    .line 7
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->j(Ljava/lang/String;)V

    return-void
.end method
