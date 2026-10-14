.class final Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA$forceObd$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/m/a;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA$forceObd$2;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 2

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA$forceObd$2;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->b()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/j;

    if-eqz v1, :cond_0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/j;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/j;->b:Z

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/TestOTA$forceObd$2;->invoke()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
