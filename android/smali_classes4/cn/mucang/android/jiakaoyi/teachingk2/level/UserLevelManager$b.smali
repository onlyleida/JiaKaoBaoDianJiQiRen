.class public final Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/g/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->s(ZLcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;)Z
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
        "cn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$judgeDialogShow$3",
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

.field final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/level/p;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/level/p;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/level/p;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$b;->a:I

    return-void
.end method

.method public static synthetic a(Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$b;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$b;->d(Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$b;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private static final d(Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$b;Landroid/content/DialogInterface;)V
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
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$b;->a:I

    return v0
.end method

.method public c(Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/framework/g/f$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "getCurrentActivity()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/level/p;

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/NextLevelDialog;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/teachingk2/level/p;)V

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/l;

    invoke-direct {v1, p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/l;-><init>(Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$b;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
