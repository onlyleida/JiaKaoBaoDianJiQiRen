.class public Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/p0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/unity/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/unity/c/c<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayMenuModel;",
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

.method static synthetic b()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayMenuModel;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/trace/a;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/trace/a;-><init>()V

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;->a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/trace/a;->o(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayMenuModel;-><init>(Ljava/util/List;)V

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "\u83b7\u53d6\u56de\u653e\u5217\u8868\u5931\u8d25"

    .line 3
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/d;->a(Ljava/lang/Exception;Ljava/lang/String;)V

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
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayMenuModel;",
            ">;",
            "Landroid/app/Activity;",
            ")",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayMenuModel;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/p0/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/p0/b;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method
