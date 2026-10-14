.class final Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$onFail$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->G()V
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

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$onFail$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$onFail$1;->invoke$lambda-0(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$onFail$1;->invoke$lambda-1(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Landroid/view/View;)V

    return-void
.end method

.method private static final invoke$lambda-0(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->n(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;)V

    .line 2
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->t(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;)V

    return-void
.end method

.method private static final invoke$lambda-1(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;->v()Lkotlin/jvm/b/a;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$onFail$1;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 6

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/f0;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$onFail$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginFaceBinding;->btnFaceCheck:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "binding.btnFaceCheck.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/f0$a;

    .line 3
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$onFail$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/g;

    invoke-direct {v4, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/g;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;)V

    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/h;

    invoke-direct {v5, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/h;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;)V

    .line 4
    invoke-direct {v2, v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/f0$a;-><init>(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/f0;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/f0$a;)V

    .line 5
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/f0;->show()V

    return-void
.end method
