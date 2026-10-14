.class public Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/unity/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/unity/c/c<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityPreSettingModel;",
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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityPreSettingModel;",
            ">;",
            "Landroid/app/Activity;",
            ")",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityPreSettingModel;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/b0$a;->a:[I

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/f0;->b()Lcn/mucang/android/jiakaoyi/framework/consts/Language;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    if-eq p2, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    :cond_1
    :goto_0
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    move-object v1, p2

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityPreSettingModel;

    iput v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityPreSettingModel;->languageCode:I

    .line 3
    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityPreSettingModel;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/c;->a()I

    move-result v0

    iput v0, p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityPreSettingModel;->carType:I

    return-object p1
.end method
