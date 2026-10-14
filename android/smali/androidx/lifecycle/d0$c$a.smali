.class Landroidx/lifecycle/d0$c$a;
.super Landroidx/lifecycle/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/d0$c;->onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/lifecycle/d0$c;


# direct methods
.method constructor <init>(Landroidx/lifecycle/d0$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/d0$c$a;->this$1:Landroidx/lifecycle/d0$c;

    invoke-direct {p0}, Landroidx/lifecycle/i;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPostResumed(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/d0$c$a;->this$1:Landroidx/lifecycle/d0$c;

    iget-object p1, p1, Landroidx/lifecycle/d0$c;->this$0:Landroidx/lifecycle/d0;

    invoke-virtual {p1}, Landroidx/lifecycle/d0;->b()V

    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/d0$c$a;->this$1:Landroidx/lifecycle/d0$c;

    iget-object p1, p1, Landroidx/lifecycle/d0$c;->this$0:Landroidx/lifecycle/d0;

    invoke-virtual {p1}, Landroidx/lifecycle/d0;->c()V

    return-void
.end method
