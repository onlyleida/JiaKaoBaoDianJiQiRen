.class public final Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0010\u0010\t\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\nH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity$Companion;",
        "",
        "()V",
        "KEY_CHOOSE_RESULT",
        "",
        "launchForResult",
        "",
        "context",
        "Landroid/app/Activity;",
        "callback",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
        "Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;",
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

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcn/mucang/android/jiakaoyi/framework/h/b;IILandroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity$a;->c(Lcn/mucang/android/jiakaoyi/framework/h/b;IILandroid/content/Intent;)V

    return-void
.end method

.method private static final c(Lcn/mucang/android/jiakaoyi/framework/h/b;IILandroid/content/Intent;)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    const-string p1, "key.chooseResult"

    .line 1
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    instance-of p2, p1, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    if-eqz p2, :cond_0

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-interface {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final b(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lf/a/a/a/j/a;->a(Landroid/app/Activity;)Lf/a/a/a/j/a;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/p;

    invoke-direct {p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/p;-><init>(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    const/4 p2, 0x1

    invoke-virtual {v0, v1, p2, p1}, Lf/a/a/a/j/a;->c(Landroid/content/Intent;ILf/a/a/a/j/c;)V

    return-void
.end method
