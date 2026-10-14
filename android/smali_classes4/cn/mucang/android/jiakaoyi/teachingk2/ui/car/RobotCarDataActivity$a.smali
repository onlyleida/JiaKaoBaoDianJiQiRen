.class public final Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity$Companion;",
        "",
        "()V",
        "launch",
        "",
        "context",
        "Landroid/content/Context;",
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
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/o;)V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/c0;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "\u5c1a\u672a\u7ed1\u5b9a\u8f66\u8f86\u4fe1\u606f\uff0c\u8bf7\u5148\u7ed1\u5b9a"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/c;->b()Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "\u8bf7\u5148\u8bbe\u7f6e\u771f\u5b9e\u8f66\u578b"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;->b()Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/s;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/x;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/x;->b()V

    .line 6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/RobotCarDataActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/l;->c(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
