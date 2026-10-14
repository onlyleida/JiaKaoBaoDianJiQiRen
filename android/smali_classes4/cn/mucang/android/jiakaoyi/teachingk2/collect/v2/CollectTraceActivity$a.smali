.class public final Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\n\u0010\u0007\u001a\u00060\u0008R\u00020\tH\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity$Companion;",
        "",
        "()V",
        "launch",
        "",
        "context",
        "Landroid/content/Context;",
        "item",
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$StepTeachItem;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity;",
        "TeachingK2_release"
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

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->a(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepTeachModelActivity$b;)V

    .line 2
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/utils/l;->c(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
