.class public Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/m0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/unity/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/unity/c/c<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayExamModel;",
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
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayExamModel;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayExamModel;->trackId:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/trace/x;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    new-instance p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayExamModel;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayExamModel;-><init>()V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayExamModel;->setData()V

    .line 5
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    goto :goto_0

    .line 6
    :cond_0
    sget p0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_miss_trace_data:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    :try_start_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/trace/a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/trace/a;-><init>()V

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayExamModel;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayExamModel;->trackId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/trace/a;->m(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/trace/TraceMenuModel;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/trace/TraceMenuModel;->getTrackFiles()Ljava/lang/String;

    move-result-object p0

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayExamModel;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayExamModel;

    .line 9
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :catch_0
    sget p0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_miss_trace_data:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;Landroid/app/Activity;)Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayExamModel;",
            ">;",
            "Landroid/app/Activity;",
            ")",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayExamModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/m0/d;

    invoke-direct {p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/m0/d;-><init>(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;)V

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method
