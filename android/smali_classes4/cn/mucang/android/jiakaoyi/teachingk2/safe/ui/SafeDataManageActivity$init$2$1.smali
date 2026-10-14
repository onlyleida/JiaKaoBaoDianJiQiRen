.class final Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$init$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "clickItem",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;"
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
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$init$2$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$init$2$1;->invoke(Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;)V
    .locals 1

    const-string v0, "clickItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$init$2$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->k(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeMenuModel;)V

    return-void
.end method
