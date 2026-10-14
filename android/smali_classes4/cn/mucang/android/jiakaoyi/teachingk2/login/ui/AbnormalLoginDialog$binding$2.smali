.class final Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$binding$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/a<",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAbnormalLoginBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAbnormalLoginBinding;"
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
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$binding$2;->$context:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAbnormalLoginBinding;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$binding$2;->$context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAbnormalLoginBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAbnormalLoginBinding;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AbnormalLoginDialog$binding$2;->invoke()Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAbnormalLoginBinding;

    move-result-object v0

    return-object v0
.end method
