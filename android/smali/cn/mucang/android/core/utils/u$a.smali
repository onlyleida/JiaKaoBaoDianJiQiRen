.class Lcn/mucang/android/core/utils/u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/utils/u;->i(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/utils/u$a;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcn/mucang/android/core/utils/u$a;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/core/utils/u$a;->a:Ljava/lang/String;

    .line 2
    iget-boolean v2, p0, Lcn/mucang/android/core/utils/u$a;->b:Z

    .line 3
    invoke-static {v0, v1, v2}, Lme/drakeet/support/toast/c;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Lme/drakeet/support/toast/c;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lme/drakeet/support/toast/c;->show()V

    return-void
.end method
