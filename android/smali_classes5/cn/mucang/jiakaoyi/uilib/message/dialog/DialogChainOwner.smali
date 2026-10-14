.class public Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/o;


# instance fields
.field private a:Lcn/mucang/jiakaoyi/uilib/message/dialog/e;

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Landroidx/lifecycle/Lifecycle$Event;

.field private e:Lcn/mucang/android/core/config/n;


# direct methods
.method public constructor <init>(Lcn/mucang/android/core/config/n;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;->c:Z

    .line 3
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;->e:Lcn/mucang/android/core/config/n;

    .line 4
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/q;)V

    return-void
.end method


# virtual methods
.method public b(Landroidx/lifecycle/r;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2

    .line 1
    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;->d:Landroidx/lifecycle/Lifecycle$Event;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "source "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ; event "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DialogChainOwner"

    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;->j()V

    :cond_0
    return-void
.end method

.method public f(Lcn/mucang/jiakaoyi/uilib/message/dialog/f;)Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;->a:Lcn/mucang/jiakaoyi/uilib/message/dialog/e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/message/dialog/e;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/message/dialog/e;-><init>(Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;->a:Lcn/mucang/jiakaoyi/uilib/message/dialog/e;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;->a:Lcn/mucang/jiakaoyi/uilib/message/dialog/e;

    invoke-virtual {v0, p1}, Lcn/mucang/jiakaoyi/uilib/message/dialog/e;->a(Lcn/mucang/jiakaoyi/uilib/message/dialog/f;)V

    return-object p0
.end method

.method public i()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;->d:Landroidx/lifecycle/Lifecycle$Event;

    if-eqz v0, :cond_0

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-eq v0, v1, :cond_0

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;->c:Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;->e:Lcn/mucang/android/core/config/n;

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;->a:Lcn/mucang/jiakaoyi/uilib/message/dialog/e;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/message/dialog/e;->b()V

    .line 4
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;->b:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_0
    return-void
.end method

.method public k()Lcn/mucang/android/core/config/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;->e:Lcn/mucang/android/core/config/n;

    return-object v0
.end method

.method l(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;->b:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;->c:Z

    return v0
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;->a:Lcn/mucang/jiakaoyi/uilib/message/dialog/e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/message/dialog/e;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/message/dialog/e;-><init>(Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;->a:Lcn/mucang/jiakaoyi/uilib/message/dialog/e;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;->a:Lcn/mucang/jiakaoyi/uilib/message/dialog/e;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/message/dialog/e;->c()V

    return-void
.end method
