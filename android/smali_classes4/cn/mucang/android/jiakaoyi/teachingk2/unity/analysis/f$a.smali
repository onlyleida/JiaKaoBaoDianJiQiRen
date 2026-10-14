.class public final Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/g/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00072\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\tH\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\n"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisManager$stopStep$1",
        "Lcn/mucang/android/jiakaoyi/framework/dialogmgr/DialogMgr$DialogShow;",
        "priority",
        "",
        "getPriority",
        "()I",
        "show",
        "",
        "finishCallback",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
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


# instance fields
.field private final a:I

.field final synthetic b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f$a;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f$a;->c:Ljava/lang/String;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f$a;->a:I

    return-void
.end method

.method public static synthetic a(Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f$a;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f$a;->d(Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f$a;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private static final d(Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f$a;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f$a;->a:I

    return v0
.end method

.method public c(Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/framework/g/f$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcn/mucang/android/jiakaoyi/unity/activity/UnityMainActivity;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/unity/activity/UnityMainActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/StepResultDialog;

    const/4 v2, 0x1

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f$a;->b:Ljava/util/ArrayList;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f$a;->c:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/StepResultDialog;-><init>(Landroid/content/Context;ZLjava/util/List;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/c;

    invoke-direct {v0, p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/c;-><init>(Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f$a;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 5
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p1, p0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
