.class final Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$changeConfig$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity;->p(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Landroid/widget/ImageView;)V
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
.field final synthetic $config:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

.field final synthetic $view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$changeConfig$1;->$view:Landroid/widget/ImageView;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$changeConfig$1;->$config:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$changeConfig$1;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$changeConfig$1;->$view:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$changeConfig$1;->$config:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->SpeedBrake:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    if-ne v0, v1, :cond_0

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->c()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/SafeDataManageActivity$changeConfig$1;->$config:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->WheelBrake:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    if-ne v0, v1, :cond_1

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/error/c;->b()Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager$SafeModeParam;

    :cond_1
    return-void
.end method
