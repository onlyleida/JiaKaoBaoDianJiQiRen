.class final Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$init$2$onBindViewHolder$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$init$2;->r(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity;Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;Landroid/view/View;)V
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
.field final synthetic $it:Landroid/view/View;

.field final synthetic $item:Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;

.field final synthetic $result:Z


# direct methods
.method constructor <init>(Landroid/view/View;ZLcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$init$2$onBindViewHolder$1$1$1;->$it:Landroid/view/View;

    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$init$2$onBindViewHolder$1$1$1;->$result:Z

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$init$2$onBindViewHolder$1$1$1;->$item:Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$init$2$onBindViewHolder$1$1$1;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$init$2$onBindViewHolder$1$1$1;->$it:Landroid/view/View;

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$init$2$onBindViewHolder$1$1$1;->$result:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$init$2$onBindViewHolder$1$1$1;->$item:Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;->a()Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->CalibrateWheel:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    if-ne v0, v1, :cond_0

    .line 4
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$init$2$onBindViewHolder$1$1$1;->$result:Z

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/z0/f;->h(Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$init$2$onBindViewHolder$1$1$1;->$item:Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/TeachingSettingActivity$b;->a()Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->Highlight:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    if-ne v0, v1, :cond_1

    .line 6
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->g()V

    :cond_1
    :goto_0
    return-void
.end method
