.class final Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$goingToLogin$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
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
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$goingToLogin$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$goingToLogin$1;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;->g:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity$a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$goingToLogin$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity$a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity$a;Landroid/content/Context;IILjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$goingToLogin$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
