.class public Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/p0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/unity/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/unity/c/c<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayStepModel;",
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

.method static synthetic b(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/trace/a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/trace/a;-><init>()V

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    move-object v1, p0

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayStepModel;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayExamModel;->id:Ljava/lang/String;

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayStepModel;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayExamModel;->trackId:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/trace/a;->p(Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/trace/TraceMenuModel;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/trace/TraceMenuModel;->getTrackFiles()Ljava/lang/String;

    move-result-object p0

    .line 2
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayStepModel;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayStepModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_0

    .line 4
    sget p0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_not_find_back_msg:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;Landroid/app/Activity;)Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayStepModel;",
            ">;",
            "Landroid/app/Activity;",
            ")",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayStepModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/p0/c;

    invoke-direct {p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/p0/c;-><init>(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;)V

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method
