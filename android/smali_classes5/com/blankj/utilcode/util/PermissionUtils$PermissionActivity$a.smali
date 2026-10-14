.class Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->a()Lcom/blankj/utilcode/util/PermissionUtils$d;

    move-result-object v0

    invoke-interface {v0}, Lcom/blankj/utilcode/util/PermissionUtils$d;->a()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->a()Lcom/blankj/utilcode/util/PermissionUtils$d;

    move-result-object v0

    invoke-interface {v0}, Lcom/blankj/utilcode/util/PermissionUtils$d;->b()V

    :goto_0
    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->b(Lcom/blankj/utilcode/util/PermissionUtils$d;)Lcom/blankj/utilcode/util/PermissionUtils$d;

    return-void
.end method
