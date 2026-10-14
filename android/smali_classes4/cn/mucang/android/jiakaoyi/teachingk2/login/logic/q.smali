.class public final Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/q;
.super Lcn/mucang/android/jiakaoyi/k3setting/d/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/k3setting/d/a<",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginTimingBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/TimingLoginLogic;",
        "Lcn/mucang/android/jiakaoyi/k3setting/login/BaseLogic;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginTimingBinding;",
        "binding",
        "(Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginTimingBinding;)V",
        "init",
        "",
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
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginTimingBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;-><init>(Landroidx/viewbinding/a;)V

    return-void
.end method

.method private static final k(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/q;Landroid/view/View;)V
    .locals 6

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->c()Landroidx/fragment/app/d;

    move-result-object v0

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->TAIZHOU:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/login/model/TaizhouLoginData;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/c0;->a()Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;->getPlateNum()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-direct {v2, p0}, Lcn/mucang/jiakaoyi/uilib/login/model/TaizhouLoginData;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->j(Landroid/app/Activity;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Lcn/mucang/android/jiakaoyi/framework/h/b;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic l(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/q;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/q;->k(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/q;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public f()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/d/a;->d()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginTimingBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginTimingBinding;->loginTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/o;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/o;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/q;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
