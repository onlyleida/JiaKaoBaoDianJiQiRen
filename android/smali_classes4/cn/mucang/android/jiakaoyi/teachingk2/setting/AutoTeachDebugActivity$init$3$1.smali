.class final Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity$init$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->m(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Landroid/view/View;)V
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

.field final synthetic $result:Z

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;


# direct methods
.method constructor <init>(Landroid/view/View;ZLcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity$init$3$1;->$it:Landroid/view/View;

    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity$init$3$1;->$result:Z

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity$init$3$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity$init$3$1;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity$init$3$1;->$it:Landroid/view/View;

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity$init$3$1;->$result:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity$init$3$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;->pathTv:Landroid/widget/TextView;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->AutoTeach:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u4e0b\u53d1\u8def\u7ebf"

    goto :goto_0

    :cond_0
    const-string v1, "\u51c6\u5907\u793a\u6559"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
