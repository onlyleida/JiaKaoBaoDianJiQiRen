.class final Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$onDetached$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->onDetached()V
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
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$onDetached$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$onDetached$1;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$onDetached$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->btnFaceCheck:Landroid/widget/TextView;

    const-string v1, "binding.btnFaceCheck"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
