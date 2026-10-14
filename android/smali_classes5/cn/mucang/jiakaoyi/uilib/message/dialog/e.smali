.class final Lcn/mucang/jiakaoyi/uilib/message/dialog/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;

.field private final b:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcn/mucang/jiakaoyi/uilib/message/dialog/f;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcn/mucang/jiakaoyi/uilib/message/dialog/f;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/PriorityQueue;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/message/dialog/e$a;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/message/dialog/e$a;-><init>(Lcn/mucang/jiakaoyi/uilib/message/dialog/e;)V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/e;->b:Ljava/util/PriorityQueue;

    .line 3
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/e;->a:Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/jiakaoyi/uilib/message/dialog/f;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/e;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/message/dialog/f;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Lcn/mucang/jiakaoyi/uilib/message/dialog/f;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcn/mucang/jiakaoyi/uilib/message/dialog/f;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/e;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/e;->a:Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/e;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    return-void
.end method

.method c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/e;->a:Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/message/dialog/e;->b()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/e;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/e;->c:Lcn/mucang/jiakaoyi/uilib/message/dialog/f;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcn/mucang/jiakaoyi/uilib/message/dialog/f;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/e;->a:Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/e;->c:Lcn/mucang/jiakaoyi/uilib/message/dialog/f;

    .line 5
    invoke-interface {v1}, Lcn/mucang/jiakaoyi/uilib/message/dialog/f;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    :cond_2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/e;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/message/dialog/f;

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/message/dialog/e;->c:Lcn/mucang/jiakaoyi/uilib/message/dialog/f;

    if-eqz v0, :cond_3

    .line 7
    invoke-interface {v0, p0}, Lcn/mucang/jiakaoyi/uilib/message/dialog/f;->c(Lcn/mucang/jiakaoyi/uilib/message/dialog/e;)V

    :cond_3
    return-void
.end method
