.class public final Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J$\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0007H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$Companion;",
        "",
        "()V",
        "KEY_FORCE_OBD",
        "",
        "KEY_FORCE_OTA",
        "launch",
        "",
        "context",
        "Landroid/content/Context;",
        "forceOta",
        "forceObd",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/o;)V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Landroid/content/Intent;Landroid/app/Activity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$a;->d(Landroid/content/Context;Landroid/content/Intent;Landroid/app/Activity;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic c(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$a;Landroid/content/Context;ZZILjava/lang/Object;)Z
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 1
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$a;->b(Landroid/content/Context;ZZ)Z

    move-result p0

    return p0
.end method

.method private static final d(Landroid/content/Context;Landroid/content/Intent;Landroid/app/Activity;Ljava/lang/Boolean;)V
    .locals 0

    const-string p3, "$context"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$i"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/l;->c(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;ZZ)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "__key_force_ota__"

    .line 2
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "__key_force_obd__"

    .line 3
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p3, :cond_1

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->g()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/l;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sget-object p3, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity;->l:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity$a;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/check/f;

    invoke-direct {v1, p1, v0, p2}, Lcn/mucang/jiakaoyi/uilib/ui/check/f;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/app/Activity;)V

    invoke-virtual {p3, p2, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity$a;->c(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/l;->c(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 p1, 0x1

    :goto_1
    return p1
.end method
